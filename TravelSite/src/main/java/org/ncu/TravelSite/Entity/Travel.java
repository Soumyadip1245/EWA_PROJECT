package org.ncu.TravelSite.Entity;

public class Travel {
	private String Hotelid;
	private String Hotelname;
	private String HotelDestination;
	private String HotelDate;
	private int HotelPrice;
	private String HotelContact;
	public String getHotelContact() {
		return HotelContact;
	}
	public void setHotelContact(String hotelContact) {
		HotelContact = hotelContact;
	}
	public String getHotelid() {
		return Hotelid;
	}
	public void setHotelid(String hotelid) {
		Hotelid = hotelid;
	}
	public String getHotelname() {
		return Hotelname;
	}
	
	public int getHotelPrice() {
		return HotelPrice;
	}
	public void setHotelPrice(int hotelPrice) {
		HotelPrice = hotelPrice;
	}
	@Override
	public String toString() {
		return "Travel [Hotelid=" + Hotelid + ", Hotelname=" + Hotelname + ", HotelDestination=" + HotelDestination
				+ ", HotelDate=" + HotelDate + ", HotelPrice=" + HotelPrice + ", HotelContact=" + HotelContact + "]";
	}
	public void setHotelname(String hotelname) {
		Hotelname = hotelname;
	}
	public String getHotelDestination() {
		return HotelDestination;
	}
	public void setHotelDestination(String hotelDestination) {
		HotelDestination = hotelDestination;
	}
	public String getHotelDate() {
		return HotelDate;
	}
	public void setHotelDate(String hotelDate) {
		HotelDate = hotelDate;
	}
}
