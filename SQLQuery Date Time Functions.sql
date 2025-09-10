
--Date Time Functions 

 
select getdate()

select datename(year, getdate())

select datename(month, getdate())

select datename(day, getdate())

select datename(DAYOFYEAR, getdate())

select datename(WEEKDAY, getdate())

select datename(MINUTE, getdate())

select datename(second, getdate())

select datename(MILLISECOND, getdate())

select datename(NANOSECOND, getdate())

select concat(datename(year, getdate()),'-', datename(month, getdate()))

select concat(datename(year, getdate()),'-', datename(month, getdate()), '-', datename(day, getdate()))

select concat(datename(year, getdate()),'-', datename(month, getdate()), '-', datename(day, getdate()), ' - ',
datename(WEEKDAY, getdate()))




