hilltop
=======
http://hilltop.iteye.com/blog/1963748

Wabacus4.2开发的系统示例(hilltop升级,支持mysql/oracle/sqlserer2005)(20131024)

下载地址http://pan.baidu.com/s/1eOmjt 


====20131024==== 

1.说明: 

这是一个用wabacus4.2开发的系统(wabacus4.2+tomcat6+jdk1.7+sqlserver2005/oracle10g/mysql), 

登录,权限管理,菜单管理,保存用户个性化信息(主题,列排序,列拖动,列选择)等 

2.其中 
hilltop_eclipse_project.zip是eclipse项目文件夹 
文件夹db是数据库文件 
视频说明.exe是项目演示的录像 

3.
权限设置为:user属性有group_id,group_id下挂privilege_id,privilege_id下挂各page 
(增加了一个group的父子关系表,各位看官自己决定如何使用吧) 
详情查看table_schema.xlsx 

4.友情提示:管理员帐号 hilltop/123;新建帐号默认密码12345 

5.此次升级支持mysql/sqlserver2005/oracle,请根据数据库类型选择对应的脚本,并修改程序的数据源 
