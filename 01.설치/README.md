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

### CentOS - [(CentOS7기준)](https://www.mysqltutorial.org/install-mysql-centos/)
CentOS8이상일 경우 다음 몇가지 단계는 건너 띨 수 있음 - [참고](https://info-lab.tistory.com/172)  
여기서는 MySQL 8버전을 설치
```bash
$ sudo rpm -Uvh https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm
$ sudo sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo
$ sudo yum --enablerepo=mysql80-community install mysql-community-server

$ sudo systemctl start mysqld
$ sudo systemctl enable mysqld

$ sudo grep "A temporary password" /var/log/mysqld.log # 디폴트 패스워드 확인
[Note] A temporary password is generated for root@localhost: hjkygMukj5+t783

$ mysql_secure_installation
```
