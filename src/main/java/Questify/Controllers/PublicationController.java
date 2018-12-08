package Questify.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Questify.services.PublicationService;

@Controller
public class PublicationController {
	
	@Autowired
	private PublicationService service = new PublicationService();
	
	@RequestMapping(value="/publications",method=RequestMethod.GET)
	public String showPablicationsPage(ModelMap model){
		model.put("tags", service.geTags());
		model.put("publications", service.getAllPubs());
		return "Publications";
	}
	
	@RequestMapping(value="/review",method=RequestMethod.GET)
	public String showReviewPage(ModelMap model, @RequestParam String id){
		model.put("publication", service.getPub(id));
		model.put("comments", service.getCommentsFor(id));
		return "Publication_Review";
	}
}
