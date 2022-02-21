Use [Creatio 7.18.5]

select Contact.Name, Account.Name,  Contact.JobId 
from Contact
join Account on Contact.AccountId = Account.Id
join Opportunity on Opportunity.AccountId = Account.Id
Where Opportunity.StageId != '60D5310C-5BE6-DF11-971B-001D60E938C6'