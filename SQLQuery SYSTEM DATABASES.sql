--SYSTEM DATABASES


--Master DB: It is the most important database. All the user defined database key information is stored in master database
-- In case our master database gets corrupt we will not be able to use ssms.



--Model DB: We we create any user defined database it is not blank lot of system objects like
--system function, system views, system stored procedures etc are already created. These are 
--created because of model database. Model database acts like a template for any other database.


--TempDb: All the temp files such as temp tables etc are stored in tempdb.


--MSDB: All the information related to sql server agent are stored in this database.