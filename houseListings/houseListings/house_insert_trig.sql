create trigger house_all_insert_trig
	on House_All
	instead of insert
	as
	begin
		declare @house_price int
		declare @bedroom_count int
		declare @bathroom_count int
		declare @zip_code int
		declare @city varchar(40)
		declare @us_state varchar(2)
		declare @sqft int
		declare @house_year int
		select * into #ttable from inserted
		begin
			while(exists(select @house_price from #ttable))
				begin
					select top 1 @house_price = house_price from #ttable
					select top 1 @bedroom_count = bedroom_count from #ttable
					select top 1 @bathroom_count = bathroom_count from #ttable
					select top 1 @zip_code = zip_code from #ttable
					select top 1 @city = city from #ttable
					select top 1 @us_state = us_state from #ttable
					select top 1 @sqft = sqft from #ttable
					select top 1 @house_year = house_year from #ttable
					declare @i varchar(500)
					set @i=(SELECT CAST(RAND() * 1000000 AS INT) AS [RandomNumber])
					while exists (select * from House_Identifier where house_id=@i)
					begin
					set @i=(SELECT CAST(RAND() * 1000000 AS INT) AS [RandomNumber])
					end
					insert into House_Identifier values(@i)	
					insert into House_Price values(@i, @house_price)
					insert into Bedroom_Count values(@i,@bedroom_count)
					insert into Bathroom_Count values(@i,@bathroom_count)
					insert into zip_code values(@i,@zip_code)
					insert into city values(@i,@city)
					insert into us_state values(@i,@us_state)
					insert into house_sqft values(@i,@sqft)
					insert into year_built values(@i,@house_year)

					delete from #ttable where house_price = @house_price
				end
		end
	end
