package com.team.mybatis;

import java.io.File;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.team.project.AES;
import com.team.project.FileUploadController;
import com.team.project.Page;
import com.team.project.ProjectAtt;
import com.team.project.ProjectVo;

@Service
@Transactional
public class ProjectService {
	@Autowired
	ProjectMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager;
	
	@Autowired
	AES aes;
	
	TransactionStatus status;
	Page page;
	int grp;
	
	public ProjectVo getCustomerName(String mid, String pwd) {
		ProjectVo vo = new ProjectVo();
		vo = mapper.getCustomerName(mid);
		if(vo.getPwd().equals(pwd)) {
			vo.setCustomerName(vo.getCustomerName());
			vo.setMid(mid);
			}else {
			vo = null;
		}
		
		return vo;
	}
	
	public List<ProjectVo> search(Page p){
		List<ProjectVo> list = null;
		
		int totSize = mapper.totSize(p.getFindStr());
		p.setTotSize(totSize);
		this.page = p;
		
		list = mapper.search(p);
		return list;
	}
	
	public boolean insertPlay(ProjectVo vo) {
		boolean b = false;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		int c = mapper.insertPlay(vo);
		if(c>0) {
			manager.commit(status);
			b=true;
		}else {
			manager.rollback(status);
		}
		
		return b;
	}
	
	public boolean insertPlayAtt(ProjectVo vo, String job) {
		boolean b = false;
		
		status = manager.getTransaction(new DefaultTransactionDefinition());
		
		int c = 0;
		try {
			for(ProjectAtt att : vo.getAttList()) {
				c +=mapper.insertPlayAtt(att);
			}
			if(c== vo.getAttList().size()) {
				manager.commit(status);
				b=true;
			}else {
				manager.rollback(status);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return b;
	}
	
	public ProjectVo view(String serial, char mode) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		ProjectVo vo = null;

		try {
			if(mode == 'v') {
				manager.commit(status);
			}
			vo = mapper.view(serial);

		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return vo;
	}
	
	public boolean modify(ProjectVo vo) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		boolean b = false;
		Object savePoint = null;
		try {
			savePoint = status.createSavepoint();
			Integer c = mapper.modify(vo);
			if(c>0) {
				if(vo.getDelList().size()>0) {
					mapper.deleteAtt(vo.getDelList());
				}
				manager.commit(status);
				b=true;
				for(String del : vo.getDelList()) {
					File delFile = new File(FileUploadController.uploadPath+del);
					if(delFile.exists()) delFile.delete();
				}
			}else {
				status.rollbackToSavepoint(savePoint);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return b;
	}
	
	public boolean delete(ProjectVo vo) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		boolean b = false;
		Object savePoint = null;
		
		try {
			savePoint = status.createSavepoint();
			int c =mapper.delete(vo);
			if(c>0) {
				b=true;
				manager.commit(status);;
			}else {
				status.rollbackToSavepoint(savePoint);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return b;
	}
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public int getGrp() {
		return grp;
	}
}






















