CREATE PROCEDURE DeleteItems
@Itemno int,
@Result bit out
AS
BEGIN
IF NOT EXISTS(select 'r' from ItemMaster where itemcode=@Itemno)
set @Result=0
ELSE
BEGIN
DELETE from ItemMaster where itemcode=@Itemno
set @Result=1
END
END