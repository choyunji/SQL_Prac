#02 WHERE ���� ���� Ȱ���� ������ �˻�

#SQL ������ : ��ȸ ���� Ȯ���ϱ�
#3-13 : BETWEEN
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;

#3-13���ٰ� ������������ ������� �߰�
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000
ORDER BY salary DESC;

#3-14 : IN (���� �� ������)
SELECT *
FROM employees
WHERE salary IN (10000, 17000, 24000);

#3-15 : LIKE %
SELECT *
FROM employees
WHERE job_id LIKE 'AD%';

#Like :~%
SELECT *
FROM employees
WHERE first_name LIKE 'Le%';

#Like : %~%
SELECT *
FROM employees
WHERE first_name LIKE '%ame%';

#Like :%~
SELECT *
FROM employees
WHERE first_name LIKE '%in';

#3-16 : LIKE _
SELECT *
FROM employees
WHERE job_id LIKE 'AD___';

#3-17 : IS NULL
SELECT *
FROM employees
WHERE manager_id IS NULL;