Use [Creatio 7.18.5]

select Activity.Title,  Account.Name, Account.AccountCategoryId, 
	Account.CreatedOn, Contact.Name, Activity.StatusId, COUNT(ActivityParticipant.Id)
from Activity

	join Account on Activity.AccountId = Account.Id
	join Contact on Activity.OwnerId = Contact.Id
	join ActivityParticipant on ActivityParticipant.ActivityId = Activity.Id
	
	
Where Activity.StatusId = '4bdbb88f-58e6-df11-971b-001d60e938c6' OR Activity.StatusId = '201cfba8-58e6-df11-971b-001d60e938c6'
	OR Activity.AccountId != NULL
	