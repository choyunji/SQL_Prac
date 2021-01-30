#01 SELECT 문의 기본 문법

#전체 데이터 조회 : SELECT~FROM
#3-1 employees 테이블의 모든 정보를 출력
SELECT *
FROM EMPLOYEES;

#원하는 열만 조회하고 정렬
#3-2 employees 테이블에서 employee_id, first_name, last_name을 출력
SELECT employee_id, first_name, last_name
FROM employees;

#ORDER BY : 행에 대해 정렬순서 지정 (ASC, DESC)
#3-3 employees 테이블에서 employee_id, first_name, last_name을 출력gkrh employee_id를 기준으로 내림차순 정렬
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id DESC;

#중복된 출력 값 제거 : DISTINCT
#3-4 employees 테이블에서 중복 값이 생기지 않도록 job_id 출력
SELECT DISTINCT job_id
FROM employees;

#열 이름 별칭사용하기(alias) : AS
#3-5 employees 테이블에서 employee_id는 '사원번호', first_name은 '이름', last_name은 '성'으로 출력
SELECT employee_id AS 사원번호, first_name AS 이름, last_name AS 성
FROM employees;

#데이터 값 연결 : ||
#3-6 employees 테이블에서 employee_id를 출력하고 first_name과 last_name을 붙여서 출력
SELECT employee_id, first_name||last_name
FROM employees;

#3-7 employees 테이블에서 employee_id를 출력하고, first_name과 last_name을 붙여서 출력하되 가운데 한 칸을 띄울것, 다음 열에는 email을 출력하되 @company.com문구를 붙여서 출력
SELECT employee_id,
        first_name||''||last_name,
        email||'@company.com'
FROM employees;

#산술처리하기 - 데이터 값끼리 계산 : 산술연산자
#3-8 employees 테이블에서 employee_id를 '사원번호', salary를 '급여', salary+500을 '추가급여', salary-100을 '인하급여', (salary*1.1)/2를 '조정급여'로 출력
SELECT employee_id,
        salary,
        salary+500 AS 추가급여,
        salary-100 AS 인하급여,
        (salary*1.1)/2 AS 조정급여
FROM employees;
