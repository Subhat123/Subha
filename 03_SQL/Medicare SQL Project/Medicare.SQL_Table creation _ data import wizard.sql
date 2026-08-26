CREATE DATABASE medicare;
USE medicare;
CREATE TABLE Hospitals (
    hospital_id VARCHAR(10) PRIMARY KEY,
    hospital_name VARCHAR(100) NOT NULL,
    hospital_type VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(20),
    bed_capacity INT,
    established_year INT,
    contact_number VARCHAR(15),
    email VARCHAR(100)
);

SELECT * FROM Hospitals;

CREATE TABLE Departments (
    department_id VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    hospital_id VARCHAR(10),
    floor_number INT,
    head_doctor_id VARCHAR(10)
);

SELECT * FROM Departments;

CREATE TABLE Doctors (
    doctor_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender VARCHAR(10),
    specialization VARCHAR(50),
    department_id VARCHAR(10),
    hospital_id VARCHAR(10),
    qualification VARCHAR(50),
    experience_years INT,
    consultation_fee DECIMAL(10,2),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    joining_date DATE
);

SELECT * FROM Doctors;

CREATE TABLE Patients (
    patient_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    age INT,
    city VARCHAR(50),
    state VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    blood_group VARCHAR(5),
    registration_date DATE
);

SELECT * FROM Patients;

CREATE TABLE Rooms (
    room_id VARCHAR(10) PRIMARY KEY,
    hospital_id VARCHAR(10),
    room_number VARCHAR(10),
    room_type VARCHAR(30),
    floor_number INT,
    daily_charge DECIMAL(10,2),
    room_status VARCHAR(20)
);

SELECT * FROM Rooms;

CREATE TABLE Appointments (
    appointment_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    doctor_id VARCHAR(10),
    hospital_id VARCHAR(10),
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(20),
    reason_for_visit VARCHAR(200),
    created_at DATETIME
);

SELECT * FROM Appointments;

DROP TABLE IF EXISTS Appointments;

CREATE TABLE Admissions (
    admission_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    hospital_id VARCHAR(10),
    department_id VARCHAR(10),
    admitting_doctor_id VARCHAR(10),
    room_id VARCHAR(10),
    admission_date DATE,
    discharge_date DATE,
    admission_type VARCHAR(20),
    admission_status VARCHAR(20)
);

SELECT * FROM Admissions;

CREATE TABLE Treatments (
    treatment_id VARCHAR(10) PRIMARY KEY,
    admission_id VARCHAR(10),
    patient_id VARCHAR(10),
    doctor_id VARCHAR(10),
    treatment_name VARCHAR(150),
    treatment_date DATE,
    treatment_cost DECIMAL(10,2),
    treatment_status VARCHAR(20)
);

SELECT * FROM Treatments;

CREATE TABLE Insurance (
    insurance_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    insurance_provider VARCHAR(100),
    policy_number VARCHAR(30),
    coverage_amount DECIMAL(12,2),
    policy_start_date DATE,
    policy_end_date DATE,
    claim_status VARCHAR(20)
);

SELECT * FROM Insurance;

CREATE TABLE Medicines (
    medicine_id VARCHAR(10) PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    manufacturer VARCHAR(100),
    unit_price DECIMAL(10,2),
    stock_quantity INT
);

SELECT * FROM Medicines;

CREATE TABLE Pharmacy (
    pharmacy_sale_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    medicine_id VARCHAR(10),
    hospital_id VARCHAR(10),
    quantity INT,
    sale_date DATE,
    total_price DECIMAL(10,2)
);

SELECT * FROM Pharmacy;

CREATE TABLE Laboratory (
    lab_test_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    doctor_id VARCHAR(10),
    hospital_id VARCHAR(10),
    test_name VARCHAR(100),
    test_date DATE,
    test_result VARCHAR(50),
    test_cost DECIMAL(10,2),
    test_status VARCHAR(20)
);

SELECT * FROM Laboratory;

CREATE TABLE Employees (
    employee_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender VARCHAR(10),
    hospital_id VARCHAR(10),
    department_id VARCHAR(10),
    designation VARCHAR(50),
    employment_type VARCHAR(20),
    salary DECIMAL(10,2),
    joining_date DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100)
);

SELECT * FROM Employees;

CREATE TABLE Billing (
    bill_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    admission_id VARCHAR(10),
    appointment_id VARCHAR(10),
    bill_date DATE,
    room_charges DECIMAL(10,2) DEFAULT 0,
    doctor_charges DECIMAL(10,2) DEFAULT 0,
    medicine_charges DECIMAL(10,2) DEFAULT 0,
    lab_charges DECIMAL(10,2) DEFAULT 0,
    other_charges DECIMAL(10,2) DEFAULT 0,
    total_amount DECIMAL(10,2),
    bill_status VARCHAR(20)
);

SELECT * FROM Billing;

CREATE TABLE Payments (
    payment_id VARCHAR(10) PRIMARY KEY,
    bill_id VARCHAR(10),
    patient_id VARCHAR(10),
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_mode VARCHAR(30),
    payment_status VARCHAR(20)
);

SELECT * FROM Payments;














