package com.team.project;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.team.mybatis.ProjectService;


@Controller // restcontroller도 상관없지만 가볍게 하기위해 controller
public class FileUploadController {
	public static String uploadPath = "C:\\Users\\trump\\eclipse-workspace\\team\\src\\main\\webapp\\upload\\";

	@Autowired
	ProjectService service;

	@RequestMapping(value = "/fileUp")
	public ModelAndView upload(String jop, @RequestParam("attFile") List<MultipartFile> mul, // insert.jsp의
																										// attFile
			@ModelAttribute ProjectVo vo, @ModelAttribute Page page) {
		ModelAndView mv = new ModelAndView();
		String msg = "";
		UUID uuid = null;
		List<ProjectAtt> attList = new ArrayList<ProjectAtt>();
		boolean b = true;

		try {
			for (MultipartFile m : mul) {
				if (m.getOriginalFilename().equals(""))
					continue;

				File targetFile = new File(uploadPath + m.getOriginalFilename());
				m.transferTo(targetFile);
				uuid = UUID.randomUUID();
				String temp = uuid.toString() + "-" + m.getOriginalFilename();
				File reName = new File(uploadPath + temp);
				targetFile.renameTo(reName);
				// 여기까지 저장

				ProjectAtt att = new ProjectAtt();
				att.setAttFile(temp);
				attList.add(att);
			}

			vo.setAttList(attList);
			b = service.insertPlayAtt(vo, jop);

			if (b) {
				msg = "자료가 정상적으로 입력됐습니다.";
			} else {
				msg = "자료 입력중 오류 발생";
			}
			
			mv.addObject("msg", msg);
			mv.setViewName("index.jsp?sub=./site/result");
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return mv;
	}
}
