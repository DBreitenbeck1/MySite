package co.noblecobra.MySite;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.noblecobra.MySite.DAO.UserRepository;
import co.noblecobra.MySite.Entity.User;


@Controller
public class LoginController {
	@Autowired
	private HttpSession sesh;
	
	@Autowired
	private UserRepository userRep;
	
	@RequestMapping("/login")
	public ModelAndView login(){
		return new ModelAndView("login/login");
	}
	
	
	@PostMapping("/login")
	public ModelAndView checkLogin(@RequestParam("name") String name, @RequestParam("password") String password,
			RedirectAttributes red) {
		User user = userRep.findByNameIgnoreCase(name);
		if(user == null || !password.contentEquals(user.getPassword())) {
			red.addFlashAttribute("message", "I do not recognize you. Try again");
			red.addFlashAttribute("messageType", "danger");
			return new ModelAndView("redirect:/login");
		}
		sesh.setAttribute("user", user);
		
		return new ModelAndView("redirect:/");
		
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(RedirectAttributes red) {
		sesh.invalidate();
		red.addFlashAttribute("message", "Goodbye");
		red.addFlashAttribute("messageType", "success");
		return new ModelAndView("redirect:/");
	}
	
	
	
//	@RequestMapping("/register")
//	public ModelAndView showReg(Company company) {
//		ModelAndView mav = new ModelAndView("registration/employee-registration");
//		mav.addObject("companies", coRepo.findAll());
//		mav.addObject("vehicleTypes", emRepo.findAllVehicleType());
//		return mav;
//	}
//
//	@PostMapping("/register")
//
//	public ModelAndView submitReg(Employee employee, @RequestParam String lastName,
//			@RequestParam String passwordConfirm,
//			RedirectAttributes red) {
//		// if password does not match
//		if (!employee.getPassword().equals(passwordConfirm)) {
//			red.addFlashAttribute("message", "Passwords do not match.");
//			red.addFlashAttribute("messageType", "warning");
//			return new ModelAndView("redirect:/register");
//		}
//		employee.setName(employee.getName() + " " + lastName);		
//		SearchResult result = apiServe.getResult(employee.getAddress(), employee.getCompany().getAddress());
//		Distance dist = apiServe.getDistance(result);
//		if (dist == null) {
//			ModelAndView mav = new ModelAndView("redirect:/register");
//			red.addFlashAttribute("message", "Invalid Address");
//			red.addFlashAttribute("messageType", "danger");
//			return mav;
//		}else {
//		
//		emRepo.save(employee);
//		red.addFlashAttribute("message", "Thank you for registering with us, " + employee.getName());
//		red.addFlashAttribute("messageType", "success");
//		return new ModelAndView("redirect:/login");
//		}
//	}
	
	

}
