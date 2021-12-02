package public_transit.domain;

public class PublicTransit {
	private String transitType;
	private String transitEmissionType;
	private float totalUsage;
	private String transitCity;
	private String transitDate;
	
	public String getTransitType(){
		return this.transitType;
	}
	
	public void setTransitType(String type) {
		this.transitType = type;
	}
	
	public String getTransitEmissionType() {
		return this.transitEmissionType;
	}
	
	public void setTransitEmissionType(String emissionType) {
		this.transitEmissionType = emissionType;
	}
	
	public float getTotalUsage() {
		return this.totalUsage;
	}
	
	public void setTotalUsage(float usage) {
		this.totalUsage = usage;
	}
	
	public String getTransitCity() {
		return this.transitCity;
	}
	
	public void setTransitCity(String city) {
		this.transitCity = city;
	}
	
	public String getTransitDate() {
		return this.transitDate;
	}
	
	public void setTransitDate(String date) {
		this.transitDate = date;
	}	
}
