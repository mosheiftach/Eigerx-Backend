CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    SALARY INT,
    DEPT_ID INT
);

INSERT INTO EMPLOYEE (ID, NAME, SALARY, DEPT_ID)
VALUES (1, 'Candice', 4685, 1),
       (2, 'Julia', 2559, 2),
       (3, 'Bob', 4405, 4),
       (4, 'Scarlet', 2350, 1),
       (5, 'Ileana', 1151, 4);

CREATE TABLE DEPARTMENT (
ID INT PRIMARY KEY,
NAME VARCHAR(255) NOT NULL,
LOCATION VARCHAR(255) NOT NULL
);

INSERT INTO DEPARTMENT (ID, NAME, LOCATION)
VALUES (1, 'Executive', 'Sydney'),
       (2, 'Production', 'Sydney'),
       (3, 'Resources', 'Cape Town'),
       (4, 'Technical', 'Texas'),
       (5, 'Management', 'Paris');
       
SELECT d.NAME AS department, COUNT(e.ID) AS employee_count
FROM DEPARTMENT d
LEFT JOIN EMPLOYEE e ON d.ID = e.DEPT_ID
GROUP BY d.NAME
ORDER BY employee_count DESC, d.NAME;