# 05. 제약조건

## 기본키 제약조건
레코드끼리 구분할 수 있는 고유키(식별자) 컬럼을 설정한다.

```sql
create table tprimarytest (
	id bigint primary key,
    name char(10) not null
);

-- 두번째 방식
create table tprimarytest (
	id bigint,
    name char(10) not null,
    constraint pk_tprimarytest primary key(id)
);

-- 복합키 지정 (1)
create table tprimarytest (
	id bigint primary key,
    name char(10) primary key
);

-- 복합키 지정 (2)
create table tprimarytest (
	id bigint,
    name char(10),
    constraint pk_tprimarytest primary key(id, name)
);
```

## CHECK 제약조건

필드의 값 종류를 제한한다.

```sql
create table tchecktest (
	gender char(3) null check(gender = '남' or  gender = '여'),
    score int null check(score >= 0 and score <= 100),
    grade int null check(grade between 1 and 3),
    origin char(3) null check(origin in ('동','서','남','북')),
    name char(3) null check(name like'김%')
);
```