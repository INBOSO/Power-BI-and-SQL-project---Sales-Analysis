--Cleansed DIM_DateTable--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS [Date], 
      --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS [Day], 
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
  [WeekNumberOfYear] AS [WeekNr], 
  [EnglishMonthName] AS [Month], 
  LEFT([EnglishMonthName], 3) AS [MonthShort], 
      --,[SpanishMonthName]
      --,[FrenchMonthName]
  [MonthNumberOfYear] AS [MonthNr], 
  [CalendarQuarter] AS [Quarter], 
  [CalendarYear] AS [Year] 
     --,[CalendarSemester]
     --,[FiscalQuarter]
     --,[FiscalYear]
     --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  LEFT (DateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only bring two years of date from extraction.