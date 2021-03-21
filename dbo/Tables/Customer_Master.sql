CREATE TABLE [dbo].[Customer_Master] (
    [id]           INT           IDENTITY (1, 1) NOT NULL,
    [Customername] VARCHAR (100) NOT NULL,
    [Address]      VARCHAR (100) NULL,
    [street]       VARCHAR (100) NULL,
    [country]      VARCHAR (100) NULL,
    [email]        VARCHAR (100) NULL,
    [phone]        BIGINT        NULL,
    [zipcode]      BIGINT        NULL,
    PRIMARY KEY CLUSTERED ([Customername] ASC)
);

