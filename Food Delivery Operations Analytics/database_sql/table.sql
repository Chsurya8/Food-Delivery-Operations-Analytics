CREATE TABLE deliveries (

    ID TEXT,
    Delivery_person_ID TEXT,
    Delivery_person_Age INT,
    Delivery_person_Ratings FLOAT,

    Restaurant_latitude FLOAT,
    Restaurant_longitude FLOAT,

    Delivery_location_latitude FLOAT,
    Delivery_location_longitude FLOAT,

    Order_Date TEXT,

    Time_Orderd TEXT,
    Time_Order_picked TEXT,

    Weatherconditions TEXT,
    Road_traffic_density TEXT,

    Vehicle_condition INT,

    Type_of_order TEXT,
    Type_of_vehicle TEXT,

    multiple_deliveries TEXT,
    Festival TEXT,
    City TEXT,

    Time_takenmin INT,

    distance_km FLOAT,

    is_delayed TEXT,
    delivery_speed TEXT
);