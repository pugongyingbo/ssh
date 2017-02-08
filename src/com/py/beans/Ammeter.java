package com.py.beans;

import java.io.Serializable;

public class Ammeter implements Serializable {
	private String did;
	private AmmeterType ammeterType;
	private String address;
	private Double remain;

	public Ammeter() {
	}

	public Ammeter(AmmeterType ammeterType, String address, Double remain) {
		this.ammeterType = ammeterType;
		this.address = address;
		this.remain = remain;
	}

	public String getDid() {
		return this.did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public AmmeterType getAmmeterType() {
		return this.ammeterType;
	}

	public void setAmmeterType(AmmeterType ammeterType) {
		this.ammeterType = ammeterType;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getRemain() {
		return this.remain;
	}

	public void setRemain(Double remain) {
		this.remain = remain;
	}
}

/*
 * Location: C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\ Qualified Name:
 * com.py.beans.Ammeter JD-Core Version: 0.5.3
 */