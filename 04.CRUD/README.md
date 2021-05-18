# 04. CRUD


## 출력행수 제한 LIMIT

SELECT ... LIMIT [건너뛸 개수], 총 개수

```sql
select * from tcity limit 4; -- 0행 부터 4개의 레코드 출력

select * from tcity order by area desc limit 2, 3 -- 2행부터 3개의 레코드 출력
```

## COMMIT과 ROLLBACK
```sql
COMMIT; -- 데이터 영구 반영

ROLLBACK; -- 변경된(임시영역에 저장된) 데이터를 취소
```

## 테이블의 정보를 복사해서 다른 테이블에 삽입 - INSERT SELECT

INSERT INTO 대상 테이블(필드목록) SELECT 필드목록 FROM 원본 테이블
- 원본테이블 필드목록과 대상테이블 필드목록은 순서대로 1 대 1 대응
- 순서와 타입이 일치하거나 적어도 호환은 되어야함
- 생략된 필드는 NULL을 허용하거나 기본값을 가지고 있어야함

```sql
insert into tstaff(name, depart, gender, joindate, grade, salary, score) select name, region, metro, '2020-06-29', '신입', area, popu from tcity where region = '경기';
```

## 새로 테이블을 생성하여 기존 테이블의 데이터를 삽입 - CREATE INSERT

CREATE TABLE 대상테이블 AS SELECT 필드목록 FROM 원본테이블

```sql
create table tsudo as select name, area, popu from tcity where region = '경기';
```

데이터는 복사되지만 제약조건을 복사하지 않으므로 주의한다.  
그렇기 테이블을 생성할때 제약조건을 걸고 데이터를 복사할 수도 있다.

```sql
create table tsudo (
	name varchar(10),
    area int default 0,
    popu int default 0,
    constraint pk_tsudo primary key(name)
) as select name, area, popu from tcity where region = '경기';
```