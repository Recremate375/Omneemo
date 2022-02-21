Use [Creatio 7.18.5]

select * from Activity

update Activity
set StartDate = DATEADD(day, -1, GETDATE()), DueDate = GETDATE()
Where StatusId != '4BDBB88F-58E6-DF11-971B-001D60E938C6'

select * from Activity