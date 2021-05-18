# 04. SQL


## 출력행수 제한 LIMIT

SELECT ... LIMIT [건너뛸 개수], 총 개수

```sql
select * from tcity limit 4; -- 0행 부터 4개의 레코드 출력

select * from tcity order by area desc limit 2, 3 -- 2행부터 3개의 레코드 출력
```