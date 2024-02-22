## Analyze

## Analysis
The process used to makes sense of the data collected

""" The goal of analysis is to identify trends and relationships within data so
you can accurately answer the question you're asking """

## The 4 phases of analysis
    1. Organize data
    2. Format and adjust data
    3. Get input from others
    4. Transform data

" People refer to Google data as really a lens into human curiosity "

## Sorting
When you arrange data into a meaningful order to make it easier to understand, 
analyze, and visualize

## Filtering
Showing only the data that meets a specific criteria while hiding the rest

## Sort Sheet
All of data in a spreadsheet is sorted by the ranking of a specific sorted column - data across rows is kept together

## Sort range
Nothing else on the spreadsheet is rearranged besides the specified cells in a column

## =SORT(range,2,true)

## Customized sort order
When you sort data in a spreadsheet using multiple conditions

## Order by for order in sql

## Incorrectly formatedd data can:
    - Lead to mistakes
    - Take time to fix
    - Affect stakeholder's decision-making

## = CONVERT(RANGE, "F","C")

## Allows you to control what can and can't be entered in your worksheet

## Data validattion
    - Add dropdown list with predetermined options
    - Custom checkboxex
    - Protect structured data and formulas

## Conditional formatting
A spreadsheet tool that changes how celss apprear when values meet specific conditions

## =CONCATENATE
A fuction that joins together two or more text strings

## Openness (or open data)
Free access, usage and sahring of data

## CONCAT(field1,"-", field2)
    - juan-perez

## =LEN(text)
    - Returns the length of a string

## =LEFT(string,[number_of_character])
    - Returns a substring from the begining of a specified string

## =RIGHT(string, [number_of_character])
    - Returns a substring from the end of a specified string

## =FIND(search_for,text_to_search,[starting_at])
    - Returns the position at which a string is first found within text

## Add 1 minus the start time to the formula that's being used for the multi-day trip; then try to apply to another tripe happpened in the same day

" the analyze stage is where you become the expert about your dataset "

## Best practices for searching online
    - Thinking skills
    - Data analytics terms
    - Basic knowledge of tools
## Mental model
    - Your thought process and the way you approach a problem

## R
    - A programming language frequently used for statistical analysis, visualization and other data analysis, visualization, and other data analysis

## Aggregation
    - Collecting or gathering many separate pieces into a whole

## Data aggregation
    - The process of gathering data from multiple sources in order to combine it into a single summarized collection

    - Puzzle pieces = data
    - Organization = aggregation
    - Pile of pieces = summary
    - Putting the pieces together = gaining insights

 ## Data can also be aggregated over a given time period to provide statistics such as:
    - Averages
    - Minumums
    - Maximums
    - Sums

## Functions help make data aggregation possible

## Subquery
A query within another query

## =VLOOKUP (Vertical Lookup)
A fucntion that searches for a certain value in a column to return a corresponding piece of information

## =VALUE
A function that converts a text string that represents a number to a numerical value

## =VALUE(field)
    - VALUE("9") = 9

## =TRIM(text)
    - Removes leading and trailing spaces in a specified string.

## Remove duplicates
    - A tool that automatically search for and eliminates duplicate entries from a spreadsheet

## Recognize the limitations of VLOOKUP and fix some of the most common problems

## Troubleshooting questions
    - How should I prioritize these issues?
    - In a single sentences, what's the issue I'm facing?
    - What resources can help me solve the problem?
    - How can I stop this problem from happening in the future?

## VLOOKUP only returns the first match it finds

## VLOOKUP(search_key, range, index, [is_soreted])
    - Vertical lookup. Searches down the first column of a range for a key
    and returns the value of a specified cel in the row found.

## Absolute reference
    - A reference that is locked so that rows and columns won't change when copied

## MATCH
    - A function used to locate the position of a specific lookup value

## TRUE tells VLOOKUP to look for approximate matches
## FALSE tells VLOOKUP to look for exact matches

## =VLOOKUP(A2,'Sheet 2'!A:B,2, TRUE)
## =VLOOKUP(A2,'Sheet 2'!A:B,2, FALSE)

## How to user JOIN in SQL to aggregate data in database

## JOIN
    - A SQL clause that is used to combine rows from two or more table based on a related column

## Common JOIN's
    - INNER
    - LEFT
    - RIGHT
    - OUTER

## Primary keys reference columns in which each value is unique
## Foreign keys are primary keys in other tables

## =COUNT in spreadsheets
    - Can be used to count the total number of numerical values within a specific range in spreadsheets

## COUNT in SQL
    - A query that returns the number of rows in a specified range

## COUNT DISTINCT
    - A query that only returns the distinct values in a specified range

""" You'll use COUNT and COUNT DISTINCT any time you want to answer questions about "How many" """

## Aliasing
    - When you temporarily name a table or columns in your query to make it easier to read and write

## Subquery
    - A SQL query that is nested inside a larger query


## HAVING
    - Allows you to add a filter to your query instead of the underlying table that can only be used with aggregate functions

## CASE
    - Returns records with your conditions by allowing you to include if/then statements in your query

## Caluses like HAVING and CASE, paired with subqueries, will help you build more and more complex query

- Formulas for basic calculations
- Conditional formulas that use the IF function
- The SUMPRODUCT function
- Pivot tables to organize calculations
- Queries and calculations in SQL
- Temporary Tables in SQL

""" We'll show you how you can use formulas in a spreadsheet to complete some of the more basic calculations """

## =SUM(range)
## =AVERAGE(range)
## =MIN(range)
## =MAX(range)

## =COUNTIF(range,criterion)
    -Returns a conditional count across a range
    - =COUNTIF(B1:B2,"=1")
## =SUMIF(range,criterion, [sum_range])
    -Returns aconditonal sum across a range
    - =SUMIF(B1:B2,"=1",C1:C2)

## Summary table
A table used to summarize statistacal information about data

## SUMPRODUCT
A function that multiplies arrays and returns the sum of those products
## =sumproduct(array1,[array2])
## Array
    -A collection of values in cells

## Profit margin
A percentage that indicates how many cents of profit has been generated for each
dollar of sale

## Pivot tables let you view in multiple ways to find insghts and trends

## Analysis steps
    - Find out how much revenue was generated each year
    - Build a pivot table to show the revenue per year
    - Find the average revenue per movie
    - Check our findings for some possible trends

## Calculated field
A new field within a pivot table that carries out certain calculations
based on the values of other fields

## Operator
A symbol that names the type of operation or calculation to be performed in a formula

## in SQL
    -> + addition
    -> - subtraction
    -> * multiplication
    -> / division

## Modulo
An operator (%) that returns the remainder when one number is divied by another

## SQL functions 
    - SUM
    - AVG

## Underscores
Lines used to underline words and connect text characters

## GROUP BY
- A command that groups rows that have the same values from a table into summary rows

## ORDER BY

## SUM
## COUNT

## EXTRACT
- Lets us pull one part of a given date to use
    - EXTRACT(YEAR FROM COLUMN)


## TEMPORARY TABLE
    - A database table that is created and exists temporarily on a database server

## WITH
    - The WITH clause is a type of temporary table that you can query multiple times

## WITH cte_name (col1, col2, ...) AS (
    -- CTE query
    SELECT ...
## )
-- Main query using the CTE
SELECT ...
FROM cte_name;

## How to create temporary talbes:
    - WITH clauses
    - SELECT INTO statements
    - CREATE TABLE statements
    - CREATE TEMP TABLE statements




