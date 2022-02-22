Use [Creatio 7.18.5]

Delete
from dbo.Opportunity
from dbo.Opportunity
JOIN Contact
On Opportunity.OwnerId = Contact.Id 
FULL JOIN OpportunityProductInterest
On OpportunityProductInterest.OpportunityId = Opportunity.Id 
FULL JOIN Product
On OpportunityProductInterest.ProductId = Product.Id 
FULL JOIN OpportunityStage
On OpportunityStage.Id = Opportunity.StageId 
Where ("End" = 1 AND Contact.CreatedOn < '2019-01-01') OR (ProductId IS NULL AND Contact.Name = 'Supervisor')