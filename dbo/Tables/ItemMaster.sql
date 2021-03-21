CREATE TABLE [dbo].[ItemMaster] (
    [itemcode]       INT           IDENTITY (1, 1) NOT NULL,
    [itemname]       VARCHAR (100) NULL,
    [QuantityonHand] INT           NULL,
    [price]          DECIMAL (18)  NULL,
    [webenabled]     BIT           NULL,
    PRIMARY KEY CLUSTERED ([itemcode] ASC)
);

