#02 WHERE 조건 절을 활용한 데이터 검색

#SQL 연산자 : 조회 조건 확장하기
#3-13 : BETWEEN
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;

#3-13에다가 내림차순으로 출력조건 추가
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000
ORDER BY salary DESC;

#3-14 : IN (다중 행 연산자)
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