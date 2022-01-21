package com.team.project;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.http.HttpRequest;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team.mybatis.ProjectService;

@RestController
public class ProjectController {

	@Autowired
	ProjectService service;

	PrintWriter out;
	String msg = "";
	ProjectVo vo = null;
	boolean b = false;

	@RequestMapping("/")
	public ModelAndView index(Page page) {
		ModelAndView mv = new ModelAndView();
		List<ProjectVo> list = service.search(page);
		page = service.getPage();

		mv.addObject("page", page);
		mv.addObject("list", list);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value = "/login", method = { RequestMethod.POST })
	protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mid = req.getParameter("mid");
		String pwd = req.getParameter("pwd");

		HttpSession session = req.getSession();

		if (mid == null) {
			session.removeAttribute("vo");
		} else {
			vo = service.getCustomerName(mid, pwd);
			session.setAttribute("vo", vo);
			RequestDispatcher rd = req.getRequestDispatcher("/");
			rd.forward(req, resp);
		}
	}
	
	@RequestMapping(value = "/logout", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView logout(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		HttpSession session= req.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		mv.setViewName("index.jsp?sub=./site/login");
		return mv;
	}

	@RequestMapping(value = "/view", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView view(String serial) {
		ModelAndView mv = new ModelAndView();
		vo = service.view(serial, 'v');
		mv.addObject("vo", vo);
		mv.setViewName("index.jsp?sub=./site/view");
		return mv;
	}

	@RequestMapping(value = "/loginPage", method = { RequestMethod.POST })
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/login");
		return mv;
	}

	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView join() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/join");
		return mv;
	}

	@RequestMapping(value = "/notice", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/notice");
		return mv;
	}

	@RequestMapping(value = "/noticeList", method = { RequestMethod.POST })
	public ModelAndView noticeList() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/noticeList");
		return mv;
	}

	@RequestMapping(value = "/ticket", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView ticket(Page page) {
		ModelAndView mv = new ModelAndView();
		List<ProjectVo> list = service.search(page);
		page = service.getPage();

		mv.addObject("page", page);
		mv.addObject("list", list);
		mv.setViewName("index");
		mv.setViewName("index.jsp?sub=./site/ticket");
		return mv;
	}

	@RequestMapping(value = "/searchList", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView searchList(Page page) {
		ModelAndView mv = new ModelAndView();
		List<ProjectVo> list = service.search(page);
		page = service.getPage();

		mv.addObject("page", page);
		mv.addObject("list", list);
		mv.setViewName("index.jsp?sub=./site/searchList");
		return mv;
	}

	@RequestMapping(value = "/seat", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView seat() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/seat");
		return mv;
	}

	@RequestMapping(value = "/maps", method = { RequestMethod.POST })
	public ModelAndView maps() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/maps");
		return mv;
	}

	@RequestMapping(value = "/payment", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/payment");
		return mv;
	}

	@RequestMapping(value = "/qna", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView qna() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/QNA");
		return mv;
	}

	@RequestMapping(value = "/cancelReservation", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView refund() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/refund");
		return mv;
	}

	@RequestMapping(value = "/result", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView result() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/result");
		return mv;
	}

	@RequestMapping(value = "/information", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView information() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/information");
		return mv;
	}

	@RequestMapping(value = "/insertPlay", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView insertPlay() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/insertPlay");
		return mv;
	}

	@RequestMapping(value = "/insertPlayModify", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView insertPlayModify(String serial) {
		ModelAndView mv = new ModelAndView();
		vo = service.view(serial, 'v');
		mv.addObject("vo", vo);
		mv.setViewName("index.jsp?sub=./site/insertPlayModify");
		return mv;
	}

	@RequestMapping(value = "/insertPlayModifySave", method = { RequestMethod.POST, RequestMethod.GET })
	public void insertPlayModifySave(ProjectVo vo, HttpServletResponse resp) {
		try {
			out = resp.getWriter();

			if (vo.getDelFile() != null) {
				vo.setDelList(Arrays.asList(vo.getDelFile()));
			}

			b = service.modify(vo);
			String temp = "{'flag':'%s'}";
			String flag = "";
			if (b) {
				flag = "OK";
			} else {
				flag = "Fail";
			}
			String json = String.format(temp, flag);
			json = json.replaceAll("'", "\"");
			out.print(json);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@RequestMapping(value = "/deletePlayInfo", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView deletePlayInfo(ProjectVo vo) {
		ModelAndView mv = new ModelAndView();
		b = service.delete(vo);
		if (b) {
			msg = "정상적으로 삭제 됐습니다.";
		} else {
			msg = "삭제중 오류가 발생했습니다.";
		}
		mv.addObject("msg", msg);
		mv.setViewName("index.jsp?sub=./site/result");
		return mv;
	}

	@RequestMapping(value = "/insertPlaySave", method = { RequestMethod.POST, RequestMethod.GET })
	public void insertPlaySave(ProjectVo vo, HttpServletResponse resp) {
		try {
			out = resp.getWriter();
			b = service.insertPlay(vo);

			String temp = "{'flag':'%s'}";
			String flag = "";
			if (b) {
				flag = "OK";
			} else {
				flag = "Fail";
			}
			String json = String.format(temp, flag);
			json = json.replaceAll("'", "\"");
			out.print(json);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@RequestMapping(value = "/insertNotice", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView insertNotice() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/insertNotice");
		return mv;
	}

	@RequestMapping(value = "/mypage", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index.jsp?sub=./site/mypage2");
		return mv;
	}

	@RequestMapping("kakaopay")
	@ResponseBody
	public String kakaopay() {
		try {
			// 보내는 부분
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection connection = (HttpURLConnection) address.openConnection(); // 서버연결
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK 3ef853e666ee79e42c5622ea43c18b1f"); // 어드민 키
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true); // 서버한테 전달할게 있는지 없는지
			String parameter = "cid=TC0ONETIME" // 가맹점 코드
					+ "&partner_order_id=partner_order_id" // 가맹점 주문번호
					+ "&partner_user_id=partner_user_id" // 가맹점 회원 id
					+ "&item_name=MacBookPro Sale" // 상품명
					+ "&quantity=1" // 상품 수량
					+ "&total_amount=777" // 총 금액
					+ "&vat_amount=10" // 부가세
					+ "&tax_free_amount=0" // 상품 비과세 금액
					+ "&approval_url=http://localhost:7777/view" // 결제 성공 시
					+ "&fail_url=http://localhost:7777/payment" // 결제 실패 시
					+ "&cancel_url=http://localhost:7777/view"; // 결제 취소 시
			OutputStream send = connection.getOutputStream(); // 이제 뭔가를 를 줄 수 있다.
			DataOutputStream dataSend = new DataOutputStream(send); // 이제 데이터를 줄 수 있다.
			dataSend.writeBytes(parameter); // OutputStream은 데이터를 바이트 형식으로 주고 받기로 약속되어 있다. (형변환)
			dataSend.close(); // flush가 자동으로 호출이 되고 닫는다. (보내고 비우고 닫다)

			int result = connection.getResponseCode(); // 전송 잘 됐나 안됐나 번호를 받는다.
			InputStream receive; // 받다

			if (result == 200) {
				receive = connection.getInputStream();
			} else {
				receive = connection.getErrorStream();
			}
			// 읽는 부분
			InputStreamReader read = new InputStreamReader(receive); // 받은걸 읽는다.
			BufferedReader change = new BufferedReader(read); // 바이트를 읽기 위해 형변환 버퍼리더는 실제로 형변환을 위해 존제하는 클레스는 아니다.
			// 받는 부분
			return change.readLine(); // 문자열로 형변환을 알아서 해주고 찍어낸다 그리고 본인은 비워진다.

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "";
	}
}
