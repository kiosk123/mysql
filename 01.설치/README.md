# 설치

### macOS - [brew](https://brew.sh/index_ko)

mysql 실행 후 mysql_secure_installation로 root 비밀번호 설정한다.  
validation_password 플러그인을 설치하겠다고 물으면 운영에서는 설치해주고 개발모드라면 편의를 위해 모두 n입력 후 엔터
```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$ brew install mysql
$ brew services start mysql
$ mysql_secure_installation

$ mysql -h localhost -u root -p # mysql 실행 -h는 접속할 주소 -u는 사용자명 -p는 패스워드
```


### 우분투
설치시 중간에 root 비밀번호 설정하므로 기억해둘 것
```bash
$ sudo apt-get update
$ sudo apt-get install -y mysql-server
$ mysql_secure_installation # 설치시 my

$ mysql -h localhost -u root -p # mysql 실행 -h는 접속할 주소 -u는 사용자명 -p는 패스워드
```