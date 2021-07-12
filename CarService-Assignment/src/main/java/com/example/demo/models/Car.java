package com.example.demo.models;

 

import org.springframework.stereotype.Component;

import lombok.Data;

 
@Data
@Component
public class Car{

	String model;
	String current_date;
	int kilometer;
	String brand;
	String status;
    public Car() {
        super();
        // TODO Auto-generated constructor stub
    }
    public Car(String model, String current_date, int kilometer, String brand, String status) {
    	super();
		this.model = model;
		this.current_date = current_date;
		this.kilometer = kilometer;
		this.brand = brand;
		this.status = status;
    }
    public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getDate() {
		return current_date;
	}
	public void setDate(String current_date) {
		this.current_date = current_date;
	}
	public int getKilometers() {
		return kilometer;
	}
	public void setKilometers(int kilometers) {
		this.kilometer = kilometers;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Cars [model=" + model + ", current_date=" + current_date + ", kilometer=" + kilometer + ", brand=" + brand
				+ ", status=" + status + "]";
	} 
    
}