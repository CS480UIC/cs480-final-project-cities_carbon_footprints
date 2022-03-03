package vehicle.domain;

public class Vehicle {
	private String vehicleType;
	private String vehicleEmissionType;
	private float gasMileage;
	private String vehicleCity;
	private String vehicleDate;
	
	public String getVehicleType() {
		return this.vehicleType;
	}
	
	public void setVehicleType(String type) {
		this.vehicleType = type;
	}
	
	public String getVehicleEmissionType() {
		return this.vehicleEmissionType;
	}
	
	public void setVehicleEmissionType(String emissionType) {
		this.vehicleEmissionType = emissionType;
	}
	
	public float getGasMileage() {
		return this.gasMileage;
	}
	
	public void setGasMileage(float mileage) {
		this.gasMileage = mileage;
	}
	
	public String getVehicleCity() {
		return this.vehicleCity;
	}
	
	public void setVehicleCity(String city) {
		this.vehicleCity = city;
	}
	
	public String getVehicleDate() {
		return this.vehicleDate;
	}
	
	public void setVehicleDate(String date) {
		this.vehicleDate = date;
	}	
}
