create trigger house_all_insert_trig
	on House_All
	instead of insert
	as
	begin
		declare @house_price int(9)
		declare @bedroom_count int(2)
		declare @bathroom_count int(2)
		declare @zip_code int(5)
		declare @city varchar(40)
		declare @state varchar(2)
		declare @sqft int(5)
		declare @house_year int(4)
		select * into #ttable from inserted
		begin
			while(exists(select account_email from #ttable))
				begin
					select top 1 @house_price = house_price from #ttable
					select top 1 @bedroom_count = bedroom_count from #ttable
					select top 1 @bathroom_count = bathroom_count from #ttable
					select top 1 @zip_code = zip_code from #ttable
					select top 1 @city = city from #ttable
					select top 1 @state = state from #ttable
					select top 1 @sqft = sqft from #ttable
					select top 1 @house_year = house_year from #ttable

					insert into House_Price values(@house_price)
					insert into Bedroom_Count values (@bedroom_count)
					insert into Bathroom_Count values (@bathroom_count)
					insert into zip_code values (@zip_code)
					insert into city values (@city)
					insert into us_state values (@state)
					insert into house_sqft values (@sqft)
					insert into year_built values (@house_year)

					delete from #ttable where account_email = @account_email
				end
		end
	end
