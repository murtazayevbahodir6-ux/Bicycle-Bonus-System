

CREATE OR ALTER PROCEDURE LoadStaffBonusMart    
BEGIN
    
    TRUNCATE TABLE StaffBonusMart;      

 
INSERT INTO StaffBonusMart (Year, Month, StaffName, BonusAmount)
SELECT 
YEAR(GETDATE()) AS Year,            
MONTH(GETDATE()) AS Month,           
s.Name AS StaffName,

 
CAST(
  (
 
     (SUM(ISNULL(rb.TotalPrice, 0)) * 0.30) +      
     (ISNULL(SUM(sb.WorkPrice), 0) * 0.80)        
  ) *
  CASE 
      WHEN DATEDIFF(YEAR, s.HireDate, GETDATE()) < 1 THEN 0.05    
      WHEN DATEDIFF(YEAR, s.HireDate, GETDATE()) < 2 THEN 0.10   
      ELSE  0.15            
  END  AS DECIMAL(10,2)) AS BonusAmount

  FROM Staff s
  LEFT JOIN RentBook rb 
  ON s.Id = rb.StaffId
  LEFT JOIN ServiceBook sb 
  ON s.Id = sb.StaffId
  GROUP BY s.Name, s.HireDate;
END;
