CREATE PROCEDURE AddCustomers
@Customername varchar (100),
@Address varchar(100),
@Street varchar(100),
@Country varchar(100),
@Email varchar(100),
@Phone varchar(100),
@Zipcode varchar(100),
@Result bit out
AS
BEGIN
IF EXISTS(select 'r' from Customer_Master where Customername=@Customername)
set @Result=0
ELSE
BEGIN
INSERT INTO [dbo].[Customer_Master]
           ([Customername]
           ,[Address]
           ,[street]
           ,[country]
           ,[email]
           ,[phone]
           ,[zipcode])
     VALUES(
           @Customername,@Address,@Street,@Country,@Email,@Phone,@Zipcode)
set @Result=1
END
END