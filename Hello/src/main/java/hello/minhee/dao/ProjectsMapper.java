package hello.minhee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import hello.minhee.domain.ProjectsDomain;

@Mapper
public interface ProjectsMapper {
	
	// 전체 프로젝트 리스트 - 메인 페이지에 리스트로 가져옴
	@Select("select * from projects")
	public List<ProjectsDomain> selectAll();
	
//	// 번호에 해당되는 프로젝트 - 모달 호출때 필요
//	@Select("select * from projects where pno = #{pno}")
//	public List<ProjectsDomain> selectByPno(@Param("pno") int pno);
	
	// 번호에 해당되는 프로젝트 - 모달 호출때 필요.. 리스트말고 한줄만있어도 되는거잖아?
	@Select("select * from projects where pno = #{pno}")
	public ProjectsDomain selectByPno(@Param("pno") int pno);

}
