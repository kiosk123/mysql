# 04. SQL


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
insert into tstaff(name, depart, gender, joindate, grade, salary, score) select name, region, metro, '2020-06-29', '신입', area, popu from tcity where region = '경기'
```