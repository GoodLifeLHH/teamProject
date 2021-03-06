package com.team.project;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ProjectController {
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/view", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/view");
		return mv;
	}
	
	@RequestMapping(value="/login", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/login");
		return mv;
	}
	
	@RequestMapping(value="/join", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView join() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/join");
		return mv;
	}
	
	@RequestMapping(value="/notice", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/notice");
		return mv;
	}
	
	@RequestMapping(value="/noticeList", method = {RequestMethod.POST})
	public ModelAndView noticeList() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/noticeList");
		return mv;
	}
	
	@RequestMapping(value="/ticket", method = {RequestMethod.POST})
	public ModelAndView ticket() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/ticket");
		return mv;
	}
	
	@RequestMapping(value="/searchList", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchList() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/searchList");
		return mv;
	}
	
	@RequestMapping(value="/seat", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView seat() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/seat");
		return mv;
	}
	
	@RequestMapping(value="/maps", method = {RequestMethod.POST})
	public ModelAndView maps() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/maps");
		return mv;
	}
	
	@RequestMapping(value="/payment", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp?sub=./site/payment");
		return mv;
	}

	@RequestMapping("kakaopay")
	@ResponseBody
	public String kakaopay() {
		try {
			// ????????? ??????
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection connection = (HttpURLConnection) address.openConnection(); // ????????????
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK 3ef853e666ee79e42c5622ea43c18b1f"); // ????????? ???
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true); // ???????????? ???????????? ????????? ?????????
			String parameter = "cid=TC0ONETIME" // ????????? ??????
					+ "&partner_order_id=partner_order_id" // ????????? ????????????
					+ "&partner_user_id=partner_user_id" // ????????? ?????? id
					+ "&item_name=MacBookPro Sale" // ?????????
					+ "&quantity=1" // ?????? ??????
					+ "&total_amount=777" // ??? ??????
					+ "&vat_amount=10" // ?????????
					+ "&tax_free_amount=0" // ?????? ????????? ??????
					+ "&approval_url=http://localhost:7777/view" // ?????? ?????? ???
					+ "&fail_url=http://localhost:7777/payment" // ?????? ?????? ???
					+ "&cancel_url=http://localhost:7777/view"; // ?????? ?????? ???
			OutputStream send = connection.getOutputStream(); // ?????? ????????? ??? ??? ??? ??????.
			DataOutputStream dataSend = new DataOutputStream(send); // ?????? ???????????? ??? ??? ??????.
			dataSend.writeBytes(parameter); // OutputStream??? ???????????? ????????? ???????????? ?????? ????????? ???????????? ??????. (?????????)
			dataSend.close(); // flush??? ???????????? ????????? ?????? ?????????. (????????? ????????? ??????)
			
			int result = connection.getResponseCode(); // ?????? ??? ?????? ????????? ????????? ?????????.
			InputStream receive; // ??????
			
			if(result == 200) {
				receive = connection.getInputStream();
			}else {
				receive = connection.getErrorStream(); 
			}
			// ?????? ??????
			InputStreamReader read = new InputStreamReader(receive); // ????????? ?????????.
			BufferedReader change = new BufferedReader(read); // ???????????? ?????? ?????? ????????? ??????????????? ????????? ???????????? ?????? ???????????? ???????????? ?????????.
			// ?????? ??????
			return change.readLine(); // ???????????? ???????????? ????????? ????????? ???????????? ????????? ????????? ????????????.
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "";
	}
}
