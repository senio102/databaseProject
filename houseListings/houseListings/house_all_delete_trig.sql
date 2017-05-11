create trigger house_all_delete_trig
	on House_All
	instead of delete
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
		select * into #temp from deleted
		begin
			while(exists(select house from #temp))
				begin
					select top 1 @price from #temp
					select top 1 @bedroom = bedroom from #temp
					select top 1 @bathroom = bathroom from #temp
					select top 1 @zip = zip from #temp
					select top 1 @city = city from #temp
					select top 1 @us_state = us_state from #temp
					select top 1 @sqft = sqft from #temp
					select top 1 @house_year = house_year from #temp
					delete from House_Price
						where house = @house
					delete from Bedroom_Count
						where house = @house
					delete from Bathroom_Count
						where house = @house
					delete from zip_code
						where house = @house
					delete from city
						where house = @house
					delete from us_state
						where house = @house						
					delete from house_sqft
						where house = @house				
					delete from year_built
						where house = @house
					--
					delete from House_Identifier
						where house_id = @house
					delete from #temp where house_id = @house
				end
			end
		end