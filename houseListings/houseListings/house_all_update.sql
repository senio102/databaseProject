create trigger house_all_update_trig
	on house_all
	instead of update
	as
	begin
		declare @house int
		declare @price int
		declare @bedroom int
		declare @bathroom int
		declare @zip int
		declare @city varchar(40)
		declare @us_state varchar(2)
		declare @sqft int
		declare @house_year int
		select * into #ttable from inserted
		begin
			select top 1 @house = house_id from #ttable
			select top 1 @price = price from #ttable
			select top 1 @bedroom = bedroom from #ttable
			select top 1 @bathroom = bathroom from #ttable
			select top 1 @zip = zip from #ttable
			select top 1 @city = city from #ttable
			select top 1 @us_state = us_state from #ttable
			select top 1 @sqft = sqft from #ttable
			select top 1 @house_year = house_year from #ttable
			update House_Price
				set price = @price where house = @house
			update Bedroom_Count
				set bedroom = @bedroom where house = @house
			update Bathroom_Count
				set bathroom = @bathroom where house = @house
			update zip_code
				set zip = @zip where house = @house
			update city
				set city = @city where house = @house
			update us_state
				set us_state = @us_state where house = @house
			update house_sqft
				set sqft = @sqft where house = @house
			update year_built
				set house_year = @house_year where house = @house
			delete from #ttable where house_id = @house
		end
	end