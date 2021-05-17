# 테이블 생성
```sql
CREATE TABLE [데이터베이스명.테이블명] (
  컬럼 컬럼 타입,
  ...
  제약조건
)
COMMENT='설명'
DEFAULT CHARSET=utf-8
ENGINE=InnoDB
-- ENGINE은 MyISAM과 InnoDB가 주로 사용
```

# 현재 데이터베이스에서 생성된 테이블 확인
```sql
show tables;
```

## users 테이블 생성
```sql
-- mydb 데이터베이스 users 테이블을 생성한다. 
CREATE TABLE mydb.users(
    id bigint unsigned NOT NULL AUTO_INCREMENT, -- 숫자 bigint, float, double
    name VARCHAR(20) NOT NULL, --  문자 varchar 가변길이, char 고정길이
    age INT UNSIGNED NOT NULL,
    married TINYINT NOT NULL, -- -127 ~ 128
    comment TEXT NULL, 
    created_at DATETIME NOT NULL DEFAULT NOW(), -- date, time, timestamp
    CONSTRAINT USERS_PK PRIMARY KEY(id),
    UNIQUE INDEX name_UNIQUE (name ASC) -- name 컬럼의 값은 유일해야하며, 오름차순으로 인덱싱하겠다는 의미
)
COMMENT='사용자 정보'
DEFAULT CHARSET=utf8
ENGINE=InnoDB;
```

## tcity 테이블 생성
```sql
create table tcity(
	name char(10),
    area int null,
    popu int null,
    metro char(1) not null,
    region char(6) not null,
    constraint pk_tcity primary key(name)
)
```

## tcity 테이블 구조 확인
```sql
describe tcity;
+--------+----------+------+-----+---------+-------+
| Field  | Type     | Null | Key | Default | Extra |
+--------+----------+------+-----+---------+-------+
| name   | char(10) | NO   | PRI | NULL    |       |
| area   | int      | YES  |     | NULL    |       |
| popu   | int      | YES  |     | NULL    |       |
| metro  | char(1)  | NO   |     | NULL    |       |
| region | char(6)  | NO   |     | NULL    |       |
+--------+----------+------+-----+---------+-------+
```
