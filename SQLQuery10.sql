-- Create Registration table
CREATE TABLE Registration (
  AcNo INT,
  Fame VARCHAR(15) NOT NULL,
  [Name] VARCHAR(15) NOT NULL,
  DOB DATE,
  RegDate DATE,
  CivillD INT,
  Gender CHAR(1),
  GSM VARCHAR(8),
  OpenBal INT,
  CONSTRAINT PK_Registration PRIMARY KEY (AcNo),
  CONSTRAINT CHK_Gender CHECK (Gender IN ('M', 'm', 'F', 'f')),
  CONSTRAINT UQ_GSM UNIQUE (GSM),
  CONSTRAINT CHK_OpenBal CHECK (OpenBal >= 50)
);

alter table Withdrawals drop CONSTRAINT FK_Withdrawals_AcNo;

drop table Registration 

-- Create Deposits table
CREATE TABLE Deposits (
  DNo INT PRIMARY KEY,
  AcNo INT,
  DDate DATE DEFAULT GETDATE(),
  DAmount NUMERIC NOT NULL,
  DLocation VARCHAR(10) NOT NULL,
);

-- Create Withdrawals table
CREATE TABLE Withdrawals (
  WNo INT PRIMARY KEY,
  AcNo INT,
  WDate DATE DEFAULT GETDATE(),
  WAmount VARCHAR NOT NULL,
  WLocation VARCHAR(10) NOT NULL,
);


CREATE PROCEDURE Reg_Add1
  @AcNo INT,
  @Fame VARCHAR(15),
  @Name VARCHAR(15),
  @DOB DATE,
  @RegDate DATE,
  @CivillD INT,
  @Gender CHAR(1),
  @GSM VARCHAR(8),
  @OpenBal VARCHAR(10)
AS
BEGIN
  INSERT INTO Registration (AcNo, Fame, [Name], DOB, RegDate, CivillD, Gender, GSM, OpenBal)
  VALUES (@AcNo, @Fame, @Name, @DOB, @RegDate, @CivillD, @Gender, @GSM, @OpenBal);

 -- PRINT 'New record added to Registration table.';
END;


EXEC Reg_Add1 1001,'John','Doe','1990-01-01','2022-01-01',1234,'M','555-1234',90;
  
select * from Registration;


CREATE PROCEDURE Reg_Update_OpenGSM
  @AcNo INT,
  @newGSM VARCHAR(8),
  @newOpenBal INT
AS
BEGIN
  UPDATE Registration
  SET GSM = @newGSM,
      OpenBal = @newOpenBal
  WHERE AcNo = @AcNo;

  PRINT 'Registration record updated.';
END;

EXEC Reg_Update_OpenGSM 1001, '555-5678', 100;



CREATE PROCEDURE Reg_Del_Record
  @AcNo INT
AS
BEGIN
  DELETE FROM Registration
  WHERE AcNo = @AcNo;

  PRINT 'Registration record deleted.';
END;


EXEC Reg_Del_Record 1001;



CREATE PROCEDURE Deposit_Amt
  @DNo INT,
  @AcNo INT,
  @DDate DATE = NULL,
  @DAmount NUMERIC,
  @DLocation VARCHAR(10)
AS
BEGIN
  INSERT INTO Deposits (DNo, AcNo, DDate, DAmount, DLocation)
  VALUES (@DNo, @AcNo, COALESCE(@DDate, GETDATE()), @DAmount, @DLocation);

  PRINT 'New deposit added to Deposits table.';
END;


EXEC Deposit_Amt 1001, 1234, '2023-02-26', 500, 'ATM';


CREATE PROCEDURE Withdraw_Amt
  @WNo INT,
  @AcNo INT,
  @WDate DATE = NULL,
  @WAmount NUMERIC,
  @WLocation VARCHAR(10)
AS
BEGIN
  INSERT INTO Withdrawals (WNo, AcNo, WDate, WAmount, WLocation)
  VALUES (@WNo, @AcNo, COALESCE(@WDate, GETDATE()), @WAmount, @WLocation);

  PRINT 'New withdrawal added to Withdrawals table.';
END;


EXEC WithdrawAmt 1001, 1234, '2023-02-26', 100, 'ATM';



CREATE PROCEDURE WithdrawAmt
  @WNo INT,
  @AcNo INT,
  @WDate DATE = NULL,
  @WAmount NUMERIC(10, 2),
  @WLocation VARCHAR(10)
AS
BEGIN
  INSERT INTO Withdrawals (WNo, AcNo, WDate, WAmount, WLocation)
  VALUES (@WNo, @AcNo, COALESCE(@WDate, GETDATE()), @WAmount, @WLocation);

  PRINT 'New withdrawal added to Withdrawals table.';
END;

-------------------------------------  $###$-----------------------------------------------------------


CREATE TRIGGER Trigger_Deposit_Bal_Update
ON Deposits
AFTER INSERT
AS
BEGIN
    UPDATE Registration
    SET OpenBal = OpenBal + i.DAmount
    FROM Registration r
    INNER JOIN inserted i ON r.AcNo = i.AcNo

END;

INSERT INTO Registration (AcNo, Fame, [Name], DOB, RegDate, CivillD, Gender, GSM, OpenBal)
VALUES (1234, 'John', 'Doe', '1990-01-01', '2023-02-27', 123456789, 'M', '12345678', 50);


-- Check the Registration table before the trigger
SELECT * FROM Registration WHERE AcNo = 1234;


-- Check the Registration table after the trigger
SELECT * FROM Registration WHERE AcNo = 1234;

--------------------------------------------------------------------------------



CREATE TRIGGER Trigger_Withdrawals_Bal_Update
ON Withdrawals
AFTER INSERT
AS
BEGIN
    -- Get the AcNo and WAmount values for the newly inserted row
    DECLARE @AcNo INT, @WAmount NUMERIC(10, 2)
    SELECT @AcNo = AcNo, @WAmount = CONVERT(NUMERIC(10, 2), WAmount) FROM inserted

    -- Perform OpenBal check to ensure that WAmount is less than or equal to OpenBal
    DECLARE @OpenBal NUMERIC(10, 2)
    SELECT @OpenBal = OpenBal FROM Registration WHERE AcNo = @AcNo
    IF @WAmount > @OpenBal
    BEGIN
        RAISERROR ('Withdrawal amount cannot be greater than available balance', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END

    -- Update the OpenBal column in the Registration table by subtracting the withdrawn amount
    UPDATE Registration
    SET OpenBal = OpenBal - @WAmount
    WHERE AcNo = @AcNo
END;
