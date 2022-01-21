package com.team.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.team.project.Page;
import com.team.project.ProjectAtt;
import com.team.project.ProjectVo;

@Repository
@Mapper
public interface ProjectMapper {
	public Integer totSize(String findStr);
	public int insertPlay(ProjectVo vo);
	public int insertPlayAtt(ProjectAtt att);
	public Integer modify(ProjectVo vo);
	public List<ProjectVo> search(Page p);
	public ProjectVo view(String serial);
	public List<ProjectAtt> attList(String grp);
	public ProjectVo getCustomerName(String mid);
	
	
	public int deleteAtt(List<String> delFile);
	public int delete(ProjectVo vo);
}
