Use [Creatio 7.18.5]

select * from Document

Insert Document(TypeId, Date, OwnerId, Number)

Values('61f7a573-52e6-df11-971b-001d60e938c6', convert (date, DATEADD(DAY, 1, GETDATE())),
'410006E1-CA4E-4502-A9EC-E54D922D2C00','12345')

select * from Document
