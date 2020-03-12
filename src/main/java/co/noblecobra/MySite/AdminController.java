package co.noblecobra.MySite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.noblecobra.MySite.DAO.CodingRepository;
import co.noblecobra.MySite.DAO.WritingRepository;
import co.noblecobra.MySite.Entity.Coding;
import co.noblecobra.MySite.Entity.Writing;

@Controller
public class AdminController {

	@Autowired
	WritingRepository writeRepo;
	
	@Autowired
	CodingRepository codeRepo;
	
	
	@RequestMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("addPage");
	}
	
	@PostMapping("/addWriting")
	public ModelAndView addWriting(Writing writing) {
		writeRepo.save(writing);
		return new ModelAndView("redirect:/writing");
	}
	
	@PostMapping("/addCoding")
	public ModelAndView addCoding(Coding coding) {
		codeRepo.save(coding);
		return new ModelAndView("redirect:/coding");
	}
	
}
