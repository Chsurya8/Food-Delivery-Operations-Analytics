--Query 1: Macro Operations & Fleet Baseline Statistics
--------------------------------------------------------------
SELECT
    COUNT(*) AS total_deliveries,

    ROUND(AVG(time_takenmin)::numeric, 2)
    AS avg_delivery_time,

    ROUND(AVG(distance_km)::numeric, 2)
    AS avg_distance

FROM deliveries;
----------------------------------------------------------------
-- Query 2: Bottleneck Identification via Traffic Congestion Impact
----------------------------------------------------------------
SELECT
    road_traffic_density,

    ROUND(AVG(time_takenmin)::numeric, 2)
    AS avg_delivery_time

FROM deliveries

GROUP BY road_traffic_density

ORDER BY avg_delivery_time DESC;
---------------------------------------------------------------
-- Query 3: Distance Tier Analysis (Short vs. Medium vs. Long Range)
---------------------------------------------------------------
SELECT

    CASE

        WHEN distance_km < 5 THEN 'Short Distance'

        WHEN distance_km < 15 THEN 'Medium Distance'

        ELSE 'Long Distance'

    END AS delivery_range,

    ROUND(AVG(time_takenmin)::numeric, 2)
    AS avg_delivery_time

FROM deliveries

GROUP BY delivery_range;
---------------------------------------------------------------
-- Query 4: City-wise Performance Analysis
---------------------------------------------------------------
SELECT

    city,

    ROUND(AVG(time_takenmin)::numeric, 2)
    AS avg_delivery_time,

    COUNT(*) AS total_orders

FROM deliveries

GROUP BY city

ORDER BY avg_delivery_time DESC;
----------------------------------------------------------------
-- Query 5: Driver Performance Analysis
----------------------------------------------------------------
SELECT

    ROUND(delivery_person_ratings::numeric,1)
    AS driver_rating,

    ROUND(AVG(time_takenmin)::numeric,2)
    AS avg_delivery_time,

    COUNT(*) AS total_orders

FROM deliveries

GROUP BY driver_rating

ORDER BY driver_rating DESC;
---------------------------------------------------------------
-- Query 6: Delay Analysis
---------------------------------------------------------------
SELECT

    is_delayed,

    COUNT(*) AS total_orders,

    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(),
        2
    ) AS percentage

FROM deliveries

GROUP BY is_delayed;
-------------------------------------------------------------------
-- Query 7: Vehicle Type Performance Analysis
--------------------------------------------------------------------
SELECT

    type_of_vehicle,

    ROUND(AVG(time_takenmin)::numeric,2)
    AS avg_delivery_time,

    ROUND(AVG(distance_km)::numeric,2)
    AS avg_distance

FROM deliveries

GROUP BY type_of_vehicle

ORDER BY avg_delivery_time;
-----------------------------------------------------------
-- Query 8: Time of Day Analysis
-----------------------------------------------------------
SELECT

    EXTRACT(HOUR FROM time_orderd::time)
    AS order_hour,

    COUNT(*) AS total_orders

FROM deliveries

WHERE
    time_orderd IS NOT NULL
    AND time_orderd != 'NaN '

GROUP BY order_hour

ORDER BY total_orders DESC;
------------------------------------------------------------
-- Query 9: Weather Impact Analysis
------------------------------------------------------------
SELECT

    road_traffic_density,

    weatherconditions,

    ROUND(AVG(time_takenmin)::numeric,2)
    AS avg_delivery_time

FROM deliveries

GROUP BY
    road_traffic_density,
    weatherconditions

ORDER BY avg_delivery_time DESC
LIMIT 10;