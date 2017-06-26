## SpringOAuth2RestDemo 2 ## 

The project uses the following technologies: 

- Web/REST : Spring 3.1.1.RELEASE / Spring Security 3.1.0.RELEASE
- database : Mysql 5.1.36 / Mabatis 3.3.0 RELEASE
- Security : Oauth2 1.0.5.RELEASE 
- REST API
- Tool : Eclipse NEON , Java 1.7

## Build and Run ##

1. Download  **spring-oauth2-server-master.zip**
2. Unzip spring-oauth2-server-master.zip
3. Start Eclipse 
4. import -> Existing Maven Projects -> select project
5. Edit `spring-oauth-server.properties`

<pre><code>
#JDBC configuration information
jdbc.driverClassName=com.mysql.jdbc.Driver
############
# localhost
############
jdbc.url=jdbc:mysql://localhost:3306/oauth2?autoReconnect=true&autoReconnectForPools=true&useUnicode=true&characterEncoding=utf8
jdbc.username=root
jdbc.password=root
</code>
</pre>

6. insert database [DDL : spring-oauth-server/others/database/oauth2.ddl](https://github.com/yks8890/spring-oauth2-server/blob/master/spring-oauth-server/others/database/oauth2.ddl)/[DML : spring-oauth-server/others/database/initial_data.ddl](https://github.com/yks8890/spring-oauth2-server/blob/master/spring-oauth-server/others/database/oauth2.ddl)
7. Run on Server *(Server : Tomcat 7 or Tomcat 8 .etc)*

## TEST ##
1.REST API 접근 - 권한을 얻지 못했을 때 

http://localhost:8080/spring-oauth-server/m/dashboard.do 

- 결과 

{ "error": "unauthorized",
 "error_description": "An Authentication object was not found in the SecurityContext" } 

2. 접근키 얻기 

http://localhost:8080/spring-oauth-server/oauth/token?client_id=mobile-client&client_secret=mobile&grant_type=password&scope=read,write&username=admin&password=admin 

- 결과 

{ "access_token": "497df78a-cca7-4f42-9eea-940c545a49c2",
 "token_type": "bearer",
 "refresh_token":"07939a2a-dbf7-47cc-b9d5-a1363604049e", 
 "expires_in": 34120, 
 "scope":"read write" } 

3. 접근키로 REST API 접근  

http://localhost:8080/spring-oauth-server/m/dashboard.do?access_token=497df78a-cca7-4f42-9eea-940c545a49c2 

4. 새로운 접근키 생성 - refresh token 사용 

http://localhost:8080/spring-oauth-server/oauth/token?client_id=mobile-client&client_secret=mobile&grant_type=refresh_token&refresh_token=07939a2a-dbf7-47cc-b9d5-a1363604049e 

- 결과(기존 생성한 접근키와 리프레시 토큰은 만료됨 ) 

{ "access_token": "a4a4247b-62fa-451c-8fbe-81e75967bde6",
 "token_type": "bearer",
 "refresh_token": "07939a2a-dbf7-47cc-b9d5-a1363604049e",
 "expires_in": 43199, 
 "scope":"read write" } 
