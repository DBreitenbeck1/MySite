package co.noblecobra.MySite;

import java.util.List;


import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.noblecobra.MySite.DAO.CodingRepository;
import co.noblecobra.MySite.DAO.MediaRepository;
import co.noblecobra.MySite.DAO.QuoteRepository;
import co.noblecobra.MySite.DAO.WorkDao;
import co.noblecobra.MySite.DAO.WorkRepository;
import co.noblecobra.MySite.DAO.WritingDao;
import co.noblecobra.MySite.DAO.WritingRepository;
import co.noblecobra.MySite.Entity.Coding;
import co.noblecobra.MySite.Entity.Media;
import co.noblecobra.MySite.Entity.Quote;
import co.noblecobra.MySite.Entity.Work;
import co.noblecobra.MySite.Entity.Writing;
import java.net.*;
import java.io.*;


@Controller
public class MySiteController {
	
	@Autowired
	private HttpSession sesh;
	
	@Autowired
	WritingDao writeDao;
	
	@Autowired
	WorkDao workDao;
	
	@Autowired
	QuoteRepository	quoteRepo;
	
	@Autowired
	WritingRepository writingRepo;
	
	@Autowired
	WorkRepository workRepo;
	
	@Autowired
	CodingRepository codingRepo;
	
	@Autowired
	MediaRepository mediaRepo;
	
	
	Randomizer rand = new Randomizer();

	@RequestMapping("/")
	public ModelAndView home() {
		List<Quote> quotes = quoteRepo.findAll();
	
		Quote q= rand.randList(quotes); 
		ModelAndView mav= new ModelAndView("index");
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		return mav;
	}
	
	@RequestMapping("/stream")
	public ModelAndView stream() {
		List<Work> works = workRepo.findAll();
		List<Quote> quotes = quoteRepo.findAll();
		
		Quote q= rand.randList(quotes);
		ModelAndView mav= new ModelAndView("stream");
		Set<String> medium = workDao.mediums();
		mav.addObject("media", medium);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("works", works);
		return mav;
	}
	

	
	@RequestMapping("/writing")
	public ModelAndView writing() {
		List<Writing> writings = writingRepo.findAll();
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");
		Quote q= rand.randList(quotes);
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
		Quote q= rand.randList(quotes); 
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
		List<Media> media = mediaRepo.findAll();
		List<Quote> quotes = quoteRepo.findAll();
		Quote q= rand.randList(quotes); 
		ModelAndView mav= new ModelAndView("media");
		List<Coding> codes = codingRepo.findAll();
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("media", media);
		return mav;
		
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		List<Quote> quotes = quoteRepo.findAll();
		Quote q= rand.randList(quotes); 
		ModelAndView mav= new ModelAndView("about");
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		return mav;
	}
	
	@RequestMapping("/category")
	public ModelAndView sortCategory() {
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");;
		Quote q= rand.randList(quotes); 
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
		Quote q= rand.randList(quotes); 
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
		Quote q= rand.randList(quotes); 
		ModelAndView mav= new ModelAndView("writing");
		Set<String> categories = writeDao.categories();
		mav.addObject("categories", categories);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("writings", writingRepo.findByCategory(cat));
		return mav;
	}
	
	@RequestMapping("/findMed")
	public ModelAndView findMed(@RequestParam("med") String med) {
		List<Quote> quotes = quoteRepo.findBySubjectIgnoreCase("writing");
		Quote q= rand.randList(quotes); 
		ModelAndView mav= new ModelAndView("stream");
		Set<String> medium = workDao.mediums();
		mav.addObject("media", medium);
		mav.addObject("quote", q.getQuote());
		mav.addObject("src", q.getSource());
		mav.addObject("works", workRepo.findByMedium(med));
		return mav;
	}
	
	@RequestMapping("/games")
	public ModelAndView games() {
		ModelAndView mav= new ModelAndView("games");
		return mav;
	}
	
	
}
