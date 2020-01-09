-- Create table
create table ARTICLE
(
  id          NUMBER(11) not null,
  title       VARCHAR2(255),
  mdcontent   CLOB,
  htmlcontent CLOB,
  summary     CLOB,
  cid         NUMBER(11),
  u_id        NUMBER(11),
  publishdate TIMESTAMP(6),
  edittime    TIMESTAMP(6),
  state       NUMBER(11),
  pageview    NUMBER(11) default '0'
);
-- Add comments to the columns
comment on column ARTICLE.mdcontent
  is 'md文件源码';
comment on column ARTICLE.htmlcontent
  is 'html源码';
comment on column ARTICLE.state
  is '0表示草稿箱，1表示已发表，2表示已删除';
-- Create/Recreate primary, unique and foreign key constraints
alter table ARTICLE
  add constraint PK_ARTICLE_ID primary key (ID);

insert into article (ID, TITLE, MDCONTENT, HTMLCONTENT, SUMMARY, CID, U_ID, PUBLISHDATE, EDITTIME, STATE, PAGEVIEW)
values (119, 'Git学习资料', '关于Git的用法我们已经写七篇文章，介绍了Git的不少用法，这些足以应付工作中90%的需求了，剩下的10%就需要小伙伴们在工作中自己慢慢总结了，我这里再给小伙伴们推荐一点Git学习资料，为我们的Git系列画上一个句号。  \n\n\n![Image 012.png](http://localhost:80/blogimg/20171224/9f628a1d-2acd-412f-b9a6-b52acf779138_Image012.png)\n\n## 书\n\n推荐两本个人觉得很不错的书：  \n\n1.《GitHub入门与实践》  \n2.《Pro Git》  \n\n《GitHub入门与实践》秉承了日系技术书刊一贯的“手把手教学”风格，作者用亲切的语言，简明扼要的介绍，配以生动详实的示例一步步讲解GitHub和Git的使用方法。《Pro Git》作为Git官方推荐书籍，《Pro Git》值得Git初学者和爱好者认真阅读一遍。  \n\n## 网站\n\n1.https://learngitbranching.js.org  \n\n链接是一个git学习网站，我们可以直接在上面练习git命令。  \n\n## 博客\n\n推荐本公号前面的几篇教程:  \n\n---\n1.[Git概述](https://mp.weixin.qq.com/s/3RheAJ9LYKK5BnVr331h5A)  \n2.[Git基本操作](https://mp.weixin.qq.com/s/S1T4wy3srmLvXgIjvpVEwg)  \n3.[Git中的各种后悔药](https://mp.weixin.qq.com/s/WiLnRQfDVITHMYzGl9pAzQ)  \n4.[Git分支管理](https://mp.weixin.qq.com/s/9OZY7x9DSyRO7T56TyDJ8Q)  \n5.[Git关联远程仓库](https://mp.weixin.qq.com/s/x5bRe4QBMoVFKv5jNl9iRw)  \n6.[Git工作区储藏兼谈分支管理中的一个小问题](https://mp.weixin.qq.com/s/S5rrBQoWwof7n3ZRTrZGWQ)  \n7.[Git标签管理](https://mp.weixin.qq.com/s/Jwr4fjCw7MBUD-CalVXhZQ)  \n\n---  \n\n更多JavaEE和Git资料请关注公众号：   \n\n![公众号二维码](https://mmbiz.qpic.cn/mmbiz_jpg/GvtDGKK4uYkO6VEW6XfkovAic6oA5LegzZKeRj0OwOZZQ8ic1tEoBOVBBOreAB9Dz32CN9MU19slrjn5qvxbR7pQ/0?wx_fmt=jpeg)   ', '<p>关于Git的用法我们已经写七篇文章，介绍了Git的不少用法，这些足以应付工作中90%的需求了，剩下的10%就需要小伙伴们在工作中自己慢慢总结了，我这里再给小伙伴们推荐一点Git学习资料，为我们的Git系列画上一个句号。</p>\n<p><img src=\"http://localhost:80/blogimg/20171224/9f628a1d-2acd-412f-b9a6-b52acf779138_Image012.png\" alt=\"Image 012.png\" /></p>\n<h2>书</h2>\n<p>推荐两本个人觉得很不错的书：</p>\n<p>1.《GitHub入门与实践》<br />\n2.《Pro Git》</p>\n<p>《GitHub入门与实践》秉承了日系技术书刊一贯的“手把手教学”风格，作者用亲切的语言，简明扼要的介绍，配以生动详实的示例一步步讲解GitHub和Git的使用方法。《Pro Git》作为Git官方推荐书籍，《Pro Git》值得Git初学者和爱好者认真阅读一遍。</p>\n<h2>网站</h2>\n<p>1.https://learngitbranching.js.org</p>\n<p>链接是一个git学习网站，我们可以直接在上面练习git命令。</p>\n<h2>博客</h2>\n<p>推荐本公号前面的几篇教程:</p>\n<hr />\n<p>1.<a href=\"https://mp.weixin.qq.com/s/3RheAJ9LYKK5BnVr331h5A\" target=\"_blank\">Git概述</a><br />\n2.<a href=\"https://mp.weixin.qq.com/s/S1T4wy3srmLvXgIjvpVEwg\" target=\"_blank\">Git基本操作</a><br />\n3.<a href=\"https://mp.weixin.qq.com/s/WiLnRQfDVITHMYzGl9pAzQ\" target=\"_blank\">Git中的各种后悔药</a><br />\n4.<a href=\"https://mp.weixin.qq.com/s/9OZY7x9DSyRO7T56TyDJ8Q\" target=\"_blank\">Git分支管理</a><br />\n5.<a href=\"https://mp.weixin.qq.com/s/x5bRe4QBMoVFKv5jNl9iRw\" target=\"_blank\">Git关联远程仓库</a><br />\n6.<a href=\"https://mp.weixin.qq.com/s/S5rrBQoWwof7n3ZRTrZGWQ\" target=\"_blank\">Git工作区储藏兼谈分支管理中的一个小问题</a><br />\n7.<a href=\"https://mp.weixin.qq.com/s/Jwr4fjCw7MBUD-CalVXhZQ\" target=\"_blank\">Git标签管理</a></p>\n<hr />\n<p>更多JavaEE和Git资料请关注公众号：</p>\n<p><img src=\"https://mmbiz.qpic.cn/mmbiz_jpg/GvtDGKK4uYkO6VEW6XfkovAic6oA5LegzZKeRj0OwOZZQ8ic1tEoBOVBBOreAB9Dz32CN9MU19slrjn5qvxbR7pQ/0?wx_fmt=jpeg\" alt=\"公众号二维码\" /></p>\n', '关于Git的用法我们已经写七篇文章，介绍了Git的不少用法，这些足以应付工作中90%的需求了，剩下的', 61, 7, '09-JAN-20 09.41.34.000000 AM', '09-JAN-20 09.41.34.000000 AM', 1, 5);

insert into article (ID, TITLE, MDCONTENT, HTMLCONTENT, SUMMARY, CID, U_ID, PUBLISHDATE, EDITTIME, STATE, PAGEVIEW)
values (14201130, '1', '1', '<p>1</p>
', '1
', 56, 7, '09-JAN-20 11.12.44.915000 AM', '09-JAN-20 11.12.44.915000 AM', 1, 2);

insert into article (ID, TITLE, MDCONTENT, HTMLCONTENT, SUMMARY, CID, U_ID, PUBLISHDATE, EDITTIME, STATE, PAGEVIEW)
values (14201161, '2', '2', '<p>2</p>
', '2
', 58, 7, '09-JAN-20 11.13.49.411000 AM', '09-JAN-20 11.13.49.411000 AM', 1, 5);

-- ----------------------------
-- Table structure for article_tags
-- ----------------------------
-- Create table
create table ARTICLE_TAGS
(
  id  NUMBER(11) not null,
  aid NUMBER(11),
  tid NUMBER(11)
)
;
-- Create/Recreate primary, unique and foreign key constraints
alter table ARTICLE_TAGS
  add constraint PK_ARTICLE_TAGS_ID primary key (ID);
alter table ARTICLE_TAGS
  add constraint ARTICLE_TAGS_FK_1 foreign key (AID)
  references ARTICLE (ID) on delete cascade;
alter table ARTICLE_TAGS
  add constraint ARTICLE_TAGS_FK_2 foreign key (TID)
  references TAGS (ID);

-- ----------------------------
-- Records of article_tags
-- ----------------------------
insert into article_tags (ID, AID, TID)
values (32, 119, 40);

-- ----------------------------
-- Table structure for category
-- ----------------------------
create table CATEGORY
(
  id           NUMBER(11) not null,
  catename     VARCHAR2(64),
  created_date DATE
);
-- Create/Recreate primary, unique and foreign key constraints
alter table CATEGORY
  add constraint PK_CATEGORY_ID primary key (ID);

-- ----------------------------
-- Records of category
-- ----------------------------
insert into category (ID, CATENAME, CREATED_DATE)
values (56, 'Vue223', to_date('09-01-2020 09:51:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into category (ID, CATENAME, CREATED_DATE)
values (58, '人生感悟', to_date('09-01-2020 09:51:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into category (ID, CATENAME, CREATED_DATE)
values (60, 'JavaEE', to_date('09-01-2020 09:51:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into category (ID, CATENAME, CREATED_DATE)
values (61, 'Git', to_date('09-01-2020 09:51:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into category (ID, CATENAME, CREATED_DATE)
values (62, 'Linux', to_date('09-01-2020 09:51:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into category (ID, CATENAME, CREATED_DATE)
values (64, 'MongoDB', to_date('09-01-2020 09:51:15', 'dd-mm-yyyy hh24:mi:ss'));

-- ----------------------------
-- Table structure for comments
-- ----------------------------
create table COMMENTS
(
  id          NUMBER(11) not null,
  aid         NUMBER(11),
  content     CLOB,
  publishdate TIMESTAMP(6),
  parentid    NUMBER(11),
  u_id        NUMBER(11)
);
-- Add comments to the columns
comment on column COMMENTS.parentid
  is '-1表示正常回复，其他值表示是评论的回复';
-- Create/Recreate primary, unique and foreign key constraints
alter table COMMENTS
  add constraint PK_COMMENTS_ID primary key (ID);
alter table COMMENTS
  add constraint COMMENTS_ARTICLE_FK_1 foreign key (AID)
  references ARTICLE (ID);
alter table COMMENTS
  add constraint COMMENTS_IBFK_2 foreign key (U_ID)
  references VL_USER (ID);
alter table COMMENTS
  add constraint COMMENTS_IBFK_3 foreign key (PARENTID)
  references COMMENTS (ID);


-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for pv
-- ----------------------------
-- Create table
create table PV
(
  id        NUMBER(11) not null,
  countdate DATE,
  pv        NUMBER(11),
  u_id      NUMBER(11)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table PV
  add constraint PK_PV_ID primary key (ID);
alter table PV
  add constraint PV_USER_FK_1 foreign key (U_ID)
  references VL_USER (ID);


-- ----------------------------
-- Records of pv
-- ----------------------------
insert into pv (ID, COUNTDATE, PV, U_ID)
values (1, to_date('09-01-2020 10:05:07', 'dd-mm-yyyy hh24:mi:ss'), 20, 6);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (2, to_date('09-01-2020 10:05:07', 'dd-mm-yyyy hh24:mi:ss'), 14, 7);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (4, to_date('09-01-2020 10:05:07', 'dd-mm-yyyy hh24:mi:ss'), 40, 6);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (5, to_date('09-01-2020 10:05:08', 'dd-mm-yyyy hh24:mi:ss'), 23, 7);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (6, to_date('09-01-2020 10:05:08', 'dd-mm-yyyy hh24:mi:ss'), 11, 6);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (7, to_date('09-01-2020 10:05:08', 'dd-mm-yyyy hh24:mi:ss'), 32, 7);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (26, to_date('09-01-2020 10:05:08', 'dd-mm-yyyy hh24:mi:ss'), 2, 6);

insert into pv (ID, COUNTDATE, PV, U_ID)
values (27, to_date('09-01-2020 10:05:08', 'dd-mm-yyyy hh24:mi:ss'), 77, 7);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
create table ROLES
(
  id   NUMBER(11) not null,
  name VARCHAR2(32)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table ROLES
  add constraint PK_ROLES_ID primary key (ID);


-- ----------------------------
-- Records of roles
-- ----------------------------
insert into roles (ID, NAME)
values (1, '超级管理员');

insert into roles (ID, NAME)
values (2, '普通用户');

insert into roles (ID, NAME)
values (3, '测试角色1');

insert into roles (ID, NAME)
values (4, '测试角色2');

insert into roles (ID, NAME)
values (5, '测试角色3');

-- ----------------------------
-- Table structure for roles_user
-- ----------------------------
-- Create table
create table ROLES_USER
(
  id   NUMBER(11) not null,
  rid  NUMBER(11) default '2',
  u_id NUMBER(11)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table ROLES_USER
  add constraint PK_ROLES_USER_ID primary key (ID);
alter table ROLES_USER
  add constraint ROLES_USER_IBFK_1 foreign key (RID)
  references ROLES (ID);
alter table ROLES_USER
  add constraint ROLES_USER_IBFK_2 foreign key (U_ID)
  references VL_USER (ID) on delete cascade;


-- ----------------------------
-- Records of roles_user
-- ----------------------------
insert into roles_user (ID, RID, U_ID)
values (8, 2, 7);

insert into roles_user (ID, RID, U_ID)
values (9, 1, 7);

insert into roles_user (ID, RID, U_ID)
values (17, 5, 7);

insert into roles_user (ID, RID, U_ID)
values (106, 2, 14);

insert into roles_user (ID, RID, U_ID)
values (108, 2, 16);

insert into roles_user (ID, RID, U_ID)
values (109, 2, 17);

insert into roles_user (ID, RID, U_ID)
values (110, 2, 18);

insert into roles_user (ID, RID, U_ID)
values (111, 2, 19);

insert into roles_user (ID, RID, U_ID)
values (112, 2, 20);

insert into roles_user (ID, RID, U_ID)
values (119, 2, 15);

insert into roles_user (ID, RID, U_ID)
values (120, 5, 15);

insert into roles_user (ID, RID, U_ID)
values (121, 2, 6);

insert into roles_user (ID, RID, U_ID)
values (123, 2, 13);

insert into roles_user (ID, RID, U_ID)
values (124, 3, 13);

insert into roles_user (ID, RID, U_ID)
values (128, 2, 10);

insert into roles_user (ID, RID, U_ID)
values (129, 5, 10);

insert into roles_user (ID, RID, U_ID)
values (130, 1, 6);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
-- Create table
create table TAGS
(
  id      NUMBER(11) not null,
  tagname VARCHAR2(32)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table TAGS
  add constraint PK_TAGS_ID primary key (ID);

-- ----------------------------
-- Records of tags
-- ----------------------------
insert into tags (ID, TAGNAME)
values (66, '666');

insert into tags (ID, TAGNAME)
values (35, 'Ajax');

insert into tags (ID, TAGNAME)
values (36, 'Dubbo');

insert into tags (ID, TAGNAME)
values (40, 'git');

insert into tags (ID, TAGNAME)
values (33, 'Linux');

insert into tags (ID, TAGNAME)
values (45, 'mongodb');

insert into tags (ID, TAGNAME)
values (42, 'spring');

insert into tags (ID, TAGNAME)
values (44, 'SpringSecurity');

insert into tags (ID, TAGNAME)
values (37, 'websocket');

insert into tags (ID, TAGNAME)
values (34, 'Zookeeper');

insert into tags (ID, TAGNAME)
values (50, '图片上传');

insert into tags (ID, TAGNAME)
values (51, '图片预览');

insert into tags (ID, TAGNAME)
values (41, '学习资料');

insert into tags (ID, TAGNAME)
values (65, '杂谈');

-- ----------------------------
-- Table structure for user
-- ----------------------------
-- Create table
create table VL_USER
(
  id       NUMBER(11) not null,
  username VARCHAR2(64),
  nickname VARCHAR2(64),
  password VARCHAR2(255),
  enabled  NUMBER(1) default '1',
  email    VARCHAR2(64),
  userface VARCHAR2(255),
  regtime  TIMESTAMP(6)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table VL_USER
  add constraint PK_USER_ID primary key (ID);


-- ----------------------------
-- Records of user
-- ----------------------------
insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (6, 'linghu', '令狐葱', '202cb962ac59075b964b07152d234b70', 1, 'linghu@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920326&di=44a6fa6b597d86f475c2b15fa93008dd&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2015-01-12%2F023019564.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (7, 'sang', '江南一点雨', '202cb962ac59075b964b07152d234b70', 1, '743282053@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (10, 'qiaofeng', '乔峰', '202cb962ac59075b964b07152d234b70', 1, 'qiaofeng@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (13, 'duanzhengchun', '段正淳', '202cb962ac59075b964b07152d234b70', 1, 'duanzhengchun@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (14, 'chenjialuo', '陈家洛', '202cb962ac59075b964b07152d234b70', 1, 'chenjialuo@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (15, 'yuanchengzhi', '袁承志', '202cb962ac59075b964b07152d234b70', 1, 'yuanchengzhi@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (16, 'chuliuxiang', '楚留香', '202cb962ac59075b964b07152d234b70', 1, 'chuliuxiang@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.44.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (17, 'baizhantang', '白展堂', '202cb962ac59075b964b07152d234b70', 1, 'baizhantang@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.45.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (18, 'renwoxing', '任我行', '202cb962ac59075b964b07152d234b70', 1, 'renwoxing@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.45.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (19, 'zuolengchan', '左冷禅', '202cb962ac59075b964b07152d234b70', 1, 'zuolengchan@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.45.000000 AM');

insert into vl_user (ID, USERNAME, NICKNAME, PASSWORD, ENABLED, EMAIL, USERFACE, REGTIME)
values (20, 'fengqingyang', '风清扬', '202cb962ac59075b964b07152d234b70', 1, 'fengqingyang@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', '09-JAN-20 10.04.45.000000 AM');

-- ----------------------------
-- View structure for pvview
-- ----------------------------
create or replace view pvview as
select sum(pv) as pv,u_id from pv group by u_id;

-- ----------------------------
-- View structure for totalpvview
-- ----------------------------
create or replace view totalpvview as
select sum(pageView) as totalPv,u_id from article a group by u_id;

