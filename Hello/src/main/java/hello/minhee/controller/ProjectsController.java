package hello.minhee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import hello.minhee.domain.ProjectsDomain;
import hello.minhee.service.ProjectsService;

@Controller
public class ProjectsController {
	
	@Autowired
	private ProjectsService projectsService;
	
	@GetMapping("/")
	public ModelAndView helloPage() {
		List<ProjectsDomain> projectList = projectsService.selectAll();
		ModelAndView mainPage = new ModelAndView("hello");
		mainPage.addObject("projectList", projectList);
		return mainPage;
	}

}
