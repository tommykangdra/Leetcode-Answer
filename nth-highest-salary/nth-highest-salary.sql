CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      WITH Temp AS (
          SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) as position 
          FROM Employee
      )
      
      SELECT DISTINCT Salary AS getNthHighestSalary 
      FROM Temp
      WHERE position=N
  );
END