--Create Table Company

use IBM


CREATE TABLE Company ( CID INT , Technology VARCHAR(255), Postal INT ) 

INSERT INTO Company (CID, Technology, Postal) VALUES (1, 'Java', 234),
 (2, 'SQL', 533), (3, 'Python', 553), (4, 'Testing', 663), 
 (5, 'Automation', 937), (6, 'SQL', 583), (7, 'Azure', 456),
  (8, 'AWS', 642), (9, 'Automation', 564), (10, 'SQL', 451), 
  (11, 'Azure', 433), (12, 'AWS', 456)

  Select * from Company
