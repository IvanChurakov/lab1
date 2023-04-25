INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'I');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'Love');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'Java');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'So');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'Much');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'Gonna');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), 'Cry');
INSERT INTO city (city_id, display_name) VALUES(gen_random_uuid (), '?');

INSERT INTO user_profile (user_profile_id, first_name, last_name, username, password, created_at)
VALUES(gen_random_uuid (), 'Andrii','Kasaiani','Kavai','Boy','2022-11-15 20:00:7+02');
INSERT INTO user_profile (user_profile_id, first_name, last_name, username, password, created_at)
VALUES(gen_random_uuid (), 'Pavlo','Patalashko','Gonna','Cry','2022-11-15 16:00:7+02');

INSERT INTO flight (flight_id, departure_city_id, arrival_city_id, departure_time, arrival_time, flight_number, price, created_at)
VALUES(gen_random_uuid (), 'b99083cd-cb01-4659-98ff-7c2ba695ccce','fa5d2da6-2822-4d95-bb0a-e9c3ffed504e','2023-06-13 20:00:00+02','2023-06-14 10:00:00+02',1235,55.23,'2023-04-22 12:22:31+02');
INSERT INTO flight (flight_id, departure_city_id, arrival_city_id, departure_time, arrival_time, flight_number, price, created_at)
VALUES(gen_random_uuid (), 'fa5d2da6-2822-4d95-bb0a-e9c3ffed504e','08453171-e74b-44b7-9d7f-a87a23c0c77a','2023-06-13 13:30:00+02','22023-06-14 03:30:00+02',1337,250.53,'2023-04-16 10:00:13+02');

INSERT INTO ticket (ticket_id, flight_id, user_profile_id, pnr, created_at)
VALUES(gen_random_uuid (), '20298f5a-f21f-4dfe-be1e-7bc3ffea2606','a72eb652-fda0-4d5b-a1dd-ec9c91ea3775','ССB12','2023-04-22 12:22:31+02');
INSERT INTO ticket (ticket_id, flight_id, user_profile_id, pnr, created_at)
VALUES(gen_random_uuid (), 'cc722547-cc6d-4cc4-b4f0-b1d05906c890','a72eb652-fda0-4d5b-a1dd-ec9c91ea3775','AA312','2023-04-16 10:00:13+02');