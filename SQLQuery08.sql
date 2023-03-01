
---Q1.

CREATE PROCEDURE usp_DisplayEvenNumbersBelow100
AS
BEGIN
  SELECT number FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS number
    FROM sys.objects
  ) AS numbers
  WHERE number % 2 = 0 AND number < 100;
END

EXECUTE usp_DisplayEvenNumbersBelow100;



---Q2.
CREATE PROCEDURE usp_DisplayOddNumbersBelow100
AS
BEGIN
  SELECT number FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS number
    FROM sys.objects
  ) AS numbers
  WHERE number % 2 = 1 AND number < 100;
END

EXECUTE usp_DisplayOddNumbersBelow100


---Q3.
CREATE PROCEDURE usp_CheckIfNumberIsPrime
  @num INT
AS
BEGIN
  DECLARE @isPrime BIT = 1;
 
  IF @num <= 1
    SET @isPrime = 0;
  ELSE
  BEGIN
    DECLARE @i INT = 2;
 
    WHILE @i <= @num / 2
    BEGIN
      IF @num % @i = 0
      BEGIN
        SET @isPrime = 0;
        BREAK;
      END
      SET @i = @i + 1;
    END
  END
 
  IF @isPrime = 1
    PRINT 'The number ' + CAST(@num AS VARCHAR(10)) + ' is prime.';
  ELSE
    PRINT 'The number ' + CAST(@num AS VARCHAR(10)) + ' is not prime.';
END

EXEC usp_CheckIfNumberIsPrime;

---Q4.
CREATE PROCEDURE usp_CalculateSumOf10Numbers
AS
BEGIN
  DECLARE @sum INT = 0;
  DECLARE @counter INT = 1;
  
  WHILE @counter <= 10
  BEGIN
    SET @sum = @sum + @counter;
    SET @counter = @counter + 1;
  END
  
  PRINT 'The sum of the first 10 numbers is ' + CAST(@sum AS VARCHAR(10));
END

EXEC usp_CalculateSumOf10Numbers;

---Q5.
CREATE PROCEDURE usp_DisplayMultiples
  @maxNum INT
AS
BEGIN
  DECLARE @i INT = 1;
  
  WHILE @i <= @maxNum
  BEGIN
    PRINT 'Multiples of ' + CAST(@i AS VARCHAR(10)) + ':';
    
    DECLARE @j INT = 1;
    WHILE @j <= 20
    BEGIN
      PRINT CAST(@i * @j AS VARCHAR(10));
      SET @j = @j + 1;
    END
    
    SET @i = @i + 1;
    PRINT '---------------------------';
  END
END

EXEC usp_DisplayMultiples @maxNum = 5;

---Q6.
CREATE PROCEDURE usp_DisplayReverseOfNumber
  @num INT
AS
BEGIN
  DECLARE @reverse INT = 0;
  DECLARE @remainder INT;
  DECLARE @originalNum INT = @num;

  WHILE @num > 0
  BEGIN
    SET @remainder = @num % 10;
    SET @reverse = @reverse * 10 + @remainder;
    SET @num = @num / 10;
  END

  PRINT 'The reverse of ' + CAST(@originalNum AS VARCHAR(10)) + ' is ' + CAST(@reverse AS VARCHAR(10));
END


EXEC usp_DisplayReverseOfNumber @num = 12345;

---Q7
CREATE PROCEDURE usp_DisplaySumOfDigits
  @n INT
AS
BEGIN
  DECLARE @i INT = 0;
  DECLARE @j INT;

  WHILE @n > 0
  BEGIN
    SET @j = @n % 10;
    SET @i = @i + @j;
    SET @n = @n / 10;
  END

  PRINT 'The sum of the digits of ' + CAST(@originalNum AS VARCHAR(10)) + ' is ' + CAST(@i AS VARCHAR(10));
END

EXEC usp_DisplaySumOfDigits @n = 12345;

