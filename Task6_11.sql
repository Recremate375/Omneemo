Use [Creatio 7.18.5]

Select Account.Name, COUNT(Activity.Title) AS Активность,"End", Opportunity.Title, getdate(), Opportunity.DueDate AS "Дата закрытия", DATEDIFF(day, Opportunity.DueDate, getdate()) AS Разница
from Account
JOIN Activity
ON Activity.AccountId = Account.Id
JOIN Opportunity
ON Opportunity.AccountId = Account.Id
JOIN OpportunityStage
On OpportunityStage.Id = Opportunity.StageId 
WHERE Opportunity.DueDate > DATEADD(day, -90, Getdate()) AND "END" = 1 
GROUP BY Account.Name, "End", Opportunity.Title, Opportunity.DueDate
HAVING COUNT (*) > 2