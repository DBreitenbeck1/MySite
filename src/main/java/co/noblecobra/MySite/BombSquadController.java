package co.noblecobra.MySite;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
public class BombSquadController {

	@RequestMapping("/bombsquad/")
	public ModelAndView start(){
		ModelAndView mav = new ModelAndView("games/bombsquad/home");
		return mav;
	}
	
	@RequestMapping("/bombsquad/instructions")
	public ModelAndView instructions(@RequestParam("dif") int dif) {
		int time = 30;
		int exTime =10;
		int ques = 3;
		
		ModelAndView mav = new ModelAndView("games/bombsquad/instructions");
		
		switch (dif){
		case 1:  {
			time=30;
			exTime=10;
			ques = 3;
			break;
		}
		case 2:  {
			time=20;
			exTime=5;
			ques = 6;
			break;
		}
		case 3:  {
			time=10;
			exTime=3;
			ques = 9;
			break;
		}
		default:{
			time=10;
			exTime=3;
			ques = 9;
			break;
		}
		}
		mav.addObject("dif", dif);
		mav.addObject("time", time);
		mav.addObject("exTime", exTime);
		mav.addObject("ques", ques);
		return mav;	
	}
	
	
	@RequestMapping("/bombsquad/bomb")
	public ModelAndView bomb(@RequestParam("time") int time,
			@RequestParam("exTime") int exTime,
			@RequestParam("ques") int ques,
			@RequestParam("dif") int dif){
		
			ModelAndView mavM = new ModelAndView("games/bombsquad/bomb");
			mavM.addObject("dif", dif);
			mavM.addObject("ques", ques);
			mavM.addObject("time", time);
			mavM.addObject("exTime", exTime);
			return mavM;

	}		
	
	
	
}
