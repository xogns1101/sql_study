
SELECT * FROM employees;

-- WHERE 절 비교 (데이터 값은 대/소문자를 구분합니다.)
SELECT first_name, last_name, job_id
FROM employees
WHERE job_id = 'IT_PROG';

SELECT *
FROM employees
WHERE last_name = 'King';
-- 푸시 되는지 2차 확인용.