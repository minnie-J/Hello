package hello.minhee.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import hello.minhee.domain.ImagesDomain;
import hello.minhee.service.ImagesService;

@RestController
@RequestMapping(value = "/images")
public class ImagesController {
	
	private static final Logger logger = LoggerFactory.getLogger(ImagesController.class);
	
	@Autowired
	private ImagesService imagesService;
	
	@RequestMapping(value = "/all/{pno}", method = RequestMethod.GET)
	public ResponseEntity<List<ImagesDomain>> selectImagesByPno(
			@PathVariable(name = "pno") Integer pno) {
		logger.info("selectImagesByPno(pno: {})", pno);
		List<ImagesDomain> imageList = imagesService.selectImagesByPno(pno);
		ResponseEntity<List<ImagesDomain>> entity = new ResponseEntity<List<ImagesDomain>>(imageList, HttpStatus.OK);
		
		return entity;
	}

}
