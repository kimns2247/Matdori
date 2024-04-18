package MdrVO;

import java.util.Date;

//VO (Value Object) 

public class MerInfoVO {
	
	private String merchant_uid;
	private String pg;
	private String rsv_date;
	private String rsv_time;
	private String people_cnt;
	private String name;
	private String id;
	
	
	public MerInfoVO(String merchant_uid, String pg, String rsv_date, String rsv_time, String people_cnt, String name,
			String id) {
		super();
		this.merchant_uid = merchant_uid;
		this.pg = pg;
		this.rsv_date = rsv_date;
		this.rsv_time = rsv_time;
		this.people_cnt = people_cnt;
		this.name = name;
		this.id = id;
	}


	public String getMerchant_uid() {
		return merchant_uid;
	}


	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}


	public String getPg() {
		return pg;
	}


	public void setPg(String pg) {
		this.pg = pg;
	}


	public String getRsv_date() {
		return rsv_date;
	}


	public void setRsv_date(String rsv_date) {
		this.rsv_date = rsv_date;
	}


	public String getRsv_time() {
		return rsv_time;
	}


	public void setRsv_time(String rsv_time) {
		this.rsv_time = rsv_time;
	}


	public String getPeople_cnt() {
		return people_cnt;
	}


	public void setPeople_cnt(String people_cnt) {
		this.people_cnt = people_cnt;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}
	
	
}
