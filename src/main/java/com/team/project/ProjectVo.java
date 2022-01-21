package com.team.project;

import java.util.ArrayList;
import java.util.List;

public class ProjectVo {
	int serial;
	String title;
	String detail;
	String theater;
	String date;
	String startTime;
	int seats;
	String entryAge;
	int running_time;
	String ask;
	String doc;
	String main_img;
	String detail_img;
	int payID;
	int rPrice;
	int sPrice;
	int aPrice;
	int attCnt;
	String[] delFile;
	
	//customer
	String mid;
	String customerName;
	String pwd;
	String email;
	String phone;
	
	List<ProjectAtt> attList = new ArrayList<ProjectAtt>();
	List<String> delList = new ArrayList<String>();
	
	
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPayID() {
		return payID;
	}
	public void setPayID(int payID) {
		this.payID = payID;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getDetail_img() {
		return detail_img;
	}
	public void setDetail_img(String detail_img) {
		this.detail_img = detail_img;
	}
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public String getEntryAge() {
		return entryAge;
	}
	public void setEntryAge(String entryAge) {
		this.entryAge = entryAge;
	}
	public int getRunning_time() {
		return running_time;
	}
	public void setRunning_time(int running_time) {
		this.running_time = running_time;
	}
	public String getAsk() {
		return ask;
	}
	public void setAsk(String ask) {
		this.ask = ask;
	}
	public String getDoc() {
		return doc;
	}
	public void setDoc(String doc) {
		this.doc = doc;
	}
	public int getrPrice() {
		return rPrice;
	}
	public void setrPrice(int rPrice) {
		this.rPrice = rPrice;
	}
	public int getsPrice() {
		return sPrice;
	}
	public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
	}
	public int getaPrice() {
		return aPrice;
	}
	public void setaPrice(int aPrice) {
		this.aPrice = aPrice;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getAttCnt() {
		return attCnt;
	}
	public void setAttCnt(int attCnt) {
		this.attCnt = attCnt;
	}
	public String[] getDelFile() {
		return delFile;
	}
	public void setDelFile(String[] delFile) {
		this.delFile = delFile;
	}
	public List<ProjectAtt> getAttList() {
		return attList;
	}
	public void setAttList(List<ProjectAtt> attList) {
		this.attList = attList;
	}
	public List<String> getDelList() {
		return delList;
	}
	public void setDelList(List<String> delList) {
		this.delList = delList;
	}
}
