package com.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bus 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int busId;
	private String busName;
    private String busNumber;
    private String fromLocation;
    private String toLocation;
    private double ticketPrice;
    private int numberOfSeats;
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public String getBusName() {
		return busName;
	}
	public void setBusName(String busName) {
		this.busName = busName;
	}
	public String getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(String busNumber) {
		this.busNumber = busNumber;
	}
	public String getFromLocation() {
		return fromLocation;
	}
	public void setFromLocation(String fromLocation) {
		this.fromLocation = fromLocation;
	}
	public String getToLocation() {
		return toLocation;
	}
	public void setToLocation(String toLocation) {
		this.toLocation = toLocation;
	}
	public double getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(double ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	public int getNumberOfSeats() {
		return numberOfSeats;
	}
	public void setNumberOfSeats(int numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}
	public Bus(int busId, String busName, String busNumber, String fromLocation, String toLocation, double ticketPrice,
			int numberOfSeats) {
		super();
		this.busId = busId;
		this.busName = busName;
		this.busNumber = busNumber;
		this.fromLocation = fromLocation;
		this.toLocation = toLocation;
		this.ticketPrice = ticketPrice;
		this.numberOfSeats = numberOfSeats;
	}
	public Bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Bus [busId=" + busId + ", busName=" + busName + ", busNumber=" + busNumber + ", fromLocation="
				+ fromLocation + ", toLocation=" + toLocation + ", ticketPrice=" + ticketPrice + ", numberOfSeats="
				+ numberOfSeats + "]";
	}
    
    

}
