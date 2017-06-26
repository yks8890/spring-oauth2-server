README

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
