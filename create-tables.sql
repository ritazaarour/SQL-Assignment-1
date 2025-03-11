create table Carriers
   ...> (cid varchar(7) primary key,
   ...> name varchar(83));
create table Months
   ...> (mid int primary key,
   ...> month varchar(9));
create table Weekdays
   ...> (did int primary key,
   ...> day_of_week varchar(9));
create table Flights
   ...> (fid int primary key,
   ...> month_id int,
   ...> day_of_month int,
   ...> day_of_week int,
   ...> carrier_id varchar(7),
   ...> flight_num int,
   ...> origin_city varchar(34),
   ...> origin_state varchar(47),
   ...> dest_city varchar(34),
   ...> dest_state varchar(46),
   ...> departure_delay int,
   ...> taxi_out int,
   ...> arrival_delay int,
   ...> canceled int,
   ...> actual_time int,
   ...> distance int,
   ...> capacity int,
   ...> price int,
   ...> 
   ...> FOREIGN KEY (month_id) REFERENCES Months (mid)
   ...> FOREIGN KEY (day_of_week) REFERENCES Weekdays (did)
   ...> FOREIGN KEY (carrier_id) REFERENCES Carriers (cid));