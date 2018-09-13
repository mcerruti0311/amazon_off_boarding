SELECT Id,
  Coaching_Status__c, Separation_Category__c,
  Employee_Contact__r.Department,
  Employee_Contact__r.Name,
  Employee_Contact__r.Title,
  Employee_Number__c,
  Name,
  Separation_Date__c,
  Separation_Primary_Reason__c,Format(Coaching_Issued_to_Employee__c)
FROM Employee_Interaction__c
WHERE Result__c = 'Separation'
  AND Coaching_Status__c!= 'Canceled'
  AND Coaching_Issued_to_Employee__c = YESTERDAY
  AND Employee_Contact__r.Department = 'Amazon SLU'
