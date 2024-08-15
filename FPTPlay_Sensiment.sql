--create database FPT_Sensiment
--truncate table FPTPlay_Sentiment
create table FPTPlay_Sentiment(user_id Nvarchar(50), likes Nvarchar(30), user_email Nvarchar(200), comment_on Nvarchar(100), ip Nvarchar(100),
 user_fullname Nvarchar(200), publish_status Nvarchar(30), content Nvarchar(1000), reviewer Nvarchar(100), review_status Nvarchar(30), 
 device Nvarchar(100), comment_status Nvarchar(30), province Nvarchar(100), date_time Nvarchar(100), accented_content Nvarchar(1000),
 sentiment Nvarchar(30))
 use Sentiment_Analysis
 select user_id, user_email, user_fullname, province, date_time, comment_on, content, accented_content,sentiment, 
 publish_status, comment_status, likes, device  from FPTPlay_Sentiment
-- -- Step 1: Set to single user mode
--ALTER DATABASE [FPT_Sensiment] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

---- Step 2: Rename the database
--ALTER DATABASE [FPT_Sensiment] MODIFY NAME = [Sentiment_Analysis];

---- Step 3: Set back to multi-user mode
--ALTER DATABASE [Sentiment_Analysis] SET MULTI_USER;
