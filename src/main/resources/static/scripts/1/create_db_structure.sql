CREATE TABLE IF NOT EXISTS city (
   city_id UUID PRIMARY KEY,
   display_name VARCHAR(50) NOT NULL,
   created_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE IF NOT EXISTS user_profile(
   user_profile_id UUID PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   username VARCHAR(50) NOT NULL,
   password VARCHAR(50) NOT NULL,
   created_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE IF NOT EXISTS flight(
   flight_id UUID PRIMARY KEY,
   departure_city_id UUID REFERENCES city (city_id),
   arrival_city_id UUID REFERENCES city (city_id),
   departure_time TIMESTAMP WITH TIME ZONE,
   arrival_time TIMESTAMP WITH TIME ZONE,
   flight_number VARCHAR(50) NOT NULL,
   price DOUBLE PRECISION,
   created_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE IF NOT EXISTS ticket(
   ticket_id UUID PRIMARY KEY,
   flight_id UUID REFERENCES flight (flight_id),
   user_profile_id UUID REFERENCES user_profile (user_profile_id),
   pnr VARCHAR(255) NOT NULL,
   created_at TIMESTAMP WITH TIME ZONE
);