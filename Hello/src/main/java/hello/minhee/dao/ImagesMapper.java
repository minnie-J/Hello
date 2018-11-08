package hello.minhee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import hello.minhee.domain.ImagesDomain;

@Mapper
public interface ImagesMapper {
	
	// 어노테이션 방식
	// 프로젝트 번호에 해당되는 이미지 불러옴
	@Select("select * from images where pno = #{pno}")
	public List<ImagesDomain> selectImagesByPno(@Param("pno") int pno);
	
	// xml방식 - 그냥 연습 예제
	public List<ImagesDomain> selectByIno(int ino);
}
