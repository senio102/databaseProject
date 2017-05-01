create proc  new_house
as
set nocount, xact_abort on
begin try
	declare @house_price int
	declare @bedroom_count int
	declare @bathroom_count int
	declare @zip_code int
	declare @city varchar
	declare @state varchar
	declare @sqft int
	declare @house_year int
	begin tran
		insert House_Identifier default values;
		set @house_id = scope_identity();
		insert into House_Price values(@house_id, @house_price)
		insert into Bedroom_Count values (@house_id, @bedroom_count)
		insert into Bathroom_Count values (@house_id, @bathroom_count)
		insert into zip_code values (@house_id, @zip_code)
		insert into city values (@house_id, @city)
		insert into us_state values (@house_id, @state)
		insert into house_sqft values (@house_id, @sqft)
		insert into year_built values (@house_id, @house_year)
		END TRY
BEGIN CATCH
   IF XACT_STATE() <> 0 ROLLBACK TRAN
END CATCH