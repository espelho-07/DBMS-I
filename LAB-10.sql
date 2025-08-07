--LAB-10--

-- Create the STUDENT_INFO table
CREATE TABLE STUDENT_INFO (
    RNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10),
    SPI DECIMAL(4,2),
    Bklog INT
);

-- Insert the given data into the table
INSERT INTO STUDENT_INFO (RNo, Name, Branch, SPI, Bklog) VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 1),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', 'EC', 4.50, 3);
