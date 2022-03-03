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

    FactoryNumber M-1

vehicle:

    VehicleType M-1

    VehicleID (PK) 1-1

    GasMileage M-1

    VehicleCity M-M
    
    VehicleEmissionType 1-M

public_transit:

    TransitID (PK) 1-1

    TotalUsage M-1

    TransitCity M-M

    TransitType M-1
    
    TransitEmissionType 1-M

factory:

    FactoryName 1-M

    FactoryCity M-M

    FactoryEmissionType 1-M

    FactoryID (PK) 1-1

carbon_emission:

    EmissionPercent M-1
    
    EmissionSource 1-M

    EmissionType (PK) 1-1


ATTRIBUTE MAXIMA

Singular: CityName

Plural: Population, MostUsedTransportation, FactoryNumber, GasMileage, EmissionSource
Unique:CityName, TotalUsage,

ATTRIBUTE MINIMA

Required:CityName, VehicleType, TransitType, FactoryName,FactoryCity,EmissionType, VehicleEmissionType
Optional:NumberOfFactories, Vehicle-Transit & FactoryEmissionPercent

Dependent entities:

    vehicle, public_transit
    
Independent entities:

    city
    
Dependent relationships:

    vehicle DEPENDS city
    public_tranist DEPENDS city
    
 All of our entities are supertypes, we currently dont have subtype entities
 
 Specify cascade and restrict actions for dependency relationships:
 
        vehicle DEPENDS city, carbon_emission
        Foreign Key = VehicleCity refers to CityName in city
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        Foreign Key = vehicle_emission_type refers to emission_type in carbon_emission
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        public_transit DEPENDS city, carbon_emission
        Foreign Key = TransitCity refers to CityName in city
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        Foreign Key = transit_emission_type refers to emission_type in carbon_emission
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        factory DEPENDS city, carbon_emission
        Foreign Key = TransitCity refers to CityName in city
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        Foreign Key = factory_emission_type refers to emission_type in carbon_emission
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
 
 
 Specify cascade and restrict rules on foreign keys:
 
        vehicle DEPENDS city, carbon_emission
        Foreign Key = VehicleCity refers to CityName in city
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        Foreign Key = vehicle_emission_type refers to emission_type in carbon_emission
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        public_transit DEPENDS city, carbon_emission
        Foreign Key = TransitCity refers to CityName in city
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update 
            
        Foreign Key = transit_emission_type refers to emission_type in carbon_emission
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
       factory DEPENDS city, carbon_emission
       Foreign Key = TransitCity refers to CityName in city
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update
            
        Foreign Key = factory_emission_type refers to emission_type in carbon_emission
            CASCADE on primary key update and delete
            Restrict on foreign key insert and update


Table city: 

    Attribute Type: CityName

    Data Type: VARCHAR(40)

    Description: 'CityName' is used to label information with characters with up to 40 characters. Punctuation is not acceptable. Examples of 'CityName' include Chicago, Los Angeles, New York, and Portland.
    
    
    Attribute Type: Population

    Data Type: INT

    Description: 'Population' is used to label information with an integer value. Only whole non-negative numbers are allowed. Examples of 'Population' are 1,000,000, 0, 900, and 3818191.
    
    
    Attribute Type: MostUsedTransportation

    Data Type: VARCHAR(40)

    Description: "MostUsedTransportation' is used to label information with a up to 40 characters. Punctuation is not allowed. Examples of 'MostUsedTranportation' are 'Sedan', 'SUV', 'Train',  and 'Bus'.
    
    
    Attribute Type: FactoryNumber

    Data Type: INT

    Description: 'FactoryNumber' is used to label information with an integer value. The value must be non-negative and whole numbers. Examples of 'FactoryNumber' are 1, 300, 5959, or 9000.
    
    
Table vehicle:

    Attribute Type: VehicleType

    Data Type: VARCHAR(20)

    Description: 'VehicleType' is used to describe information up to 20 characters. Punctuation is not allowed. Examples of 'VehiclyType' can be 'Sedan', 'SUV', 'Truck', or 'Hybrid'. 
    
    
    Attribute Type: VehicleID

    Data Type: INT

    Description: 'VehicleID' is used to describe an incremental ID for the rows in this table. Examples of 'VehicleID' are 1, 2, 3, 4, 5. Only whole non-negative values are allowed. 
    
    
    Attribute Type: VehicleEmissionType

    Data Type: VARCHAR(10)

    Description: 'VehicleEmissionType' is used to describe information up to 10 characters. Examples of 'VehicleEmissionType' are CO for carbon Monoxide, None if the vehicle has no emission, or Green for green house gases. This type includes any type of emission gases produced through vehicles.
    
    
    Attribute Type: GasMileage

    Data Type: Double(65, 2)

    Description: 'GasMileage' is used to describe information of digits up to 65 digits and a decimal point of 2. Some examples of 'GasMileage' are 125.12, 567.56, or 5694.56.
        
        
    Attribute Type: VehicleCity

    Data Type: VARCHAR(40)

    Description: 'VehicleCity' is used to describe information up to 40 characters. Punctuation is not allowed. Examples of 'VehicleCity' are 'Portland', 'Chicago', 'New York', and 'Los Angeles'


Table public_transit:

    Attribute Type: TransitID

    Data Type: INT

    Description: 'TransitID' is used to describe an incremental ID for the rows in this table. Examples of 'TransitID' are 1, 2, 3, 4, 5. Only whole non-negative values are allowed. 
    
    
    Attribute Type: TotalUsage

    Data Type: Decimal(5, 2)

    Description: 'TotalUsage' is used to describe information up to decimal values up to 5 digits a minimum of 2. Examples of 'TotalUsage' are .012, .440, or .5688.
    
    
    Attribute Type: TransitEmissionType

    Data Type: VARCHAR(10)

    Description: 'TransitEmissionType' is used to describe information up to 10 characters. Examples of 'TransitEmissionType' are CO for carbon Monoxide, None if the vehicle has no emission, or Green for green house gases. This type includes any type of emission gases produced through vehicles.
    
    
    Attribute Type: TransitCity

    Data Type: VARCHAR(40)

    Description: 'TransitCity' is used to describe information up to 40 characters. Punctuation is not allowed. Examples of 'TransitCity' are 'Portland', 'Chicago', 'New York', and 'Los Angeles'
    
    
    Attribute Type: TransitType

    Data Type: VARCHAR(20)

    Description: 'TransitType' is used to describe information up to 20 characters. Punctuation is not allowed. Examples of 'TransitType' can be 'Bus', 'Train', 'Bike', or 'Walk'. 
    






