CREATE PROCEDURE Additems
@Itemname varchar (100),
@Quantity int,
@Price decimal,
@Webenabled bit,
@Result bit out
AS
BEGIN
IF EXISTS(select 'r' from ItemMaster where itemname=@Itemname)
set @Result=0
ELSE
BEGIN
INSERT INTO [dbo].[ItemMaster]
           ([itemname]
           ,[QuantityonHand]
           ,[price]
           ,[webenabled])
     VALUES
           (@Itemname,@Quantity,@Price,@Webenabled)
set @Result=1
END
END

