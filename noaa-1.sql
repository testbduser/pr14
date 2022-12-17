DROP TABLE IF EXISTS observations;
DROP DATABASE noaa;
CREATE DATABASE noaa;
CREATE TABLE observations
(
station VARCHAR(5) NOT NULL,
latitude FLOAT NOT NULL,
longitude FLOAT NOT NULL,
year INTEGER NOT NULL,
month INTEGER NOT NULL,
day INTEGER NOT NULL,
hour INTEGER NOT NULL,
minute INTEGER NOT NULL,
wind_direction FLOAT,
wind_speed FLOAT,
gust FLOAT,
wave_height FLOAT,
dominant_wave_period FLOAT,
average_wave_period FLOAT,
dominant_wave_direction FLOAT,
pressure FLOAT,
pressure_tendency FLOAT,
air_temperature FLOAT,
water_temperature FLOAT,
dew_point FLOAT,
visibility FLOAT,
tide FLOAT
);

CREATE UNIQUE INDEX idx_measureneant ON observations (station, year, month, day, hour, minute);
