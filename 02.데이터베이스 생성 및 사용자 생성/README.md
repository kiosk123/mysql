# 데이터베이스 생성

```sql
create schema [데이터베이스명]

create schema mydb;
use mydb; -- 생성한 mydb 사용
```

### 데이터베이스에 접근할 사용자 계정 생성

데이터베이스에 로컬 호스트(localhost)에 접근할 수 있는 사용자 계정 추가 및 권한을 설정한다. 

```sql
grant select,insert,update,delete,create,drop,alter on 데이터베이스명.* to '아이디'@'localhost' identified by '비번';

-- 위와 동일
grant all privileges on 데이터베이스명.* to '아이디'@'localhost' identified by '비번' with grant option;
```
모든 서버(%)에 접근 할 수 있는 권한을 설정한다. 
```sql
grant select,insert,update,delete,create,drop,alter on 데이터베이스명.* to '아이디'@'%'identified by '비번';

-- 위와 동일
grant all privileges on 데이터베이스명.* to '아이디'@'%'identified by '비번' with grant option;;
```

위 방식으로 안되면 다음 방식으로 처리 - [참고](https://ma.ttias.be/mysql-8-removes-shorthand-creating-user-permissions/)
```sql
CREATE USER '아이디'@'localhost' IDENTIFIED BY '비번';
CREATE USER '아이디'@'%' IDENTIFIED BY '비번';

GRANT ALL ON 데이터베이스명.* TO '아이디'@'localhost';
GRANT ALL ON 데이터베이스명.* TO '아이디'@'%';
```

### 패스워드 생성 정책 레벨이 높아서 생기는 문제
계정 생성시 패스워드를 단순하게 생성하면 패스워드 생성 정책으로 인해서 계정 생성이 거부될 수 있음  
운영모드에서는 당연히 보안을 엄격하게 해야하지만 개발 환경에서는 다음과 같이 레벨을 설정가능
```sql
SHOW VARIABLES LIKE 'validate_password%'; -- 패스워드 생성 정책 확인

+--------------------------------------+-------+
| Variable_name                        | Value |
+--------------------------------------+-------+
| validate_password.check_user_name    | ON    |
| validate_password.dictionary_file    |       |
| validate_password.length             | 6     |
| validate_password.mixed_case_count   | 1     |
| validate_password.number_count       | 1     |
| validate_password.policy             | LOW   |
| validate_password.special_char_count | 1     |
+--------------------------------------+-------+

-- 변경할 부분 설정
SET GLOBAL validate_password.length = 6;
SET GLOBAL validate_password.number_count = 0;
SET GLOBAL validate_password.policy=LOW
```
