create trigger house_all_insert_trig
	on House_All
	instead of insert
	as
	begin
		declare @price int
		declare @bedroom int
		declare @bathroom int
		declare @zip int
		declare @city varchar(40)
		declare @us_state varchar(2)
		declare @sqft int
		declare @house_year int
		select * into #temp from inserted
		begin
			select top 1 @price = price from #temp
			select top 1 @bedroom = bedroom from #temp
			select top 1 @bathroom = bathroom from #temp
			select top 1 @zip = zip from #temp
			select top 1 @city = city from #temp
			select top 1 @us_state = us_state from #temp
			select top 1 @sqft = sqft from #temp
			select top 1 @house_year = house_year from #temp
			declare @i varchar(500)
			--create random ID to assign each house
			set @i=(SELECT CAST(RAND() * 1000000 AS INT) AS [RandomNumber])
			while exists (select * from House_Identifier where house_id=@i)
			begin
			set @i=(SELECT CAST(RAND() * 1000000 AS INT) AS [RandomNumber])
			end
			insert into House_Identifier values(@i)	
			insert into House_Price values(@i, @price)
			insert into Bedroom_Count values(@i,@bedroom)
			insert into Bathroom_Count values(@i,@bathroom)
			insert into zip_code values(@i,@zip)
			insert into city values(@i,@city)
			insert into us_state values(@i,@us_state)
			insert into house_sqft values(@i,@sqft)
			insert into year_built values(@i,@house_year)
			delete from #temp where price = @price
		end
	end


