package com.sneh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

import com.sneh.dao.DocDao;
import com.sneh.dao.adminDao;
import com.sneh.dao.appointmentRepo;
import com.sneh.dao.chatDao;
import com.sneh.dao.loginRepo;
import com.sneh.dao.medicineRepo;
import com.sneh.dao.welcomeLoginRepo;
import com.sneh.database.RegisteredUsers;
import com.sneh.database.adminSection;
import com.sneh.database.bookAppointment;
import com.sneh.database.chatQuestions;
import com.sneh.database.medicineAdvice;
import com.sneh.database.validUsers;
import com.sneh.database.welcomeLogin;
import com.sneh.model.chatMessage;
import com.sneh.service.SessionService;
/*import com.sneh.service.userService;
import com.userValidator.userValidator;*/
import com.sneh.service.SessionService.Fields;
import com.sneh.service.docService;

//import lombok.Getter;

@Controller
public class DocController {

	@Autowired
	DocDao docDao;

	@Autowired
	docService doc1;

	@Autowired
	loginRepo repo;

	@Autowired
	chatDao chatRepo;

	@Autowired
	appointmentRepo appRepo;

	@Autowired
	medicineRepo medRepo;

	@Autowired
	adminDao adminRepo;
	
	@Autowired
	private welcomeLoginRepo welcomeRepo;
	
	@Autowired
	private SessionService sessionService;
	
	@Value("${site.url}")
	private String propSiteUrl;

	/*
	 * @Autowired private userValidator UserValidator;
	 * 
	 * @Autowired private userService UserService;
	 */

	@RequestMapping(path = "/admin/registeredUsers")
	public @ResponseBody ModelAndView regiseredUsers(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("admin.jsp");
		mav.addObject("propSiteUrl", propSiteUrl);
		
		List<RegisteredUsers> r1 = docDao.findAll();
		mav.addObject("showUsers", r1);
		request.setAttribute("mode", "ALL_USERS");
		return mav;
	}

	@GetMapping("/innerLogin/NOT_REQUIRED")
	public String login() {
		System.out.println("Login page opened..");
		return doc1.login();
	}

	@GetMapping("/")
	public String main(HttpServletRequest req, HttpSession httpSession) {
		System.out.println("Inside Main");
		if(req.getParameter("logout")!=null) {
			sessionService.clear(httpSession);
		}
		if(req.getParameter("error")!=null) {
			req.setAttribute("error", req.getParameter("error"));
		}
		return sessionService.check(httpSession, "main.jsp");
	}

	@GetMapping("/register/NOT_REQUIRED")
	public String userRegister(Model model) {
		model.addAttribute("userForm", new RegisteredUsers());
		System.out.println("registeration page opened...");
		return "registration.jsp";
	}

	/*
	 * @PostMapping("/register") public String register(@ModelAttribute("userForm")
	 * RegisteredUsers userForm, BindingResult bindingResult) {
	 * UserValidator.validate(userForm, bindingResult);
	 * if(bindingResult.hasErrors()) { return "registration.jsp"; }
	 * UserService.save(userForm); return "redirect:/main.jsp"; }
	 */

	@RequestMapping("/addEntity")
	public String addEntity(RegisteredUsers r1) {
		System.out.println("Registered...");
		return doc1.addEntity(r1);
	}

	@RequestMapping(path = "/validLogin")
	public ModelAndView validLogin(@RequestParam(name = "email", defaultValue = "retryEmail") String email,
			@RequestParam(name = "password", defaultValue = "retryPass") String password, validUsers v1) {
		ModelAndView mv = new ModelAndView();
		RegisteredUsers s1 = docDao.findByEmailAndPassword(email, password);
		System.out.println("email id: " + email + " password : " + password);
		if (s1 != null) {
			System.out.println("Value exists..");
			mv.addObject("email", email);
			mv.addObject("password", password);
			mv.addObject("obj", s1);
			// mv.addObject("obj1", s1);
			repo.save(v1);
			// docDao
			mv.setViewName("main.jsp");
			return mv;
		} else {
			System.out.println("value doesn't exists..");
			return new ModelAndView("registration.jsp");
			// mv.setViewName("registration.jsp");

		}

	}

	@RequestMapping(path = "/fields")
	public String getFields() {
		return "fields.jsp";
	}

	@RequestMapping(path = "/aboutUs")
	public String aboutUs() {
		return "about.jsp";
	}

	@RequestMapping(path = "/generalCheckUp")
	public String getGeneralCheckup(HttpSession httpSession) {
		return sessionService.check(httpSession, "generalCheckup.jsp");
	}
	
	@RequestMapping(path="/cardiacSection")
	public String getCardiacSection(HttpSession httpSession) {
		return sessionService.check(httpSession, "cardiacSection.jsp");
	}
	
	@RequestMapping(path="/stomachSection")
	public String getLungSection(HttpSession httpSession) {
		return sessionService.check(httpSession, "stomachSection.jsp");
	}

	@RequestMapping(path = "/dentalCheckUp")
	public String getDentalCheckup(HttpSession httpSession) {
		return sessionService.check(httpSession, "dentalCheckup.jsp");
	}

	@RequestMapping(path = "/brainCheckUp")
	public String getBrainCheckUp(HttpSession httpSession) {
		return sessionService.check(httpSession, "brainCheckup.jsp");
	}


	@RequestMapping(path = "/bookAppointment")
	public ModelAndView getAppointment(bookAppointment b1, HttpSession httpSession) {
		System.out.println("book appointment here");
		ModelAndView mav = new ModelAndView("fields.jsp");
		if(b1!=null) {
			appRepo.save(b1);
			mav.addObject("success", "Your appointment is successfully booked. Thankyou!");
		}else {
			mav.addObject("error", "Empty form filled");
		}
		return mav;
	}

	@RequestMapping(path = "/medicineSection")
	public String getMedicine() {
		return "medicineAdvice.jsp";
	}

	@RequestMapping(path = "/welcome")
	public String welcomePage() {
		return "Welcome.jsp";
	}

	@RequestMapping(path = "/medicineAdvice")
	public @ResponseBody ModelAndView getMedicineAdvice(@RequestParam(name = "diseaseName") String diseaseName) {
		ModelAndView mv = new ModelAndView();

		List<medicineAdvice> m1 = medRepo.findBydiseaseName(diseaseName);
		System.out.println("disease is " + diseaseName);

		return new ModelAndView("medicineAdvice.jsp", "medObj", m1);
		
	}
	
	
	/* 
	 * public ModelAndView getMedicineAdvice(@RequestParam(name="diseaseName",
	 * defaultValue="retryDisease")String diseaseName) { ModelAndView medObject=new
	 * ModelAndView(); medicineAdvice
	 * checkObj=medRepo.findAllBydiseaseName(diseaseName); List<medicineAdvice>
	 * findall=medRepo.findAll(); System.out.println("diesease : "+diseaseName);
	 * if(checkObj!=null) { System.out.println("Value exists..");
	 * medObject.addObject("medOb", checkObj); medObject.addObject("find", findall);
	 * medObject.setViewName("medicineAdvice.jsp"); return medObject; }else {
	 * System.out.println("value doesn't exists.."); return new
	 * ModelAndView("medicineAdvice.jsp"); }
	 * 
	 * }
	 */
	/**/

	@RequestMapping(path = "/admin")
	public ModelAndView adminPart(@RequestParam(name = "adminKey") String adminKey,
			@RequestParam(name = "adminPassword") String adminPassword, bookAppointment bookApp, adminSection a1) {
		System.out.println("admin page opened.." + adminKey + " " + adminPassword);
		ModelAndView mv = new ModelAndView();
		a1 = adminRepo.findByAdminKey(adminKey);
		mv.addObject("admin", a1);
		if (a1 != null) {
			mv.addObject("admin", a1);
			mv.addObject("Book", bookApp);
			mv.setViewName("admin.jsp");
			return mv;
		}else {
			return new ModelAndView("Welcome.jsp","welcomeObj",a1);
		}
	}
	
	@RequestMapping("/login/NOT_REQ")
	public String WelcomeLogin(HttpServletRequest req, HttpSession httpSession) {
		return sessionService.check(httpSession, "main.jsp");
	}
	
//	@RequestMapping("/user-login")
//	public String userLogin(@ModelAttribute welcomeLogin welcomeUser,HttpServletRequest req) {
//		if(doc1.findByUsernameAndPassword(welcomeUser.getUsername(),welcomeUser.getPassword())!=null) {
//			return "main.jsp";
//		}else {
//			req.setAttribute("error", "Sorry, you are not a valid member. Please sign up first.");
//			//req.setAttribute("mode", "LOGIN_MODE");
//			return "Welcome.jsp";
//		}
//			
//	}
	
	@PostMapping("/user-login")
	public ModelAndView userLogin(@RequestParam(name="username")String username,@RequestParam(name="password")String password
			,welcomeLogin welcomeUser,HttpServletRequest req, HttpSession httpSession) {
		RegisteredUsers user=docDao.findByEmailAndPassword(username, password);
		welcomeLogin validUser=welcomeRepo.findByUsernameAndPassword(username, password);
		if(user!=null) {
			sessionService.set(httpSession, Fields.IS_LOGGED_IN, "true");
			sessionService.set(httpSession, Fields.NAME, user.getFirstName());
			if(validUser==null) {
				welcomeRepo.save(welcomeUser);
			}
		}else {
			sessionService.clear(httpSession);
			return redirectTo(propSiteUrl+"?error=Sorry, you are not a valid member. Please sign up first.");
		}
		return redirectTo(propSiteUrl);
	}
	
	@RequestMapping("/logout-success")
	public ModelAndView logOutPage(HttpSession httpSession) {
		
		return redirectTo(propSiteUrl+"?logout=true");
	}
	
	@RequestMapping("/adminPage")
	public String adminPage() {
		return "admin.jsp";
	}
	
	@GetMapping("/showAppointments")
	public ModelAndView showAllAppoinments(HttpServletRequest req) {
		//@RequestParam(name="discussChoice")String discussChoice,@RequestParam(name="userName") String userName,@RequestParam(name="userPhone")String userPhone, @RequestParam(name="doctorName")String doctorName,@RequestParam(name="userEmail")String userEmail
		ModelAndView mv=new ModelAndView();
		 List<bookAppointment> appointUser=appRepo.findAll();
		mv.addObject("bookObj", appointUser);
		req.setAttribute("mode","ALL_APPOINTMENTS");
		return new ModelAndView("admin.jsp","showAppointments",appointUser);
	}
	
	@GetMapping("/deleteAppointment")
	public ModelAndView deleteAppoinment(@RequestParam int id) {
		 ModelAndView mv=new ModelAndView();
		doc1.getDeleteAppointments(id);
		//doc1.showAllAppointments();
		List<bookAppointment> leftAppointments=appRepo.findAll();
		mv.addObject("resultedAppoinments", leftAppointments);
		return new ModelAndView("admin.jsp","showAppoinments",leftAppointments);
	}
	
	@RequestMapping(path = "/submitWelcomeLogin")
	public ModelAndView validLogin(@RequestParam(name = "username", defaultValue = "retryUsername") String username,
			@RequestParam(name = "password", defaultValue = "retryPass") String password, welcomeLogin w1) {
		ModelAndView mv = new ModelAndView();
		RegisteredUsers s1 = docDao.findByEmailAndPassword(username, password);
		System.out.println("email id: " + username + " password : " + password);
		if (s1 != null) {
			System.out.println("Value exists..");
			mv.addObject("email", username);
			mv.addObject("password", password);
			mv.addObject("obj", s1);
			// mv.addObject("obj1", s1);
			welcomeRepo.save(w1);
			// docDao
			mv.setViewName("main.jsp");
			return mv;
		} else {
			System.out.println("value doesn't exists..");
			return new ModelAndView("registration.jsp");
			// mv.setViewName("registration.jsp");

		}

	}
	 
	/*
	 * @RequestMapping(path="/bookAppoinment2") public ModelAndView
	 * getAppointmentAdmin(@RequestParam(name = "userName") String
	 * userName, @RequestParam(name = "userPhone") long userPhone,
	 * 
	 * @RequestParam(name = "doctorName") String doctorName, @RequestParam(name =
	 * "email") String email) { ModelAndView mv=new ModelAndView();
	 * System.out.println("Admin page opened"); bookAppointment
	 * obj=appRepo.findByEmail(email); if(obj!=null) { mv.addObject("email", email);
	 * mv.addObject("appointObj", obj); mv.setViewName("admin.jsp"); return mv; }
	 * mv.setViewName("login.jsp"); return mv; }
	 */
	@RequestMapping(path = "/onlineChat")
	public @ResponseBody List<chatQuestions> OnlineChat() {
		List<chatQuestions> chatmsg = chatRepo.findAll();
		System.out.println("questions list");
		return chatmsg;

	}
	/*
	 * @GetMapping(path = "/validLogin") public ModelAndView validLogin(validUsers
	 * vuser) {
	 * 
	 * ModelAndView mv=new ModelAndView(); mv.addObject("obj",vuser);
	 * mv.setViewName("usersRegistered.jsp"); return mv; }
	 */

	/*
	 * @MessageMapping("/chat.register")
	 * 
	 * @SendTo("/topic/public") public chatMessage register(@Payload chatMessage
	 * ChatMsg, SimpMessageHeaderAccessor headerAccessor) {
	 * headerAccessor.getSessionAttributes().put("username", ChatMsg.getSender());
	 * return ChatMsg; }
	 */

	@MessageMapping("/chat.send")
	@SendTo("/topic/public")
	public chatMessage sendMessage(@Payload chatMessage ChatMsg) {
		return ChatMsg;
	}
	
	private ModelAndView redirectTo(String url) {
		ModelAndView mav = new ModelAndView("redirect.jsp");
		mav.addObject("redirectUrl", url);
		return mav;
	}
}
