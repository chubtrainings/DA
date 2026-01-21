--          1/5/2026 - Notes
--           ==================

-- SET OPERATORS:
-- -- USED to combine results of two or more SELECT Statements
-- They operate on rows not on columns
--  4 Types
     --- UNION
     --- UNION ALL
     --- MINUS
     -- INTERSECT
     
     
--       Rules:
--       -----

        -- each set of results should have same columns
        -- ORDER BY should appear at the end of the sql query only once.
        
-- 1.  UNION
    -- Combining the results of SELECT statements is UNION
    -- It also removes the duplicates.
    
        -- Ex: COMBINING THE RESULTS OF TWO SELECT STATEMENTS AND REMOVES THE DUPLICATES.
            SELECT ENAME, EMPNO 
            FROM EMP
            UNION
            SELECT ENAME, EMPNO 
            FROM EMP;
            
--2.  UNION ALL
        -- Combines the results without removing the duplicates
        
        -- Ex:
            SELECT ENAME, EMPNO 
            FROM EMP
            UNION ALL
            SELECT ENAME, EMPNO 
            FROM EMP;
            

    SELECT * FROM EMP
    UNION 
    SELECT * FROM EMP;      
    
    SELECT * FROM EMP
    UNION ALL
    SELECT * FROM EMP;
    
    SELECT * FROM EMP
    UNION 
    SELECT * FROM EMP
    UNION
    SELECT * FROM EMP;
    
    SELECT * FROM EMP
    UNION ALL
    SELECT * FROM EMP
    UNION ALL
    SELECT * FROM EMP;
    
    SELECT * FROM EMP
    UNION
    SELECT * FROM EMP
    UNION ALL
    SELECT * FROM EMP;


--3. INTERSECT:

    -- It will give matching records from both the select statements.
    
        SELECT * FROM EMP 
        INTERSECT
        SELECT * FROM EMP;

--3. MINUS:

    -- It will return the rows in the first query not in the second.
    -- RETRIEVES RECORDS FROM LEFT TABLE AND IGNORES THE RIGHT SELECT STATEMENT.
    
    SELECT * FROM EMP
    MINUS 
    SELECT * FROM EMP;
    
-- 4. ORDER BY

    -- Asc  - Default (A-Z,0-9,top-bottom)
    -- Desc  -- (Z-A,9-0,BOTTOM-TO-TOP)
    -- ORDER BY IS ALLOWED ONLY AT THE END OF THE SQL QUERY.
    -- We should mention the column name after the order by clause.
    
--  SYNTAX:
    -- Ex: ORDER BY (ASC|DESC)
    
    SELECT * FROM EMP
    ORDER BY EMPNO;
    
    SELECT * FROM EMP
    ORDER BY ENAME;
    
    SELECT * FROM EMP
    ORDER BY HIREDATE;
    
    SELECT * FROM EMP
    ORDER BY EMPNO DESC;
    
    SELECT * FROM EMP
    ORDER BY ENAME DESC;
    
    SELECT * FROM EMP
    ORDER BY HIREDATE DESC;
    
    
    SELECT * FROM EMP
    ORDER BY 1 DESC;
    
    SELECT * FROM EMP
    ORDER BY 2 DESC;
    
    SELECT * FROM EMP
    ORDER BY 5 DESC;
    
    SELECT * FROM EMP
    ORDER BY 10 DESC;
    
    
