# VBlog_Oracle

Vue+SpringBoot实现的多用户认证-博客管理平台，功能比较精简，方便扩展。

之前的VBlog是基于mysql数据库的，我把那个项目的数据库移植了改成用本地的OWi。。用户的Oracle数据库（懂的人自然懂），里面应该还有一些代码或者语句没有移植完毕，欢迎指出。

具体移植过程我做了记录可以参考：
https://www.jianshu.com/p/db064ff5fc40

别忘了使用sql文件是带Oracle后缀的那份。

这个项目是前后台在一起的，可以拆开开发。所以我上传了两个项目。

后台是：server

前台是：vblog，前台由于我本地一直下载不了全部的包，为了方便使用，我把全部的node_modules压缩上传了。使用的时候，需要解压到当前路径就行了。这样就不用再npm install了。


