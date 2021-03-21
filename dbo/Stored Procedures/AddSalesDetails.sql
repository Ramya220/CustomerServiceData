CREATE PROCEDURE AddSalesDetails
@ReferenceNumber int ,
@CustomerName varchar(100),
@DocDate varchar(100),
@PostingDate varchar(100),
@Address varchar(100),
@DocTotal int,
@State varchar(100),
@Zipcode varchar(100),
@Street varchar(100),
@Country varchar(100),
@price int,
@SalesPerson varchar(100),
@ItemNo int ,
@Quantityordered int,
@linetotal decimal,
@Result bit out
AS
BEGIN
if exists (select 'r' from Customer_Master where Customername=@CustomerName)
BEGIN
if exists(select 'r' from ItemMaster where itemcode=@ItemNo)
BEGIN

INSERT INTO [dbo].[SalesOrderMaster]
           ([ReferenceNumber]
           ,[CustomerName]
           ,[DocDate]
           ,[PostingDate]
           ,[Address]
           ,[DocTotal]
           ,[State]
           ,[Zipcode]
           ,[Street]
           ,[Country]
           ,[SalesPerson])
     VALUES
           (@ReferenceNumber,@CustomerName,@DocDate,@PostingDate,@Address,@DocTotal,@State,@Zipcode,@Street,@Country,@SalesPerson)
INSERT INTO [dbo].[SalesOrderLine]
           ([ItemNo]
           ,[Quantityordered]
           ,[Price]
           ,[linetotal])
     VALUES
           (@ItemNo,@Quantityordered,@price,@linetotal)
Declare @remaining int
set @remaining = (select (b.Quantityonhand - a.Quantityordered) as rem from SalesOrderLine a , ItemMaster b where b.itemcode=@ItemNo)
update ItemMaster set Quantityonhand= @remaining where itemcode=@ItemNo
set @Result=1
END
ELSE
set @Result=0
END
ELSE
set @Result=0
END