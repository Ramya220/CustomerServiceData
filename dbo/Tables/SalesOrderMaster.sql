CREATE TABLE [dbo].[SalesOrderMaster] (
    [OrderNum]        INT           IDENTITY (1, 1) NOT NULL,
    [ReferenceNumber] INT           NULL,
    [CustomerName]    VARCHAR (100) NOT NULL,
    [DocDate]         DATETIME      NULL,
    [PostingDate]     DATETIME      NULL,
    [Address]         VARCHAR (100) NULL,
    [DocTotal]        INT           NULL,
    [State]           VARCHAR (100) NULL,
    [Zipcode]         BIGINT        NULL,
    [Street]          VARCHAR (100) NULL,
    [Country]         VARCHAR (100) NULL,
    [SalesPerson]     VARCHAR (100) NULL,
    FOREIGN KEY ([CustomerName]) REFERENCES [dbo].[Customer_Master] ([Customername]),
    FOREIGN KEY ([ReferenceNumber]) REFERENCES [dbo].[ItemMaster] ([itemcode])
);

