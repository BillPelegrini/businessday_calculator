CREATE TABLE Holidays (
    HolidayDate DATE PRIMARY KEY
);

INSERT INTO Holidays (HolidayDate) VALUES
    ('2023-01-01'), -- Example holiday
    ('2023-12-25');

CREATE FUNCTION dbo.NextBusinessDay(@InitialDate DATE, @BusinessDays INT)
RETURNS DATE
AS
BEGIN
    DECLARE @CalculatedDate DATE = @InitialDate;
    DECLARE @DaysCounted INT = 0;

    WHILE @DaysCounted < @BusinessDays
    BEGIN
        SET @CalculatedDate = DATEADD(DAY, 1, @CalculatedDate);

        IF DATENAME(WEEKDAY, @CalculatedDate) NOT IN ('Saturday', 'Sunday') AND @CalculatedDate NOT IN (SELECT HolidayDate FROM Holidays)
        BEGIN
            SET @DaysCounted = @DaysCounted + 1;
        END
    END

    RETURN @CalculatedDate;
END;

DECLARE @InitialDate DATE = '2023-11-30';
DECLARE @BusinessDays INT = 10;

SELECT dbo.NextBusinessDay(@InitialDate, @BusinessDays) AS NextBusinessDay;

