use medical;

-- Retrieve the names and genders of all patients.
select patient_name,gender from patients;

select distinct(diagnosis) from medicalrecords;

select count(patient_id) from patients;

select patient_name,max(date_of_birth) from patients
group by patient_name
limit 1;

select address,phone_number from patients
where patient_id=7;

select  doctor_name,specialization from doctors;

select avg(discharge_date-admission_date) as average_length_of_stay from medicalrecords;

select count(gender),gender from patients
group by gender;

select doctor_id,count(doctor_id) from medicalrecords
group by doctor_id;

select patient_name from patients
where patient_name like "j%";

SELECT p.patient_name, hv.admission_date, hv.discharge_date
FROM medical.patients p
JOIN medical.medicalrecords hv ON p.patient_id = hv.patient_id;
use medical;
select count(record_id) from medicalrecords;

select b.patient_name,a.diagnosis from medical.patients b
join medical.medicalrecords a
on  a.patient_id  = b.patient_id
where diagnosis = 'hypertension' or 'diabetes';
-- date diff is days caluclator function
-- currdate is todays date / 365 gives age
SELECT AVG(DATEDIFF(CURDATE(), date_of_birth) / 365) AS AverageAge
FROM medical.patients;
