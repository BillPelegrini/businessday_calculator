# Business Days Calculator (SQL Server)

## Description
This project provides a solution for calculating the next business day, taking holidays into account. The implementation is done in SQL Server and includes a holiday table, a function to calculate the next business day, and usage examples.

## Contents

* [Project Structure](https://github.com/BillPelegrini/businessday_calculator/tree/main#project-structure)
* [Setup](https://github.com/BillPelegrini/businessday_calculator/tree/main#setup)
* [Usage](https://github.com/BillPelegrini/businessday_calculator/tree/main#usage)
* [Examples](https://github.com/BillPelegrini/businessday_calculator/tree/main#examples)
* [License](https://github.com/BillPelegrini/businessday_calculator/tree/main#license)

## Project Structure
**scripts.sql:** Contains SQL scripts to create the holiday table, the NextBusinessDay function, and usage examples.

## Setup
1. Execute the scripts.sql script in your SQL Server database to create the holiday table and the NextBusinessDay function.
```sql
-- Example setup
USE YourDatabase;
GO

-- Execute the scripts.sql
```

## Usage
* **NextBusinessDay:** The function takes an initial date and a number of business days to be added, considering holidays and ignoring weekends.
```sql
DECLARE @InitialDate DATE = '2023-11-30';
DECLARE @BusinessDays INT = 10;

SELECT dbo.NextBusinessDay(@InitialDate, @BusinessDays) AS NextBusinessDay;
```

## Examples
* Usage examples of the **`NextBusinessDay`** function are available in the **`scripts.sql`** file.

## License
This project is licensed under the MIT License.

