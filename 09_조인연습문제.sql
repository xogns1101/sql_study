/*
���� 1.
-EMPLOYEES ���̺��, DEPARTMENTS ���̺��� DEPARTMENT_ID�� ����Ǿ� �ֽ��ϴ�.
-EMPLOYEES, DEPARTMENTS ���̺��� ������� �̿��ؼ�
���� INNER , LEFT OUTER, RIGHT OUTER, FULL OUTER ���� �ϼ���. (�޶����� ���� ���� �ּ����� �ۼ�)
*/
SELECT *
FROM employees e
JOIN departments d
ON e.department_id = d.department_id; -- 106��

SELECT *
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id; -- 107��

SELECT *
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id; -- 122��

SELECT *
FROM employees e
FULL JOIN departments d
ON e.department_id = d.department_id; -- 123��

/*
���� 2.
-EMPLOYEES, DEPARTMENTS ���̺��� INNER JOIN�ϼ���
����)employee_id�� 200�� ����� �̸�, department_name�� ����ϼ���
����)�̸� �÷��� first_name�� last_name�� ���ļ� ����մϴ�
*/
SELECT
    e.first_name || ' ' || e.last_name AS name,
    d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.employee_id = 200;


/*
���� 3.
-EMPLOYEES, JOBS���̺��� INNER JOIN�ϼ���
����) ��� ����� �̸��� �������̵�, ���� Ÿ��Ʋ�� ����ϰ�, �̸� �������� �������� ����
HINT) � �÷����� ���� ����Ǿ� �ִ��� Ȯ��
*/
SELECT 
    e.first_name, e.job_id,
    j.job_title
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id
ORDER BY e.first_name;


/*
���� 4.
--JOBS���̺�� JOB_HISTORY���̺��� LEFT_OUTER JOIN �ϼ���.
*/
SELECT *
FROM jobs j
LEFT JOIN job_history jh
ON j.job_id = jh.job_id;


/*
���� 5.
--Steven King�� �μ����� ����ϼ���.
*/
SELECT
    e.first_name || ' ' || e.last_name AS full_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE e.first_name = 'Steven'
AND e.last_name = 'King';

/*
���� 6.
--EMPLOYEES ���̺�� DEPARTMENTS ���̺��� Cartesian Product(Cross join)ó���ϼ���
*/
SELECT * FROM employees
CROSS JOIN departments;

SELECT * FROM employees, departments;

/*
���� 7.
--EMPLOYEES ���̺�� DEPARTMENTS ���̺��� �μ���ȣ�� �����ϰ� SA_MAN ������� �����ȣ, �̸�, 
�޿�, �μ���, �ٹ����� ����ϼ���. (Alias�� ���)
*/
SELECT
    e.employee_id,
    e.first_name,
    e.salary,
    d.department_name,
    d.location_id
FROM employees e
JOIN departments d 
ON e.department_id = d.department_id
WHERE e.job_id = 'SA_MAN'

/*
���� 8.
-- employees, jobs ���̺��� ���� �����ϰ� job_title�� 'Stock Manager', 'Stock Clerk'�� 
���� ������ ����ϼ���.
*/
SELECT

FROM employees e
JOIN jobs j
WHERE jobs_ID

/*
���� 9.
-- departments ���̺��� ������ ���� �μ��� ã�� ����ϼ���. LEFT OUTER JOIN ���
*/


/*
���� 10. 
-join�� �̿��ؼ� ����� �̸��� �� ����� �Ŵ��� �̸��� ����ϼ���
��Ʈ) EMPLOYEES ���̺�� EMPLOYEES ���̺��� �����ϼ���.
*/


/*
���� 11. 
-- EMPLOYEES ���̺��� left join�Ͽ� ������(�Ŵ���)id��, �Ŵ����� �̸�, �Ŵ����� �޿� ���� ����ϼ���.
-- �Ŵ��� ���̵� ���� ����� �����ϰ� �޿��� �������� �����ϼ���.
*/

