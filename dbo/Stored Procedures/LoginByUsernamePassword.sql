CREATE PROCEDURE [dbo].[LoginByUsernamePassword]   
    @username varchar(50),  
    @password varchar(50)  
AS  
BEGIN  
    SELECT id, username, password  
    FROM Login  
    WHERE username = @username  
    AND password = @password  
END  