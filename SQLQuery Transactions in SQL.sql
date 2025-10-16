--Transactions in SQL

use ibm

select * from employee

Begin try
begin transaction
update employee set age = 40 where name = 'Amit'
update employee set city = 'Surat' where name = 'Riya'
update employee set department = 'HR' where name = 'Shreya'
update employee set salary = 70000/0 where name = 'Raj'
print 'transaction commited'
end
try begin catch
rollback transaction
print 'Transaction rollback'
end catch

select * from employee

Begin try
begin transaction
update employee set age = 40 where name = 'Amit'
update employee set city = 'Surat' where name = 'Riya'
update employee set department = 'HR' where name = 'Shreya'
update employee set salary = 70000 where name = 'Raj'
print 'transaction commited'
end
try begin catch
rollback transaction
print 'Transaction rollback'
end catch

select * from employee

Begin try
begin transaction
update employee set age = 40 where name = 'Tanuj'
update employee set city = 'Surat' where name = 'Ashish'
update employee set department = 'HR' where name = 'Upasana'
update employee set salary = 80000/0 where name = 'Ankita'
print 'transaction commited'
end
try begin catch
rollback transaction
print 'Transaction rollback'
end catch

select * from employee

Begin try
begin transaction
update employee set age = 40 where name = 'Tanuj'
update employee set city = 'Surat' where name = 'Ashish'
update employee set department = 'HR' where name = 'Upasana'
update employee set salary = 80000 where name = 'Ankita'
print 'transaction commited'
end
try begin catch
rollback transaction
print 'Transaction rollback'
end catch

select * from employee