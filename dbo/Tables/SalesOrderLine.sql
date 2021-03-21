CREATE TABLE [dbo].[SalesOrderLine] (
    [ItemNo]          INT          NOT NULL,
    [Quantityordered] INT          NULL,
    [Price]           DECIMAL (18) NULL,
    [linetotal]       DECIMAL (18) NULL,
    FOREIGN KEY ([ItemNo]) REFERENCES [dbo].[ItemMaster] ([itemcode])
);

