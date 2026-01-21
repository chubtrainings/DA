--   6-1-2026 
--===========

-- Database Objects:
    -- Space Demanding Objects
    -- Non-Space Demanding Objects

--  Demanding Objects
    -- Whatever we create will occupy space.
    -- We can check the size of the segments
    -- Tables  
        -- Basic storage unit in Database. Occupies space in terms of blocks.
        -- Extent -bunch of side by side blocks. 8 blocks is an extent.
        -- each block size is 8kb. 
        -- One extent size is 64kb(8*8)
    -- Indexes
    -- Sequences
    

-- Non-Space Demanding Objects
    -- Views
    -- Synonyms
    -- Procedures
    -- Functions
    -- Packages

-- How to check the size of the Schema/user
    -- The size of all segments/objects is the size of the Schema.
    
    SELECT SUM(BYTES)/1024/1024 "SIZE IN MB"
    FROM USER_SEGMENTS;
    
    
    SELECT SEGMENT_NAME, SUM(BYTES)/1024 "SIZE IN KB"
    FROM USER_SEGMENTS
    GROUP BY SEGMENT_NAME;
    
    CREATE TABLE DEMO AS SELECT * FROM EMP;
    SELECT COUNT(*) FROM DEMO;
    
    DELETE FROM DEMO; -- SPACE WILL NOT BE RECLAIMED. AS WELL AS DATA WILL BE DELETED
    
    TRUNCATE TABLE DEMO;   -- SPACE WILL BE RECLAIMED.AS WELL AS DATA WILL BE DELETED
    
    INSERT INTO DEMO SELECT * FROM DEMO;
    COMMIT;
    
    DESC USER_SEGMENTS;
    
    SELECT USER FROM DUAL;

