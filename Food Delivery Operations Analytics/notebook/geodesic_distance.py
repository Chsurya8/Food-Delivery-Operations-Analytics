import pandas as pd
from geopy.distance import geodesic

# Load the dataset

df = pd.read_csv('../data/train.csv')

# Clean up column names

df.columns = df.columns.str.strip()

# Example: compute geodesic distance for the first row
restaurant_point = (
    df.loc[0, 'Restaurant_latitude'],
    df.loc[0, 'Restaurant_longitude'],
)
delivery_point = (
    df.loc[0, 'Delivery_location_latitude'],
    df.loc[0, 'Delivery_location_longitude'],
)

distance_km = geodesic(restaurant_point, delivery_point).kilometers
print(f'Row 0 distance: {distance_km:.2f} km')

# Optional helper function
def compute_distance_km(row):
    restaurant_point = (row['Restaurant_latitude'], row['Restaurant_longitude'])
    delivery_point = (row['Delivery_location_latitude'], row['Delivery_location_longitude'])
    return geodesic(restaurant_point, delivery_point).kilometers

# Add a distance column to the dataframe
# df['distance_km'] = df.apply(compute_distance_km, axis=1)
