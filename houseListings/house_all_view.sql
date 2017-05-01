create view House_All
	as
		select House_Identifier.house_id house_id, House_Price.price price, Bedroom_Count.bedroom bedroom, Bathroom_Count.bathroom bathroom,
		zip_code.zip zip, city.city city, us_state.state state, house_sqft.sqft sqft, year_built.house_year house_year
			from House_Identifier, House_Price, Bedroom_Count, Bathroom_Count, zip_code, city, us_state, house_sqft, year_built 
				where House_Identifier.house_id = House_Price.house and House_Identifier.house_id = Bedroom_Count.house and
				 House_Identifier.house_id = Bathroom_Count.house and House_Identifier.house_id = zip_code.house and
				  House_Identifier.house_id = city.house and House_Identifier.house_id = us_state.house and
				  House_Identifier.house_id = house_sqft.house and House_Identifier.house_id = year_built.house