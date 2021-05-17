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