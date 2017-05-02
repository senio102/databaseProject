--triggers on delete
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
		select * into #ttable from deleted
		begin
			while(exists(select house from #ttable))
				begin
					select top 1 @price from #ttable
					select top 1 @bedroom = bedroom from #ttable
					select top 1 @bathroom = bathroom from #ttable
					select top 1 @zip = zip from #ttable
					select top 1 @city = city from #ttable
					select top 1 @us_state = us_state from #ttable
					select top 1 @sqft = sqft from #ttable
					select top 1 @house_year = house_year from #ttable

			
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
					--base tables
					delete from House_Identifier
						where house_id = @house
					delete from #ttable where house_id = @house
				end
			end
		end