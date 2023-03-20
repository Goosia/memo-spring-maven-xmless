### Maven 기반의 웹 프로젝트 구조를 만드는 방법

1. 프로젝트 생성
우선, Maven 프로젝트를 생성합니다.\
IDE(통합 개발 환경)에서는 New Project를 선택하여 Maven Project를 선택하고 필요한 정보를 입력하여 생성할 수 있습니다.

2. 의존성 추가
pom.xml 파일에 Spring Web MVC, MyBatis, MySQL, Lombok, SLF4J 등의 의존성을 추가합니다.

3. 폴더 구조 생성
소스 코드 및 리소스 파일을 담을 폴더 구조를 생성합니다.\
src/main/java 폴더 아래에 패키지를 생성하고, src/main/resources 폴더 아래에 설정 파일 등의 리소스를 저장합니다.

4. 설정 파일 추가
프로젝트에 필요한 설정 파일을 추가합니다.\
web.xml 의 기능을 하는 설정은 src/main/java/com/goosia/memo/config/ApplicationInitializer.java 입니다.

5. Spring Web MVC 설정 파일 : src/main/java/com/goosia/memo/config/WebConfig.java

6. 컨트롤러 및 서비스 클래스 생성
프로젝트에 필요한 컨트롤러와 서비스 클래스를 생성합니다.\
src/main/java/com/goosia/memo/controller 폴더와 src/main/java/com/goosia/memo/service 폴더에 각각 컨트롤러 및 서비스 클래스를 생성합니다.

7. 데이터베이스 연동 설정
MyBatis를 사용하여 데이터베이스와 연동하려면, MyBatis의 설정 파일에 데이터베이스 연결 정보를 입력해야 합니다.\
src/main/java/com/goosia/memo/config/AppConfig.java 에 추가하였습니다.

8. Slf4j 로그 출력을 위한 logback 설정\
src/main/java/com/goosia/memo/config/LogBackConfig.java


### 프로젝트 구조
```
├─src
│  ├─main
│  │  ├─java
│  │  │  └─com.goosia.memo
│  │  │          ├─config
│  │  │          │      AppConfig.java
│  │  │          │      ApplicationInitializer.java
│  │  │          │      LogBackConfig.java
│  │  │          │      WebConfig.java
│  │  │          │
│  │  │          ├─controller
│  │  │          │      MainController.java
│  │  │          │      
│  │  │          ├─mapper
│  │  │          │      MemoMapper.java
│  │  │          │      
│  │  │          ├─model
│  │  │          │      MemoDto.java
│  │  │          │      
│  │  │          └─service
│  │  │                  MemoService.java
│  │  │                        └─impl
│  │  │                             MemoServiceImpl.java
│  │  │                  
│  │  ├─webapp
│  │  ├   ├─resources
│  │  ├   │  ├─css
│  │  ├   │  │   main.css
│  │  ├   │  ├─images
│  │  ├   │  │   cat.jpg
│  │  ├   │  └─js
│  │  ├   │
│  │  ├   └─WEB-INF
│  │  ├       └─views
│  │  ├              detail.jsp
│  │  ├              index.jsp
│  │  ├              insert.jsp
│  │  ├              update.jsp
│  │  ├                  
│  │  │─resources
│  │  │   ├─config
│  │  │   │      application.properties
│  │  │   │
│  │  │   └─mapper
│  │  │          MemoMapper.xml
│  │  │
│  │  │─test
│  │  │  └─com.goosia.memo
│  │  │            DataSourceTest.java
│  │  │            MemoMapperTest.java

```

### mysql 계정 만들기
```
    create database db_memo;
    create user user_memo@localhost identified by '1234';
    grant all privileges on db_memo.* to user_memo@localhost;
```

### tables
```
drop table if exists memo;
create table db_memo.memo
(
    idx      int auto_increment comment '인덱스'
        primary key,
    contents text null comment '내용'
)
    comment '메모';
```