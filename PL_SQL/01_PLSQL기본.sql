
/*
# PL/SQL
- ����Ŭ���� �����ϴ� SQL ���α׷��� ����̴�.
- �Ϲ����� ���α׷��ְ��� ���̰� ������, ����Ŭ ���ο��� ������ ó���� ����
 ������ �� �� �ִ� ���������� �ڵ� �ۼ� ����Դϴ�.
- �������� �������� ��� ������ �ϰ� ó���ϱ� ���� �뵵�� ����մϴ�.
*/

SET SERVEROUTPUT ON; -- ��¹� Ȱ��ȭ

-- �͸� ��� ����
DECLARE -- ������ �����ϴ� ����(�����)

    emp_num NUMBER; -- ���� ����


BEGIN -- �ڵ带 �����ϴ� ���� (�����)

    emp_num := 10; -- ���� ������ :=
    DBMS_OUTPUT.put_line(emp_num);
    DBMS_OUTPUT.put_line('Hello pl/sql!');
END; -- PL/SQL�� ������ ���� (�����)

/*
- DML��
DDL���� ����� �Ұ����ϰ�, �Ϲ������� SQL���� SELECT ���� ����ϴµ�, 
Ư���� ���� SELECT�� �Ʒ��� INTO���� ����ؼ� ������ �Ҵ��� �� �ֽ��ϴ�.
*/

DECLARE
     v_emp_name VARCHAR2(50); -- ����� ���� (���ڿ� Ÿ���� ���� ���� �ʿ�)
     v_dep_name departments.department_name%TYPE; -- �μ��� ����
BEGIN
    SELECT
        e.first_name,
        d.department_name
    INTO 
        v_emp_name, v_dep_name -- ��ȸ ����� ������ ����
    FROM employees e
    LEFT JOIN departments d
    ON e.department_id = d.department_id
    WHERE e.employee_id = 103;
    
    dbms_output.put_line(v_emp_name || '-' || v_dep_name);
    
END;

-- 2. employees ���̺��� �����ȣ�� ���� ū ����� ã�Ƴ� �� (MAX �Լ� ���)
-- �� ��ȣ + 1������ �Ʒ��� ����� emps ���̺�
-- employee_id, last_name, email, hire_date, job_id�� �ű� �����ϴ� �͸� ����� ���弼��.
-- SELECT�� ���Ŀ� INSERT�� ����� �����մϴ�.
/*
<�����>: steven
<�̸���>: stevenjobs
<�Ի�����>: ���ó�¥
<JOB_ID>: CEO
*/

DECLARE
   v_max_empno employees.employee_id%TYPE;
BEGIN
    SELECT
        MAX(employee_id)
    INTO
        v_max_empno
    FROM employees;
    
    INSERT INTO emps
        (employee_id, last_name, email, hire_date, job_id)
    VALUES
        (v_max_empno + 1, 'steven', 'stevenjobs', sysdate, 'CEO');
END;

SELECT * FROM emps;














