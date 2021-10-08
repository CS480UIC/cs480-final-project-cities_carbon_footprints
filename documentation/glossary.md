ENTITIES SYNONYMS AND DESCRIPTIONS

1-
Entity: City
Synonyms: Town, Capital
Description: City is a town in which there is a population and transportation. Also, it includes number of factories and also has a name.

2- 
Entity: Vehicle
Synonyms: Car
Description:  A vehile is any car that contains 1 or multiple passenger. it has a driver and a type. It also produce gaz.

3-
Entity: Public_Transit
Synonyms: Train, Bus
Description: Public_Transit is a tranportation that has several passenger which is describe by the attribute number of users. It has a driver.

4- 
Entity: Factory
Synonyms: Workplace, Manufactory
Description: A factory is a workplace which has several employee. It emit gaz in the air and has a name.

5- 
Entity: Carbon_Emission
Synonyms: air Polution 
Description: It describes the polution emitted by vehicle, factory and Public_Transit by giving their percentage gas emission.


RELATIONSHIP MAXIMA AND MINIMA

Note: I wrote these out as seen in the ERD

    city 1(1) <--DrivesIn-- vehicle M(0)

    city 1(1) --Has--> public_transit M(0)

    city 1(1) --Contains--> factory M(0)

    vehicle M(1) --Creates--> carbon_emission 1(0)

    public_transit --Produces--> carbon_emission 1(0)

    factory --Generates--> carbon_emission 1(0)


ATTRIBUTE MAXIMA AND MINIMA

Note: I wrote these based in the ERD


city:

    cityName (PK) 1-1

    Population M-M

    MostUsedTransportation M-1

    NumberOfFactories M-1

vehicle:

    VehicleType M-1

    VehicleID (PK) 1-1

    TotalMilesPerGallon M-1

    TotalNumberOfDrivers M-1

    VehicleCity M-M

public_transit:

    TransitID (PK) 1-1

    TotalUsage M-1

    TotalNumberOfUsers M-1

    TransitCity M-M

    TransitType M-1

factory:

    FactoryName 1-M

    FactoryCity M-M

    NumberOfEmployee M-1

    FactoryID (PK) 1-1

carbon_emission:

    VehicleEmissionPercent M-1

    TransitEmissionPercent M-1

    FactoryEmissionPercent M-1

    EmissionType (PK) 1-1


ATTRIBUTE MAXIMA

Singular: CityName

Plural: Population, MostUsedTransportation, NumberOfFactories, TotalMilesperGallon, TotalNumberofDrivers,TotalNumberofUser,NumberofEmployee,
Unique:CityName, TotalUsage,

ATTRIBUTE MINIMA

Required:CityName, VehicleType, TransitType, FactoryName,FactoryCity,EmissionType
Optional:NumberOfFactories, Vehicle-Transit & FactoryEmissionPercent










