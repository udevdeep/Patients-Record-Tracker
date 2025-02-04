use patientRecordTracker;
create table Personal_Details (
ABHA_Number int primary key,
Patient_ID int not null unique,
First_Name varchar(255),
Last_name varchar(255),
Date_of_birth date,
Sex varchar(1),
Nationality varchar(255),
Marital_Status varchar(255),
Phone_number int(10),
Email varchar(255),
Address varchar(255),
Emergency_contact_name varchar(255),
Emergency_Contact_Number int,
Date_registered date
);

create table Medical_Details (
Patient_ID int,
Blood_Type varchar(10),
Height int,
Weight int,
Allergies varchar(500),
Medical_Conditions varchar(500),
Family_History varchar(500),
Medical_History varchar(500),
Past_surgeries varchar(500),
Risk_factors varchar(500),
Remarks varchar(500),
foreign key (Patient_ID) references Personal_Details(Patient_ID)
);

create table Diagnosis (
Case_ID int primary key,
Patient_ID int,
Hospital varchar(255),
Emergency varchar(255),
DoctorName_and_ID varchar(255),
Complaints varchar(500),
Diagnosis varchar(500),
Labs blob,
Reports blob,
Prescription blob,
Recommendations varchar(500),
Notes varchar(500),
Admission varchar(255),
Date_Consulted date,
foreign key (Patient_ID) references Personal_Details(Patient_ID)
);

-- Inserting into Personal_Details table
INSERT INTO Personal_Details (ABHA_Number, Patient_ID, First_Name, Last_name, Date_of_birth, Sex, Nationality, Marital_Status, Phone_number, Email, Address, Emergency_contact_name, Emergency_Contact_Number, Date_registered)
VALUES
(1, 101, 'John', 'Doe', '1990-01-15', 'M', 'American', 'Single', 1234567890, 'john.doe@email.com', '123 Main St', 'Jane Doe', 9876543210, '2022-01-01'),
(2, 102, 'Alice', 'Smith', '1985-05-20', 'F', 'British', 'Married', 9876543210, 'alice.smith@email.com', '456 Oak St', 'Bob Smith', 8765432109, '2022-02-15'),
(3, 103, 'Bob', 'Johnson', '1978-11-08', 'M', 'Canadian', 'Divorced', 2345678901, 'bob.johnson@email.com', '789 Pine St', 'Mary Johnson', 7654321098, '2022-03-20');

-- Inserting into Medical_Details table
INSERT INTO Medical_Details (Patient_ID, Blood_Type, Height, Weight, Allergies, Medical_Conditions, Family_History, Medical_History, Past_surgeries, Risk_factors, Remarks)
VALUES
(101, 'O+', 175, 70, 'Pollen', 'Hypertension', 'Heart disease', 'None', 'Appendectomy', 'Smoking', 'None', 'Healthy'),
(102, 'A-', 160, 55, 'Penicillin', 'Diabetes', 'Cancer', 'Asthma', 'None', 'Obesity', 'Allergic to seafood', 'Under medication'),
(103, 'B+', 180, 80, 'Dust', 'Arthritis', 'High cholesterol', 'Depression', 'Appendectomy', 'Alcohol consumption', 'None', 'Regular check-ups');

-- Inserting into Diagnosis table
INSERT INTO Diagnosis (Case_ID, Patient_ID, Hospital, Emergency, DoctorName_and_ID, Complaints, Diagnosis, Labs, Reports, Prescription, Recommendations, Notes, Admission, Date_Consulted)
VALUES
(1, 101, 'City Hospital', 'No', 'Dr. Smith (ID: 123)', 'Fever, Headache', 'Flu', NULL, NULL, 'Antibiotics', 'Rest and hydration', 'Follow up after a week', 'No', '2022-04-05'),
(2, 102, 'General Medical Center', 'Yes', 'Dr. Johnson (ID: 456)', 'Chest pain, Shortness of breath', 'Heart Attack', 'Blood tests, ECG', 'Cardiac MRI', 'Aspirin, Beta blockers', 'Cardiac rehabilitation program', 'Strict diet and exercise', 'Yes', '2022-05-10'),
(3, 103, 'Regional Hospital', 'No', 'Dr. Anderson (ID: 789)', 'Joint pain, Swelling', 'Arthritis', 'X-rays, Blood tests', 'Rheumatology report', 'Pain relievers, Physical therapy', 'Regular exercise', 'Avoid excessive stress on joints', 'No', '2022-06-15');

-- Inserting into Personal_Details table
INSERT INTO Personal_Details (ABHA_Number, Patient_ID, First_Name, Last_name, Date_of_birth, Sex, Nationality, Marital_Status, Phone_number, Email, Address, Emergency_contact_name, Emergency_Contact_Number, Date_registered)
VALUES
(4, 104, 'Aarav', 'Kumar', '1995-07-22', 'F', 'Indian', 'Single', 345689012, 'aarav.kumar@email.com', '567 Maple St', 'Michael Davis', 654321087, '2022-04-10'),
(5, 105, 'Aditi', 'Singh', '1982-03-18', 'M', 'Indian', 'Married', 456780123, 'aditi.singh@email.com', '789 Pine St', 'Sarah Taylor', 543210976, '2022-05-15'),
(6, 106, 'Aishwarya', 'Sharma', '1976-09-05', 'F', 'Indian', 'Widowed', 567901234, 'aishwarya.sharma@email.com', '890 Cedar St', 'David Miller', 431098765, '2022-06-20'),
(7, 107, 'Aarav', 'Patel', '1988-12-12', 'M', 'Indian', 'Single', 678901345, 'aarav.patel@email.com', '123 Oak St', 'Olivia Brown', 321098754, '2022-07-25'),
(8, 108, 'Ayesha', 'Joshi', '1993-05-30', 'F', 'Indian', 'Married', 790123456, 'ayesha.joshi@email.com', '456 Birch St', 'Kevin Wang', 210986543, '2022-08-30'),
(9, 109, 'Arjun', 'Gupta', '1980-02-08', 'M', 'Indian', 'Divorced', 801234567, 'arjun.gupta@email.com', '789 Cedar St', 'Mia Garcia', 109876532, '2022-09-05'),
(10, 110, 'Ananya', 'Singh', '1998-11-25', 'F', 'Indian', 'Single', 112345678, 'ananya.singh@email.com', '234 Elm St', 'James Nguyen', 987654210, '2022-10-10'),
(11, 111, 'Amit', 'Verma', '1987-06-17', 'M', 'Indian', 'Married', 123467890, 'amit.verma@email.com', '567 Pine St', 'Emily Lee', 876543109, '2022-11-15'),
(12, 112, 'Amrita', 'Kapoor', '1991-09-03', 'F', 'Indian', 'Single', 234678901, 'amrita.kapoor@email.com', '890 Oak St', 'Carlos Rodriguez', 765431098, '2022-12-20'),
(13, 113, 'Arjun', 'Sharma', '1984-04-14', 'M', 'Indian', 'Married', 345689012, 'arjun.sharma@email.com', '123 Birch St', 'Ava Smith', 654321087, '2023-01-25');


select * from personal_details;
INSERT INTO Medical_Details (Patient_ID, Blood_Type, Height, Weight, Allergies, Medical_Conditions, Family_History, Medical_History, Past_surgeries, Risk_factors, Remarks)
VALUES
(104, 'AB+', 168, 65, 'Peanuts', 'Diabetes', 'High blood pressure', 'Appendectomy', 'Smoking', 'None', 'Regular check-ups'),
(105, 'B-', 175, 80, 'Shellfish', 'Hypertension', 'Cancer', 'Gallbladder removal', 'Alcohol consumption', 'None', 'Healthy lifestyle'),
(106, 'O-', 160, 50, 'Dairy', 'Allergies', 'Arthritis', 'None', 'Tonsillectomy', 'None', 'No issues'),
(107, 'A+', 182, 85, 'Soy', 'Heart disease', 'High cholesterol', 'Knee surgery', 'Smoking', 'None', 'Regular check-ups'),
(108, 'AB-', 155, 60, 'Eggs', 'Diabetes', 'Cancer', 'Appendectomy', 'None', 'Allergic to pollen', 'Under medication'),
(109, 'B+', 170, 75, 'Fish', 'Arthritis', 'Hypertension', 'None', 'Gallbladder removal', 'Alcohol consumption', 'Healthy lifestyle'),
(110, 'O+', 178, 70, 'Nuts', 'Allergies', 'Obesity', 'Asthma', 'Tonsillectomy', 'None', 'No issues'),
(111, 'A-', 162, 55, 'Wheat', 'Asthma', 'Diabetes', 'None', 'Knee surgery', 'Smoking', 'Regular check-ups'),
(112, 'AB+', 185, 88, 'Shellfish', 'Heart disease', 'High cholesterol', 'Depression', 'Gallbladder removal', 'Alcohol consumption', 'Healthy lifestyle'),
(113, 'O-', 168, 72, 'Pollen', 'Hypertension', 'Cancer', 'None', 'Tonsillectomy', 'None', 'Under medication');

select * from medical_details;

-- Inserting into Diagnosis table with Indian names
INSERT INTO Diagnosis (Case_ID, Patient_ID, Hospital, Emergency, DoctorName_and_ID, Complaints, Diagnosis, Labs, Reports, Prescription, Recommendations, Notes, Admission, Date_Consulted)
VALUES
(4, 104, 'City Hospital', 'No', 'Dr. Sharma (ID: 2345)', 'Fever, Cough', 'Flu', NULL, NULL, 'Antibiotics', 'Rest and hydration', 'Follow up after a week', 'No', '2023-02-28'),
(5, 105, 'Regional Hospital', 'Yes', 'Dr. Patel (ID: 5678)', 'Back pain, Fatigue', 'Kidney Stones', 'Blood tests, Ultrasound', 'Radiology report', 'Pain relievers, Hydration', 'Dietary changes', 'Avoid high-oxalate foods', 'Yes', '2023-03-15'),
(6, 106, 'General Medical Center', 'No', 'Dr. Kumar (ID: 8901)', 'Headache, Dizziness', 'Migraine', 'MRI, Blood tests', 'Neurology report', 'Pain relievers, Stress management', 'Regular sleep patterns', 'Avoid triggers', 'No', '2023-04-20'),
(7, 107, 'City Hospital', 'No', 'Dr. Joshi (ID: 12345)', 'Abdominal pain, Nausea', 'Gallstones', 'Ultrasound, Blood tests', 'Gastroenterology report', 'Pain relievers, Dietary changes', 'Avoid fatty foods', 'Follow up after a month', 'No', '2023-05-25'),
(8, 108, 'Regional Hospital', 'Yes', 'Dr. Singh (ID: 6789)', 'Joint pain, Swelling', 'Rheumatoid Arthritis', 'X-rays, Blood tests', 'Rheumatology report', 'Anti-inflammatory drugs, Physical therapy', 'Regular exercise', 'Regular follow-ups', 'Yes', '2023-06-30'),
(9, 109, 'General Medical Center', 'No', 'Dr. Gupta (ID: 1011)', 'Cough, Shortness of breath', 'Bronchitis', 'Chest X-ray, Blood tests', 'Pulmonary report', 'Antibiotics, Rest', 'Hydration, Steam inhalation', 'Follow up after two weeks', 'No', '2023-07-05'),
(10, 110, 'City Hospital', 'Yes', 'Dr. Bennett (ID: 1213)', 'Fever, Chills', 'Malaria', 'Blood tests', 'Malaria parasite test', 'Antimalarial drugs', 'Complete bed rest', 'Follow up for recovery', 'Yes', '2023-08-10'),
(11, 111, 'Regional Hospital', 'No', 'Dr. Verma (ID: 1415)', 'Back pain, Fatigue', 'Herniated Disc', 'MRI, X-rays', 'Orthopedic report', 'Pain relievers, Physical therapy', 'Avoid heavy lifting', 'Follow up after a month', 'No', '2023-09-15'),
(12, 112, 'General Medical Center', 'No', 'Dr. Reddy (ID: 1617)', 'Chest pain, Shortness of breath', 'Angina', 'ECG, Blood tests', 'Cardiology report', 'Nitroglycerin, Beta blockers', 'Cardiac rehabilitation program', 'Healthy lifestyle changes', 'No', '2023-10-20'),
(13, 113, 'City Hospital', 'Yes', 'Dr. Mishra (ID: 1819)', 'Fever, Headache', 'Flu', NULL, NULL, 'Antibiotics', 'Rest and hydration', 'Follow up after a week', 'Yes', '2023-11-25');

-- Selecting data from tables
SELECT * FROM Personal_Details;
SELECT * FROM Medical_Details;
SELECT * FROM Diagnosis;

-- Constraints
ALTER TABLE Personal_Details
MODIFY Phone_number bigint(10);

-- sets
SELECT * FROM Medical_Details
WHERE Allergies LIKE '%peanuts%' OR Allergies LIKE '%shellfish%';

-- joins
SELECT pd.*, md.Medical_History
FROM Personal_Details pd
JOIN Medical_Details md ON pd.Patient_ID = md.Patient_ID;
-- Views
DROP VIEW Patient_Diagnosis;

CREATE VIEW Patient_Diagnosis AS
SELECT pd.ABHA_Number, pd.Patient_ID, pd.First_Name, pd.Last_name, pd.Date_of_birth, pd.Sex, pd.Nationality, pd.Marital_Status, pd.Phone_number, pd.Email, pd.Address, pd.Emergency_contact_name, pd.Emergency_Contact_Number, pd.Date_registered,
       d.Case_ID, d.Hospital, d.Emergency, d.DoctorName_and_ID, d.Complaints, d.Diagnosis, d.Labs, d.Reports, d.Prescription, d.Recommendations, d.Notes, d.Admission, d.Date_Consulted
FROM Personal_Details pd
JOIN Diagnosis d ON pd.Patient_ID = d.Patient_ID;
SELECT * FROM Patient_Diagnosis;

-- Trigger
DELIMITER //

DROP TRIGGER IF EXISTS update_date_registered;

CREATE TRIGGER update_date_registered 
BEFORE INSERT ON Personal_Details 
FOR EACH ROW 
BEGIN 
    SET NEW.Date_registered = CURRENT_DATE; 
END;
//
DELIMITER ;

DELETE FROM Personal_Details
WHERE Patient_ID = 114;
INSERT INTO Personal_Details (ABHA_Number, Patient_ID, First_Name, Last_name, Date_of_birth, Sex, Nationality, Marital_Status, Phone_number, Email, Address, Emergency_contact_name, Emergency_Contact_Number)
VALUES (14, 114, 'Kirubanantham', 'P', '1989-01-01', 'M', 'Indian', 'Married', 1234567890, 'test.user@email.com', '123 Test', 'Emergency Contact', 987653210);
select * from Personal_Details;
-- Cursor
USE patientRecordTracker;

-- Your table creation and data insertion queries here
DROP PROCEDURE IF EXISTS PrintPersonalDetails;

DELIMITER //

CREATE PROCEDURE PrintPersonalDetails()
BEGIN
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE patient_id_val INT;
    DECLARE first_name_val VARCHAR(255);
    DECLARE last_name_val VARCHAR(255);
    DECLARE cur CURSOR FOR SELECT Patient_ID, First_Name, Last_Name FROM Personal_Details;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    print_loop: LOOP
        FETCH cur INTO patient_id_val, first_name_val, last_name_val;
        IF done THEN
            LEAVE print_loop;
        END IF;
        SELECT CONCAT('Patient ID: ', patient_id_val, ', Name: ', first_name_val, ' ', last_name_val) AS Patient_Details;
    END LOOP;

    CLOSE cur;
END;
//

DELIMITER ;
CALL PrintPersonalDetails();

-- Normalization

CREATE TABLE Contact_Details (
    ABHA_Number INT PRIMARY KEY,
    Patient_ID INT NOT NULL UNIQUE,
    Phone_number BIGINT(10),
    Email VARCHAR(255),
    Address VARCHAR(255),
    Emergency_contact_name VARCHAR(255),
    Emergency_Contact_Number INT,
    FOREIGN KEY (Patient_ID) REFERENCES Personal_Details(Patient_ID)
);
ALTER TABLE Contact_Details
MODIFY Emergency_Contact_Number BIGINT;

Select * from Contact_Details;

CREATE TABLE Personal_info (
    ABHA_Number INT PRIMARY KEY,
    Patient_ID INT NOT NULL UNIQUE,
    First_Name VARCHAR(255),
    Last_name VARCHAR(255),
    Date_of_birth DATE,
    Sex VARCHAR(1),
    Nationality VARCHAR(255),
    Marital_Status VARCHAR(255),
    Date_registered DATE,
    FOREIGN KEY (ABHA_Number) REFERENCES Contact_Details(ABHA_Number),
    FOREIGN KEY (Patient_ID) REFERENCES Contact_Details(Patient_ID)
);

INSERT INTO Contact_Details (ABHA_Number, Patient_ID, Phone_number, Email, Address, Emergency_contact_name, Emergency_Contact_Number)
SELECT ABHA_Number, Patient_ID, Phone_number, Email, Address, Emergency_contact_name, Emergency_Contact_Number
FROM Personal_Details;

INSERT INTO Personal_info (ABHA_Number, Patient_ID, First_Name, Last_name, Date_of_birth, Sex, Nationality, Marital_Status)
SELECT ABHA_Number, Patient_ID, First_Name, Last_name, Date_of_birth, Sex, Nationality, Marital_Status
FROM Personal_Details;

Select * from Contact_Details;
Select * from Personal_info;

-- Anomaly 

-- Addressing Deletion Anomaly:
-- Ensure that related data is not lost when deleting records by using proper foreign key constraints with cascading deletes.
ALTER TABLE Diagnosis
DROP FOREIGN KEY Diagnosis_ibfk_1;

ALTER TABLE Diagnosis
ADD CONSTRAINT FK_Patient_ID
FOREIGN KEY (Patient_ID) 
REFERENCES Personal_info(Patient_ID)
ON DELETE CASCADE;

-- Update Anomaly Solution:

-- Step 1: Remove redundant information from Personal_info table.

ALTER TABLE Personal_info
DROP FOREIGN KEY personal_info_ibfk_1;

-- Then, we'll drop the columns.

ALTER TABLE Personal_info
DROP COLUMN ABHA_Number,
DROP COLUMN Date_registered;

-- Step 2: Update the data in the Contact_Details table to reflect the changes.

-- We'll update the Contact_Details table with the corresponding data from Personal_Details.

UPDATE Contact_Details cd
JOIN Personal_Details pd ON cd.Patient_ID = pd.Patient_ID
SET cd.Phone_number = pd.Phone_number,
    cd.Email = pd.Email,
    cd.Address = pd.Address,
    cd.Emergency_contact_name = pd.Emergency_contact_name,
    cd.Emergency_Contact_Number = pd.Emergency_Contact_Number;

-- Step 3: Add back the foreign key constraint.

ALTER TABLE Personal_info
ADD CONSTRAINT personal_info_ibfk_1 FOREIGN KEY (Patient_ID) REFERENCES Contact_Details(Patient_ID);

-- Now, both tables are normalized, and redundant data is removed. Any updates made to the contact details will be reflected consistently across both tables, minimizing update anomalies.
