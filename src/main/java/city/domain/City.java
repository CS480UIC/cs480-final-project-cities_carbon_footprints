package city.domain;

public class City {
	private String cityName;
	private int population;
	private String mostUsedTransportation;
	private int factoryNumber;
	private String cityDate;
	
	
	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
	public int getPopulation() {
		return population;
	}

	public void setPopulation(int population) {
		this.population = population;
	}
	
	public String getMostUsedTransportation() {
		return mostUsedTransportation;
	}

	public void setMostUsedTransportation(String mostUsedTranportation) {
		this.mostUsedTransportation = mostUsedTranportation;
	}
	
	public int getFactoryNumber() {
		return factoryNumber;
	}

	public void setFactoryNumber(int factoryNumber) {
		this.factoryNumber = factoryNumber;
	}
	public String getCityDate() {
		return cityDate;
	}

	public void setCityDate(String cityDate) {
		this.cityDate = cityDate;
	}
	
}
