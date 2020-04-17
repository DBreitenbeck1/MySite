package co.noblecobra.MySite;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.noblecobra.MySite.DAO.CodingRepository;
import co.noblecobra.MySite.DAO.QuoteRepository;
import co.noblecobra.MySite.DAO.WritingDao;
import co.noblecobra.MySite.DAO.WritingRepository;
import co.noblecobra.MySite.Entity.Coding;
import co.noblecobra.MySite.Entity.Quote;
import co.noblecobra.MySite.Entity.Writing;

@Controller
public class MySiteController {
	
	@Autowired
	WritingDao writeDao;
	
	@Autowired
	QuoteRepository	quoteRepo;
	
	@Autowired
	WritingRepository writingRepo;
	
	@Autowired
	CodingRepository codingRepo;

	@RequestMapping("/")
	public ModelAndView home() {
		List<Quote> quotes = quoteRepo.findAll();
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("index");
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		return mav;
	}
	
	
	@RequestMapping("/drum")
	public ModelAndView drum() {
//		ModelAndView mav= new ModelAndView("drum");
		return new ModelAndView("drum");
	}
	
	@RequestMapping("/writing")
	public ModelAndView writing() {
		List<Writing> writings = writingRepo.findAll();
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("writing");
		Set<String> categories = writeDao.categories();
		mav.addObject("categories", categories);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("writings", writings);
		return mav;
	}
	
	
	@RequestMapping("/coding")
	public ModelAndView coding() {
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("coding");
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("coding");
		Set<String> categories = writeDao.categories();
		List<Coding> codes = codingRepo.findAll();
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("codes", codes);
		return mav;
	}
	
	@RequestMapping("/media")
	public ModelAndView media() {
		return new ModelAndView("media");
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		List<Quote> quotes = quoteRepo.findAll();
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("about");
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		return mav;
	}
	
	@RequestMapping("/category")
	public ModelAndView sortCategory() {
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("writing");
		Set<String> categories = writeDao.categories();
		mav.addObject("categories", categories);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("writings", writingRepo.findAllByOrderByCategory());
		return mav;
	}
	
	
	@RequestMapping("/title")
	public ModelAndView sortTitle() {
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("writing");
		Set<String> categories = writeDao.categories();
		mav.addObject("categories", categories);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("writings", writingRepo.findAllByOrderByTitle());
		return mav;
	}
	
	@RequestMapping("/findCat")
	public ModelAndView findCat(@RequestParam("cat") String cat) {
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");
		int rand = (int)(Math.random()*quotes.size());
		Quote q= quotes.get(rand);
		ModelAndView mav= new ModelAndView("writing");
		Set<String> categories = writeDao.categories();
		mav.addObject("categories", categories);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("writings", writingRepo.findByCategory(cat));
		return mav;
	}
}
