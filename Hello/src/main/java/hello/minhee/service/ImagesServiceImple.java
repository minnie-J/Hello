package hello.minhee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.minhee.dao.ImagesMapper;
import hello.minhee.domain.ImagesDomain;

@Service
public class ImagesServiceImple implements ImagesService {
	
	@Autowired
	private ImagesMapper imagesMapper;

	@Override
	public List<ImagesDomain> selectImagesByPno(int pno) {
		return imagesMapper.selectImagesByPno(pno);
	}

	@Override
	public List<ImagesDomain> selectByIno(int ino) {
		return imagesMapper.selectByIno(ino);
	}

}
