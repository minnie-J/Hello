package hello.minhee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.minhee.dao.ProjectsMapper;
import hello.minhee.domain.ProjectsDomain;

@Service
public class ProjectsServiceImple implements ProjectsService {

	@Autowired
	private ProjectsMapper projectsMapper;
	
	@Override
	public List<ProjectsDomain> selectAll() {
		return projectsMapper.selectAll();
	}

//	@Override
//	public List<ProjectsDomain> selectByPno(int pno) {
//		return projectsMapper.selectByPno(pno);
//	}
	
	@Override
	public ProjectsDomain selectByPno(int pno) {
		return projectsMapper.selectByPno(pno);
	}

}
