package hello.minhee.service;

import java.util.List;

import hello.minhee.domain.ImagesDomain;

public interface ImagesService {
	
	public List<ImagesDomain> selectImagesByPno(int pno);
	public List<ImagesDomain> selectByIno(int ino);

}
