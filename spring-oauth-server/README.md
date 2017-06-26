#spring-oauth-server

###请求

方式1:基于浏览器
 
 获取授权码 

http://localhost:8080/oauth/authorize?client_id=mobile-client&redirect_uri=http%3a%2f%2flocalhost%3a8080%2fm%2fdashboard.htm&response_type=code&scope=read

 交换授权码来获得访问令牌

http://localhost:8080/oauth/token?grant_type=authorization_code&code=t7ol7D&redirect_uri=http%3a%2f%2flocalhost%3a8080%2fm%2fdashboard.htm&client_id=mobile-client&client_secret=mobile

 授权请求

http://localhost:8080/oauth/authorize?response_type=token&client_id=mobile-client&redirect_uri=http%3a%2f%2flocalhost%3a8080%2fm%2fdashboard.htm&scope=read

 
 方式2:基于客户端

http://localhost:8080/oauth/token?client_id=unity-client&client_secret=unity&grant_type=password&scope=read,write&username=admin&password=admin

 返回的数据

{"access_token":"3420d0e0-ed77-45e1-8370-2b55af0a62e8","token_type":"bearer","refresh_token":"b36f4978-a172-4aa8-af89-60f58abe3ba1","expires_in":43199,"scope":"read
write"} 
 获取access_token后访问资源
 http://localhost:8080/unity/dashboard.htm?access_token=3420d0e0-ed77-45e1-8370-2b55af0a62e8


###部署

创建MySQL数据库(如数据库名oauth2), 并运行相应的SQL脚本(脚本文件位于others/database目录),
   运行脚本的顺序: initial_db.ddl -> oauth.ddl -> initial_data.ddl

修改spring-oauth-server.properties(位于src/resources目录)中的数据库连接信息(包括username, password等)