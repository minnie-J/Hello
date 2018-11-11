package hello.minhee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hello.minhee.domain.ProjectsDomain;
import hello.minhee.service.ProjectsService;

@Controller
public class ProjectsController {
	
	@Autowired
	private ProjectsService projectsService;
	
	@GetMapping("/")
	public ModelAndView helloPage1() {
		List<ProjectsDomain> projectList = projectsService.selectAll();
		ModelAndView mainPage = new ModelAndView("hello");
		mainPage.addObject("projectList", projectList);
		return mainPage;
	}
	
	@GetMapping("/login.cgi")
	public ModelAndView helloPage2() {
		List<ProjectsDomain> projectList = projectsService.selectAll();
		ModelAndView mainPage = new ModelAndView("hello");
		mainPage.addObject("projectList", projectList);
		return mainPage;
	}
	
//	@RequestMapping(value = "/{pno}")
//	@ResponseBody
//	public ResponseEntity<List<ProjectsDomain>> selectByPno(
//			@PathVariable(name = "pno") Integer pno) {
//		List<ProjectsDomain> projectList = projectsService.selectByPno(pno);
//		ResponseEntity<List<ProjectsDomain>> entity = new ResponseEntity<List<ProjectsDomain>>(projectList, HttpStatus.OK);
//		
//		return entity;
//	}
	
	@RequestMapping(value = "/{pno}")
	@ResponseBody
	public ResponseEntity<ProjectsDomain> selectByPno(
			@PathVariable(name = "pno") Integer pno) {
		ProjectsDomain projectList = projectsService.selectByPno(pno);
		ResponseEntity<ProjectsDomain> entity = new ResponseEntity<ProjectsDomain>(projectList, HttpStatus.OK);
		
		return entity;
	}

}
