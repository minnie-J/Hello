package hello.minhee.service;

import java.util.List;

import hello.minhee.domain.ProjectsDomain;

public interface ProjectsService {
	
	public List<ProjectsDomain> selectAll();
//	public List<ProjectsDomain> selectByPno(int pno);
	public ProjectsDomain selectByPno(int pno);

}
