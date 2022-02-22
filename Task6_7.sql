USE [Creatio 7.18.5]

select * from Account
join AccountAddress on AccountAddress.AccountId = Account.Id
Insert AccountAddress (AccountId, CountryId, CityId, AddressTypeId, CreatedById)
Values('c8af0027-768b-481d-8d98-14c9cfafba88', '6525EC6F-8650-45F8-915A-A61B6F3BF09F','B7A7731C-31C5-48A6-B056-B55CFC78E01D',
'780bf68c-4b6e-df11-b988-001d60e938c6', 'c8af0027-768b-481d-8d98-14c9cfafba88')

