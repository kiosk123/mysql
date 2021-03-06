
-- ORACLE--
-- 도시 정보 테이블 
CREATE TABLE TCITY (
    NAME VARCHAR2(20) NOT NULL,                 -- 도시이름
    AREA INT,                                   -- 면적, 제곱킬로미터 단위
    POPU INT,                                   -- 인구수, 만명 단위
    METRO CHAR(1) NOT NULL,                     -- 광역시 여부. Y/N
    REGION VARCHAR2(6) NOT NULL,                -- 소속 지역
    CONSTRAINT PK_TCITY PRIMARY KEY(NAME)       
);

-- 도시 데이터
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('서울', 605, 974, 'Y', '경기');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('부산', 765, 342, 'Y', '경상');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('오산', 42, 21, 'N', '경기');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('청주', 940, 83, 'N', '충청');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('전주', 205, 65, 'N', '전라');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('순천', 910, 27, 'N', '전라');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('춘천', 1116, 27, 'N', '강원');
INSERT INTO TCITY(NAME, AREA, POPU, METRO, REGION) VALUES('홍천', 1819, 7, 'N', '강원');

-- ## 직원 테이블 ##
CREATE TABLE TSTAFF (
    NAME CHAR(15),
    DEPART CHAR(10) NOT NULL,
    GENDER CHAR(3) NOT NULL,
    JOINDATE TIMESTAMP NOT NULL,
    GRADE CHAR(10) NOT NULL,
    SALARY INT NOT NULL,
    SCORE DECIMAL(5, 2) NULL,
    CONSTRAINT PK_TSTAFF PRIMARY KEY(NAME)
);

-- ## 직원 데이터 ##
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('김유신','총무부','남',TO_TIMESTAMP('2000-2-3','YYYY-MM-DD HH24:MI:SS'),'이사',420,88.8);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('유관순','영업부','여',TO_TIMESTAMP('2009-3-1','YYYY-MM-DD HH24:MI:SS'),'과장',380,NULL);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('안중근','인사과','남',TO_TIMESTAMP('2012-5-5','YYYY-MM-DD HH24:MI:SS'),'대리',256,76.5);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('윤봉길','영업부','남',TO_TIMESTAMP('2015-8-15','YYYY-MM-DD HH24:MI:SS'),'과장',350,71.25);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('강감찬','영업부','남',TO_TIMESTAMP('2018-10-9','YYYY-MM-DD HH24:MI:SS'),'사원',320,56.0);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('정몽주','총무부','남',TO_TIMESTAMP('2010-9-16','YYYY-MM-DD HH24:MI:SS'),'대리',370,89.5);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('허난설헌','인사과','여',TO_TIMESTAMP('2020-1-5','YYYY-MM-DD HH24:MI:SS'),'사원',285,44.5);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('신사임당','영업부','여',TO_TIMESTAMP('2013-6-19','YYYY-MM-DD HH24:MI:SS'),'부장',400,92.0);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('성삼문','영업부','남',TO_TIMESTAMP('2014-6-8','YYYY-MM-DD HH24:MI:SS'),'대리',285,87.75);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('논개','인사과','여',TO_TIMESTAMP('2010-9-16','YYYY-MM-DD HH24:MI:SS'),'대리',340,46.2);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('황진이','인사과','여',TO_TIMESTAMP('2012-5-5','YYYY-MM-DD HH24:MI:SS'),'사원',275,52.5);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('이율곡','총무부','남',TO_TIMESTAMP('2016-3-8','YYYY-MM-DD HH24:MI:SS'),'과장',385,65.4);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('이사부','총무부','남',TO_TIMESTAMP('2000-2-3','YYYY-MM-DD HH24:MI:SS'),'대리',375,50);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('안창호','영업부','남',TO_TIMESTAMP('2015-8-15','YYYY-MM-DD HH24:MI:SS'),'사원',370,74.2);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('을지문덕','영업부','남',TO_TIMESTAMP('2019-6-29','YYYY-MM-DD HH24:MI:SS'),'사원',330,NULL);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('정약용','총무부','남',TO_TIMESTAMP('2020-3-14','YYYY-MM-DD HH24:MI:SS'),'과장',380,69.8);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('홍길동','인사과','남',TO_TIMESTAMP('2019-8-8','YYYY-MM-DD HH24:MI:SS'),'차장',380,77.7);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('대조영','총무부','남',TO_TIMESTAMP('2020-7-7','YYYY-MM-DD HH24:MI:SS'),'차장',290,49.9);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('장보고','인사과','남',TO_TIMESTAMP('2005-4-1','YYYY-MM-DD HH24:MI:SS'),'부장',440,58.3);
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) VALUES ('선덕여왕','인사과','여',TO_TIMESTAMP('2017-8-3','YYYY-MM-DD HH24:MI:SS'),'사원',315,45.1);


-- ## DUAL 테이블을 활용한 계산 ##
SELECT NAME, POPU * 10000 AS "인구(명)" FROM TCITY;
SELECT 60 * 60 * 24 * 365 AS ONEYEAR FROM DUAL;

-- ## 와일드 카드 ##
-- '%' : 복수 개의 문자
-- '_' : 하나의 문자 
SELECT * FROM TSTAFF WHERE NAME LIKE '%임%';
SELECT * FROM TSTAFF WHERE NAME LIKE '_보%';
SELECT * FROM TSTAFF WHERE NAME LIKE '김%' OR NAME LIKE '_보%';

-- ## 이스케이프 처리 ## 
SELECT * FROM SALE WHERE DISCOUNT LIKE '%30#%' ESCAPE '#';

-- 2020년 이후 입사한 사원이 있는 부서 출력 ##
SELECT DISTINCT DEPART FROM TSTAFF WHERE JOINDATE >= TO_TIMESTAMP('2020-1-1','YYYY-MM-DD HH24:MI:SS');

-- ## 테이블의 일부 레코드만 조회 ##
-- ORDER BY 기준필드 OFFSET 건너뛸 행수 ROWS FETCH NEXT 출력할 행수 ROWS ONLY ##
SELECT * FROM TCITY ORDER BY AREA DESC OFFSET 0 ROWS FETCH NEXT 4 ROWS ONLY;
SELECT * FROM TSTAFF ORDER BY SALARY DESC;
SELECT * FROM TSTAFF ORDER BY SALARY DESC OFFSET 11 ROWS FETCH NEXT 4 ROWS ONLY; 

-- ## NULL 포함해서 집계 ##
SELECT COUNT(*) FROM TSTAFF;

-- ## NULL 무시하고 집계 ##
SELECT COUNT(SCORE) FROM TSTAFF;

-- ## GROUP BY ... HAVING ##
SELECT DEPART, AVG(SALARY) FROM TSTAFF WHERE DEPART = '인사과' GROUP BY DEPART HAVING AVG(SALARY) >= 40;

-- ## INSERT INTO ... SELECT ## 
INSERT INTO TSTAFF(NAME, DEPART, GENDER, JOINDATE, GRADE, SALARY, SCORE) SELECT NAME, REGION, METRO, TO_TIMESTAMP('2020-6-29','YYYY-MM-DD HH24:MI:SS'), '신입', AREA, POPU FROM TCITY WHERE REGION = '경기';

-- ## CREATE INTO ... SELECT ##
CREATE TABLE TSUDO AS SELECT NAME, AREA, POPU FROM TCITY WHERE REGION = '경기';

-- ## 시쿼스 생성 - 오라클(NUMBER 타입)##
/*
    CREATE SEQUENCE 이름 [AS 타입] START WITH 시작값 INCREMENT BY 증가값
    MINVALUE 최소값 MAXVALUE 최대값 CYCLE | NOCYCLE CACHE | NOCACHE 
*/
CREATE SEQUENCE SEQSALE START WITH 1 INCREMENT BY 1;

CREATE TABLE TSALE (
    SALENO INT PRIMARY KEY,
    CUSTOMER VARCHAR(20),
    PRODUCT VARCHAR(30)
);

-- 생성된 시퀀스 활용
INSERT INTO TSALE VALUES(SEQSALE.NEXTVAL, '단군', '지팡이');
INSERT INTO TSALE VALUES(SEQSALE.NEXTVAL, '고주몽', '고등어');

SELECT * FROM TSALE;

-- 자동 생성 시퀀스 필드 지정
-- 'DEFAULT ON NULL'은 값을 지정하지 않는다는 것이 아닌 자동증가값을 생성해서 넣어라는 뜻 
/* 
    GENERATED [ALWAYS | BY DEFAULT | BY DEFAULT ON NULL] AS IDENTITY [START WITH 시작값 INCREMENT BY 증가값 CACHE] 
*/
CREATE TABLE TSALE (
    SALENO INT GENERATED AS IDENTITY PRIMARY KEY,
    CUSTOMER VARCHAR(20),
    PRODUCT VARCHAR(30)
);

INSERT INTO TSALE(CUSTOMER, PRODUCT) VALUES('단군', '지팡이');
INSERT INTO TSALE(CUSTOMER, PRODUCT) VALUES('고주몽', '고등어');
