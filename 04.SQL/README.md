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