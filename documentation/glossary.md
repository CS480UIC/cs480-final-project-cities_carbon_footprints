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

MINIMA
Relationship: Emission
Carbon_Emission ------> Vehicle
Carbon_Emission ------> Public Transit
Carbon_Emission ------> Factory


MAXIMA
Relationship:  CityName & population
City --------> Vehicle
City --------> Public_Transit
City --------> Factory


ATRIBUTE MAXIMA AND MINIMA

ATRIBUTE MAXIMA

Singular: CityName,
Plural: Population, MostUsedTransportation, NumberOfFactories, TotalMilesperGallon, TotalNumberofDrivers,TotalNumberofUser,NumberofEmployee,
Unique:CityName, TotalUsage,

ATRIBUTE MINIMA

Required:CityName, VehicleType, TransitType, FactoryName,FactoryCity,EmissionType
Optional:NumberOfFactories, Vehicle-Transit & FactoryEmissionPercent










