prompt PL/SQL Developer import file
prompt Created on 2014年8月28日 by yushan
set feedback off
set define off
prompt Creating SYS_C_APP_CONSTS...
create table SYS_C_APP_CONSTS
(
  CONST_TYPE        VARCHAR2(32),
  CONST_NAME        VARCHAR2(32) not null,
  CONST_VALUE       VARCHAR2(32),
  DATA_TYPE         VARCHAR2(16),
  CONST_DESCRIPTION VARCHAR2(64),
  SEQ               NUMBER,
  LM_USER           VARCHAR2(32),
  LM_TIME           DATE
)
;
comment on table SYS_C_APP_CONSTS
  is 'com.wabacus.util.Consts.java,wabacus定义的 final static,这里记录一下,便于授权使用';
comment on column SYS_C_APP_CONSTS.CONST_TYPE
  is '常量分类';
comment on column SYS_C_APP_CONSTS.CONST_NAME
  is '常量名称
';
comment on column SYS_C_APP_CONSTS.CONST_VALUE
  is '值
';
comment on column SYS_C_APP_CONSTS.DATA_TYPE
  is '数据类型
';
comment on column SYS_C_APP_CONSTS.CONST_DESCRIPTION
  is '常量说明
';
comment on column SYS_C_APP_CONSTS.SEQ
  is '次序
';
comment on column SYS_C_APP_CONSTS.LM_USER
  is '修改人
';
comment on column SYS_C_APP_CONSTS.LM_TIME
  is '修改时间
';
alter table SYS_C_APP_CONSTS
  add primary key (CONST_NAME)
  using index 
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_APP_DATE...
create table SYS_C_APP_DATE
(
  REPORT_DATE    DATE not null,
  YEAR_STR       VARCHAR2(4),
  MONTH_STR      VARCHAR2(2),
  DAY_STR        VARCHAR2(2),
  WEEK_NUM       VARCHAR2(16),
  YEAR_MONTH_STR VARCHAR2(8),
  DATE_STRING    VARCHAR2(16),
  DATE_TYPE      VARCHAR2(16),
  LM_USER        VARCHAR2(32),
  LM_TIME        DATE
)
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_APP_DATE
  is '日期,供查询等使用.事先跑好这个表的数据';
comment on column SYS_C_APP_DATE.REPORT_DATE
  is '日期,pk';
comment on column SYS_C_APP_DATE.YEAR_STR
  is '年份';
comment on column SYS_C_APP_DATE.MONTH_STR
  is '月份';
comment on column SYS_C_APP_DATE.DAY_STR
  is '日';
comment on column SYS_C_APP_DATE.WEEK_NUM
  is '星期几';
comment on column SYS_C_APP_DATE.YEAR_MONTH_STR
  is '年月,例如2013-01';
comment on column SYS_C_APP_DATE.DATE_STRING
  is '日期字串,例如2013-01-17';
comment on column SYS_C_APP_DATE.DATE_TYPE
  is '日期类型(正常出勤日,周末,法定假日等)normal/weekend/holiday';
comment on column SYS_C_APP_DATE.LM_USER
  is '修改人';
comment on column SYS_C_APP_DATE.LM_TIME
  is '修改时间';

prompt Creating SYS_C_APP_LOG...
create table SYS_C_APP_LOG
(
  LOG_ID         VARCHAR2(32) not null,
  LOG_DATE       DATE not null,
  LOG_TITLE      VARCHAR2(64) not null,
  SYSTEM_VERSION VARCHAR2(64),
  UPDATE_DETAIL  VARCHAR2(1024),
  LM_USER        VARCHAR2(32),
  LM_TIME        DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_APP_LOG
  is '系统更新日志';
comment on column SYS_C_APP_LOG.LOG_ID
  is 'ID,pk,uuid';
comment on column SYS_C_APP_LOG.LOG_DATE
  is '更新日期';
comment on column SYS_C_APP_LOG.LOG_TITLE
  is '标题';
comment on column SYS_C_APP_LOG.SYSTEM_VERSION
  is '版本号';
comment on column SYS_C_APP_LOG.UPDATE_DETAIL
  is '更新内容';
comment on column SYS_C_APP_LOG.LM_USER
  is '"修改人
"';
comment on column SYS_C_APP_LOG.LM_TIME
  is '修改时间
';
alter table SYS_C_APP_LOG
  add primary key (LOG_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_APP_MENU...
create table SYS_C_APP_MENU
(
  MENU_ID   VARCHAR2(64) not null,
  MENU_NAME VARCHAR2(64) not null,
  SEQ       NUMBER,
  LM_USER   VARCHAR2(32),
  LM_TIME   DATE,
  MENU_TYPE VARCHAR2(128)
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_APP_MENU
  is '系统菜单设置';
comment on column SYS_C_APP_MENU.MENU_ID
  is '菜单编号
';
comment on column SYS_C_APP_MENU.MENU_NAME
  is '菜单名称
';
comment on column SYS_C_APP_MENU.SEQ
  is '顺序
';
comment on column SYS_C_APP_MENU.LM_USER
  is '修改人
';
comment on column SYS_C_APP_MENU.LM_TIME
  is '修改时间
';
comment on column SYS_C_APP_MENU.MENU_TYPE
  is '正常菜单类型请填写 normal; 链接填写 url#index.jsp 或者 url#http://www.google.com.hk
';
alter table SYS_C_APP_MENU
  add primary key (MENU_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_APP_MNLT...
create table SYS_C_APP_MNLT
(
  ID        VARCHAR2(64) not null,
  MENU_ID   VARCHAR2(64) not null,
  GROUP_ID  VARCHAR2(64) not null,
  PAGE_ID   VARCHAR2(64) not null,
  PAGE_NAME VARCHAR2(64),
  URL_PARAM VARCHAR2(100),
  SEQ       NUMBER,
  IS_SHOW   VARCHAR2(8) not null,
  LM_USER   VARCHAR2(32),
  LM_TIME   DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_APP_MNLT
  is '系统菜单列表';
comment on column SYS_C_APP_MNLT.ID
  is 'ID,pk,uuid
';
comment on column SYS_C_APP_MNLT.MENU_ID
  is '菜单编号
';
comment on column SYS_C_APP_MNLT.GROUP_ID
  is '用户组
';
comment on column SYS_C_APP_MNLT.PAGE_ID
  is '页面ID
';
comment on column SYS_C_APP_MNLT.PAGE_NAME
  is '页面名称
';
comment on column SYS_C_APP_MNLT.URL_PARAM
  is 'url参数
';
comment on column SYS_C_APP_MNLT.SEQ
  is '顺序';
comment on column SYS_C_APP_MNLT.IS_SHOW
  is '是否显示
';
comment on column SYS_C_APP_MNLT.LM_USER
  is '修改人
';
comment on column SYS_C_APP_MNLT.LM_TIME
  is '修改时间
';
alter table SYS_C_APP_MNLT
  add primary key (ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_APP_RESPONSE...
create table SYS_C_APP_RESPONSE
(
  ACTION_DATE   DATE,
  PAGE_ID       VARCHAR2(64),
  START_TIME    TIMESTAMP(6),
  END_TIME      TIMESTAMP(6),
  RESPONSE_TIME NUMBER,
  USER_ID       VARCHAR2(32),
  ACTION_TYPE   VARCHAR2(32)
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_APP_RESPONSE
  is '页面响应时间';
comment on column SYS_C_APP_RESPONSE.ACTION_DATE
  is '访问日期';
comment on column SYS_C_APP_RESPONSE.PAGE_ID
  is '页面ID';
comment on column SYS_C_APP_RESPONSE.START_TIME
  is '开始时间';
comment on column SYS_C_APP_RESPONSE.END_TIME
  is '结束时间';
comment on column SYS_C_APP_RESPONSE.RESPONSE_TIME
  is '页面响应时间(毫秒)';
comment on column SYS_C_APP_RESPONSE.USER_ID
  is '用户ID';
comment on column SYS_C_APP_RESPONSE.ACTION_TYPE
  is '访问类型(normal和ajax)';

prompt Creating SYS_C_PER_DSPL...
create table SYS_C_PER_DSPL
(
  USER_ID           VARCHAR2(32) not null,
  PAGE_ID           VARCHAR2(64) not null,
  REPORT_ID         VARCHAR2(64) not null,
  PERSONALIZE_TYPE  VARCHAR2(32) not null,
  PERSONALIZE_VALUE VARCHAR2(64)
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_PER_DSPL
  is '保存用户个性化信息(包括列选择,列排序,列拖动)';
comment on column SYS_C_PER_DSPL.USER_ID
  is '工号
';
comment on column SYS_C_PER_DSPL.PAGE_ID
  is '页面ID
';
comment on column SYS_C_PER_DSPL.REPORT_ID
  is 'reportID
';
comment on column SYS_C_PER_DSPL.PERSONALIZE_TYPE
  is '个性化信息类型,如列选择,列排序,列拖动
';
comment on column SYS_C_PER_DSPL.PERSONALIZE_VALUE
  is '个性化信息值
';
alter table SYS_C_PER_DSPL
  add primary key (USER_ID, PAGE_ID, REPORT_ID, PERSONALIZE_TYPE)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_PER_FVOR...
create table SYS_C_PER_FVOR
(
  USER_ID   VARCHAR2(32) not null,
  PAGE_ID   VARCHAR2(64) not null,
  URL_PARAM VARCHAR2(64),
  SEQ       NUMBER,
  LM_TIME   DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_PER_FVOR
  is '用户收藏';
comment on column SYS_C_PER_FVOR.USER_ID
  is '帐号
';
comment on column SYS_C_PER_FVOR.PAGE_ID
  is '页面ID
';
comment on column SYS_C_PER_FVOR.URL_PARAM
  is 'url参数
';
comment on column SYS_C_PER_FVOR.SEQ
  is '次序
';
comment on column SYS_C_PER_FVOR.LM_TIME
  is '操作时间
';
alter table SYS_C_PER_FVOR
  add primary key (USER_ID, PAGE_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_GPPC...
create table SYS_C_SEC_GPPC
(
  GROUP_ID       VARCHAR2(64) not null,
  CHILD_GROUP_ID VARCHAR2(64) not null,
  SEQ            NUMBER,
  LM_USER        VARCHAR2(32),
  LM_TIME        DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_GPPC
  is '组_父子关系表(Parent-child relationship)';
comment on column SYS_C_SEC_GPPC.GROUP_ID
  is '组别
';
comment on column SYS_C_SEC_GPPC.CHILD_GROUP_ID
  is '子组别
';
comment on column SYS_C_SEC_GPPC.SEQ
  is '次序
';
comment on column SYS_C_SEC_GPPC.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_GPPC.LM_TIME
  is '修改时间
';
alter table SYS_C_SEC_GPPC
  add primary key (GROUP_ID, CHILD_GROUP_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_GPPV...
create table SYS_C_SEC_GPPV
(
  GROUP_ID     VARCHAR2(64) not null,
  PRIVILEGE_ID VARCHAR2(64) not null,
  LM_USER      VARCHAR2(32),
  LM_TIME      DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_GPPV
  is '组,权限关联';
comment on column SYS_C_SEC_GPPV.GROUP_ID
  is '组别,fk_sys_c_sec_gppv_1(sys_c_sec_grop.group_id)
';
comment on column SYS_C_SEC_GPPV.PRIVILEGE_ID
  is '权限组,fk_sys_c_sec_gppv_2(sys_c_sec_priv.privilege_id)
';
comment on column SYS_C_SEC_GPPV.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_GPPV.LM_TIME
  is '修改时间
';
alter table SYS_C_SEC_GPPV
  add primary key (GROUP_ID, PRIVILEGE_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_GROP...
create table SYS_C_SEC_GROP
(
  GROUP_ID          VARCHAR2(64) not null,
  GROUP_DESCRIPTION VARCHAR2(64),
  LM_USER           VARCHAR2(32),
  LM_TIME           DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_GROP
  is '组';
comment on column SYS_C_SEC_GROP.GROUP_ID
  is '组别,PK
';
comment on column SYS_C_SEC_GROP.GROUP_DESCRIPTION
  is '描述
';
comment on column SYS_C_SEC_GROP.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_GROP.LM_TIME
  is '修改时间
';
alter table SYS_C_SEC_GROP
  add primary key (GROUP_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_PAGE...
create table SYS_C_SEC_PAGE
(
  PAGE_ID          VARCHAR2(64) not null,
  PAGE_NAME        VARCHAR2(64),
  PAGE_DESCRIPTION VARCHAR2(64),
  HITS             NUMBER default 0,
  LM_USER          VARCHAR2(32),
  LM_TIME          DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_PAGE
  is '页面(将所有page注册进该表,以便授权等操作)(2013-1-26修改,删除内部组件的信息,只保留pageid,增加hits功能)';
comment on column SYS_C_SEC_PAGE.PAGE_ID
  is '页面ID
';
comment on column SYS_C_SEC_PAGE.PAGE_NAME
  is '页面名称
';
comment on column SYS_C_SEC_PAGE.PAGE_DESCRIPTION
  is '描述
';
comment on column SYS_C_SEC_PAGE.HITS
  is '点击率,default 0
';
comment on column SYS_C_SEC_PAGE.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_PAGE.LM_TIME
  is '修改时间
';
alter table SYS_C_SEC_PAGE
  add primary key (PAGE_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_PRIV...
create table SYS_C_SEC_PRIV
(
  PRIVILEGE_ID          VARCHAR2(64) not null,
  PRIORITY              NUMBER,
  PRIVILEGE_DESCRIPTION VARCHAR2(64),
  LM_USER               VARCHAR2(32),
  LM_TIME               DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_PRIV
  is '权限';
comment on column SYS_C_SEC_PRIV.PRIVILEGE_ID
  is '权限组,PK
';
comment on column SYS_C_SEC_PRIV.PRIORITY
  is '权限等级,(这个初衷是权限有冲突时用,未实现)
';
comment on column SYS_C_SEC_PRIV.PRIVILEGE_DESCRIPTION
  is '权限描述
';
comment on column SYS_C_SEC_PRIV.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_PRIV.LM_TIME
  is '修改时间
';
alter table SYS_C_SEC_PRIV
  add primary key (PRIVILEGE_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_PVLT...
create table SYS_C_SEC_PVLT
(
  ID               VARCHAR2(64) not null,
  PRIVILEGE_ID     VARCHAR2(64) not null,
  PAGE_ID          VARCHAR2(64) not null,
  COMPONENT_ID     VARCHAR2(64),
  PART_TYPE        VARCHAR2(64),
  PART_ID          VARCHAR2(64),
  PERMISSION_TYPE  VARCHAR2(32),
  PERMISSION_VALUE VARCHAR2(32),
  LM_USER          VARCHAR2(32),
  LM_TIME          DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_PVLT
  is '权限页面关联(授权)';
comment on column SYS_C_SEC_PVLT.ID
  is 'ID,pk,uuid
';
comment on column SYS_C_SEC_PVLT.PRIVILEGE_ID
  is '权限组,fk_sys_c_sec_pvlt_1(sys_c_sec_priv.privilege_id)
';
comment on column SYS_C_SEC_PVLT.PAGE_ID
  is '页面ID
';
comment on column SYS_C_SEC_PVLT.COMPONENT_ID
  is '组件ID
';
comment on column SYS_C_SEC_PVLT.PART_TYPE
  is '组件部分
';
comment on column SYS_C_SEC_PVLT.PART_ID
  is '组件元素
';
comment on column SYS_C_SEC_PVLT.PERMISSION_TYPE
  is '权限类型
';
comment on column SYS_C_SEC_PVLT.PERMISSION_VALUE
  is '权限值
';
comment on column SYS_C_SEC_PVLT.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_PVLT.LM_TIME
  is '修改时间
';
alter table SYS_C_SEC_PVLT
  add primary key (ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SEC_USER...
create table SYS_C_SEC_USER
(
  USER_ID    VARCHAR2(32) not null,
  USER_NAME  VARCHAR2(32),
  GROUP_ID   VARCHAR2(64),
  IS_ENABLE  VARCHAR2(8),
  SKIN       VARCHAR2(32),
  LM_USER    VARCHAR2(32),
  LM_TIME    DATE,
  PASSWORD   VARCHAR2(64),
  DEPARTMENT VARCHAR2(64)
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SEC_USER
  is '帐号';
comment on column SYS_C_SEC_USER.USER_ID
  is '帐号,PK
';
comment on column SYS_C_SEC_USER.USER_NAME
  is '姓名
';
comment on column SYS_C_SEC_USER.GROUP_ID
  is '
组,fk_sys_c_sec_user_1(sys_c_sec_grop.group_id)
';
comment on column SYS_C_SEC_USER.IS_ENABLE
  is '是否启用,默认Y
';
comment on column SYS_C_SEC_USER.SKIN
  is '用户主题
';
comment on column SYS_C_SEC_USER.LM_USER
  is '修改人
';
comment on column SYS_C_SEC_USER.LM_TIME
  is '修改时间
';
comment on column SYS_C_SEC_USER.PASSWORD
  is '密码';
comment on column SYS_C_SEC_USER.DEPARTMENT
  is '部门
';
alter table SYS_C_SEC_USER
  add primary key (USER_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_C_SET_PARM...
create table SYS_C_SET_PARM
(
  PARAM_TYPE  VARCHAR2(64) not null,
  PARAM_NAME  VARCHAR2(64),
  PARAM_ID    VARCHAR2(64) not null,
  PARAM_VALUE VARCHAR2(64),
  SEQ         NUMBER,
  LM_USER     VARCHAR2(32),
  LM_TIME     DATE
) 
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_C_SET_PARM
  is '参数设置';
comment on column SYS_C_SET_PARM.PARAM_TYPE
  is '参数类别
';
comment on column SYS_C_SET_PARM.PARAM_NAME
  is '描述
';
comment on column SYS_C_SET_PARM.PARAM_ID
  is '参数ID,请不要随意修改
';
comment on column SYS_C_SET_PARM.PARAM_VALUE
  is '参数值
';
comment on column SYS_C_SET_PARM.SEQ
  is '次序
';
comment on column SYS_C_SET_PARM.LM_USER
  is '修改人
';
comment on column SYS_C_SET_PARM.LM_TIME
  is '修改时间
';
alter table SYS_C_SET_PARM
  add primary key (PARAM_TYPE, PARAM_ID)
  using index  
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Loading SYS_C_APP_CONSTS...
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'BUTTON_PART', 'button', 'String', null, 7, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'DATA_PART', 'data', 'String', null, 4, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'FOOTER_PART', 'footer', 'String', null, 5, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'HEADER_PART', 'header', 'String', null, 2, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'NAVIGATE_PART', 'navigate', 'String', null, 6, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'SEARCH_PART', 'searchbox', 'String', null, 1, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.KEY', 'TITLE_PART', 'title', 'String', null, 3, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.NAVIGATE_PART', 'next', 'next', 'String', null, 2, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.NAVIGATE_PART', 'pageno', 'pageno', 'String', null, 5, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.NAVIGATE_PART', 'previous', 'previous', 'String', null, 1, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.NAVIGATE_PART', 'recordcount', 'recordcount', 'String', null, 4, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.NAVIGATE_PART', 'sequence', 'sequence', 'String', null, 3, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{add}', 'type{add}', 'String', '添加按钮', 1, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{delete}', 'type{delete}', 'String', '删除按钮', 2, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{modify}', 'type{modify}', 'String', '修改按钮', 3, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{pdf}', 'type{pdf}', 'String', '导出Pdf', 10, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{plainexcel}', 'type{plainexcel}', 'String', '导出纯数据', 7, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{reset}', 'type{reset}', 'String', '重置按钮', 4, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{richexcel}', 'type{richexcel}', 'String', '导出Excel', 8, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{save}', 'type{save}', 'String', '保存按钮', 5, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{search}', 'type{search}', 'String', '查询', 6, null, null);
insert into SYS_C_APP_CONSTS (CONST_TYPE, CONST_NAME, CONST_VALUE, DATA_TYPE, CONST_DESCRIPTION, SEQ, LM_USER, LM_TIME)
values ('Consts.BUTTON_PART', 'type{word}', 'type{word}', 'String', '导出Word', 9, null, null);
commit;
prompt 22 records loaded
prompt Loading SYS_C_APP_DATE...
prompt Table is empty
prompt Loading SYS_C_APP_LOG...
insert into SYS_C_APP_LOG (LOG_ID, LOG_DATE, LOG_TITLE, SYSTEM_VERSION, UPDATE_DETAIL, LM_USER, LM_TIME)
values ('4028235347c4433e0147c4433e680001', to_date('01-08-2014', 'dd-mm-yyyy'), '决策支持报表', '1.1', '增加决策支持类报表', 'admin', to_date('11-08-2014 16:51:13', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_LOG (LOG_ID, LOG_DATE, LOG_TITLE, SYSTEM_VERSION, UPDATE_DETAIL, LM_USER, LM_TIME)
values ('402823b54737d053014737d053250000', to_date('15-07-2014', 'dd-mm-yyyy'), '系统上线', '1.0', '1.增加页面的Footer;<br>2.增加系统更新日志;', 'admin', to_date('11-08-2014 16:51:13', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 2 records loaded
prompt Loading SYS_C_APP_MENU...
insert into SYS_C_APP_MENU (MENU_ID, MENU_NAME, SEQ, LM_USER, LM_TIME, MENU_TYPE)
values ('home_page', '首页', -1, 'admin', to_date('10-06-2014 14:19:13', 'dd-mm-yyyy hh24:mi:ss'), 'url#index.jsp');
insert into SYS_C_APP_MENU (MENU_ID, MENU_NAME, SEQ, LM_USER, LM_TIME, MENU_TYPE)
values ('setting', '&nbsp;', 99999, 'admin', to_date('19-04-2014 10:41:09', 'dd-mm-yyyy hh24:mi:ss'), 'normal');
insert into SYS_C_APP_MENU (MENU_ID, MENU_NAME, SEQ, LM_USER, LM_TIME, MENU_TYPE)
values ('system_setting', '系统设置', 9000, 'admin', to_date('22-01-2014 17:06:10', 'dd-mm-yyyy hh24:mi:ss'), 'normal');
insert into SYS_C_APP_MENU (MENU_ID, MENU_NAME, SEQ, LM_USER, LM_TIME, MENU_TYPE)
values ('update_config', '热部署', 999999, 'admin', to_date('05-06-2014 09:11:45', 'dd-mm-yyyy hh24:mi:ss'), 'url#ShowReport.wx?ACTIONTYPE=updateconfig');
commit;
prompt 4 records loaded
prompt Loading SYS_C_APP_MNLT...
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('297e088641a6a42e0141a6a42ed70000', 'home_page', 'admin', 'home', '功能列表', null, null, 'Y', 'admin', to_date('22-01-2014 20:08:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('8a3344513c152d3b013c152d3b490000', 'system_setting', 'admin', 'system_group', '组别', null, 10, 'Y', 'hilltop', to_date('09-10-2013 14:49:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('8a3344513c152d3b013c152d3b4b0001', 'system_setting', 'admin', 'system_menu', '菜单设置', null, 20, 'Y', 'admin', to_date('14-01-2014 09:31:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('8a3344513c152d3b013c152d3b4d0002', 'system_setting', 'admin', 'system_page_list', '页面', null, 30, 'Y', 'admin', to_date('14-01-2014 09:31:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('8a3344513c152d3b013c152d3b4e0003', 'system_setting', 'admin', 'system_privilege', '权限', null, 50, 'Y', 'admin', to_date('14-01-2014 09:31:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('8a3344513c152d3b013c152d3b500004', 'system_setting', 'admin', 'system_user_account', '帐号', null, 40, 'Y', 'admin', to_date('14-01-2014 09:31:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('8a33d3a33c90b0e9013c90b0e9b60000', 'system_setting', 'admin', 'system_consts', 'wabacus常量定义', null, 70, 'Y', 'admin', to_date('14-01-2014 09:31:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('297e08864577995d0145779a06930001', 'setting', 'admin', 'user_setting', '用户信息', null, null, 'N', 'admin', to_date('19-04-2014 10:39:59', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('297e08864737b5df014737b612710001', 'system_setting', 'admin', 'system_update_log', '系统更新日志', null, 80, 'Y', 'admin', to_date('15-07-2014 09:49:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('402823b54737d7b0014737d7b0a50000', 'setting', 'admin', 'system_about', '关于地面运营报表系统', null, null, 'N', 'admin', to_date('15-07-2014 16:04:20', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_APP_MNLT (ID, MENU_ID, GROUP_ID, PAGE_ID, PAGE_NAME, URL_PARAM, SEQ, IS_SHOW, LM_USER, LM_TIME)
values ('4028827a3c3ca92a013c3ca92a430000', 'system_setting', 'admin', 'system_parameter', '参数设置', null, 60, 'Y', 'admin', to_date('14-01-2014 09:31:59', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 11 records loaded
prompt Loading SYS_C_APP_RESPONSE...
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:26:04.523000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:26:04.573000', 'dd-mm-yyyy hh24:mi:ss.ff'), 50, null, 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:28:11.316000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:11.571000', 'dd-mm-yyyy hh24:mi:ss.ff'), 255, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:17.674000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:17.744000', 'dd-mm-yyyy hh24:mi:ss.ff'), 70, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:18.108000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:18.179000', 'dd-mm-yyyy hh24:mi:ss.ff'), 71, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:20.832000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:20.885000', 'dd-mm-yyyy hh24:mi:ss.ff'), 53, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:22.841000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:22.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), 28, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:24.292000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:24.364000', 'dd-mm-yyyy hh24:mi:ss.ff'), 72, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:26.317000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:26.347000', 'dd-mm-yyyy hh24:mi:ss.ff'), 30, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:29.047000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:29.077000', 'dd-mm-yyyy hh24:mi:ss.ff'), 30, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:34.520000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:34.592000', 'dd-mm-yyyy hh24:mi:ss.ff'), 72, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:36.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:36.657000', 'dd-mm-yyyy hh24:mi:ss.ff'), 62, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:43.830000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:43.879000', 'dd-mm-yyyy hh24:mi:ss.ff'), 49, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:47.889000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:47.952000', 'dd-mm-yyyy hh24:mi:ss.ff'), 63, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:28:55.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:55.586000', 'dd-mm-yyyy hh24:mi:ss.ff'), 103, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_page_list', to_timestamp('28-08-2014 10:29:18.382000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:29:18.467000', 'dd-mm-yyyy hh24:mi:ss.ff'), 85, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_privilege', to_timestamp('28-08-2014 10:30:13.141000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:30:13.177000', 'dd-mm-yyyy hh24:mi:ss.ff'), 36, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.286000', 'dd-mm-yyyy hh24:mi:ss.ff'), 61, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.897000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.912000', 'dd-mm-yyyy hh24:mi:ss.ff'), 41, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:23.175000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:35.903000', 'dd-mm-yyyy hh24:mi:ss.ff'), 12728, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:13.036000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:13.124000', 'dd-mm-yyyy hh24:mi:ss.ff'), 88, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:14.517000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:14.550000', 'dd-mm-yyyy hh24:mi:ss.ff'), 33, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:17.117000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:17.146000', 'dd-mm-yyyy hh24:mi:ss.ff'), 29, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:21.673000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:21.699000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:28:37.323000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:28:37.481000', 'dd-mm-yyyy hh24:mi:ss.ff'), 158, null, 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:28:38.688000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:28:38.764000', 'dd-mm-yyyy hh24:mi:ss.ff'), 76, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:32:24.560000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:32:24.731000', 'dd-mm-yyyy hh24:mi:ss.ff'), 171, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 12:31:00.592000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:00.610000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 12:31:03.382000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:03.400000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 12:31:08.097000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:08.146000', 'dd-mm-yyyy hh24:mi:ss.ff'), 49, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 12:31:19.217000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:19.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:42.182000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:42.213000', 'dd-mm-yyyy hh24:mi:ss.ff'), 31, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:42.315000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:42.332000', 'dd-mm-yyyy hh24:mi:ss.ff'), 17, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 12:31:43.899000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:43.934000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_page_list', to_timestamp('28-08-2014 12:31:45.424000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:45.480000', 'dd-mm-yyyy hh24:mi:ss.ff'), 56, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_parameter', to_timestamp('28-08-2014 12:31:47.180000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:47.242000', 'dd-mm-yyyy hh24:mi:ss.ff'), 62, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_update_log', to_timestamp('28-08-2014 12:31:48.992000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:49.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), 27, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:52.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:52.309000', 'dd-mm-yyyy hh24:mi:ss.ff'), 97, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:52.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:52.390000', 'dd-mm-yyyy hh24:mi:ss.ff'), 178, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:13.752000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:13.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), 29, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:13.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:14.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), 172, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:13.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:14.170000', 'dd-mm-yyyy hh24:mi:ss.ff'), 177, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 13:27:39.616000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:27:39.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), 36, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 13:48:13.175000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:13.231000', 'dd-mm-yyyy hh24:mi:ss.ff'), 56, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:19.524000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:19.602000', 'dd-mm-yyyy hh24:mi:ss.ff'), 78, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:26.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:26.266000', 'dd-mm-yyyy hh24:mi:ss.ff'), 83, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:31.492000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:31.549000', 'dd-mm-yyyy hh24:mi:ss.ff'), 57, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:36.754000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:36.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), 49, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:38.680000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:38.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), 55, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:40.912000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:40.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), 55, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:41.001000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:41.029000', 'dd-mm-yyyy hh24:mi:ss.ff'), 28, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:41.762000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:41.808000', 'dd-mm-yyyy hh24:mi:ss.ff'), 46, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:43.926000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:43.955000', 'dd-mm-yyyy hh24:mi:ss.ff'), 29, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:44.891000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:44.941000', 'dd-mm-yyyy hh24:mi:ss.ff'), 50, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:47.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:48.002000', 'dd-mm-yyyy hh24:mi:ss.ff'), 22, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:48.804000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:48.865000', 'dd-mm-yyyy hh24:mi:ss.ff'), 61, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:51.526000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:51.555000', 'dd-mm-yyyy hh24:mi:ss.ff'), 29, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_privilege', to_timestamp('28-08-2014 10:30:13.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:30:13.388000', 'dd-mm-yyyy hh24:mi:ss.ff'), 85, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_privilege', to_timestamp('28-08-2014 10:30:16.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:30:16.761000', 'dd-mm-yyyy hh24:mi:ss.ff'), 86, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.246000', 'dd-mm-yyyy hh24:mi:ss.ff'), 21, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), 6, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.894000', 'dd-mm-yyyy hh24:mi:ss.ff'), 23, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:35.932000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:36.031000', 'dd-mm-yyyy hh24:mi:ss.ff'), 99, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:35.932000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:36.042000', 'dd-mm-yyyy hh24:mi:ss.ff'), 110, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:34:14.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:34:14.335000', 'dd-mm-yyyy hh24:mi:ss.ff'), 32, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:36:15.008000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:36:15.120000', 'dd-mm-yyyy hh24:mi:ss.ff'), 112, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:42:00.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:42:00.112000', 'dd-mm-yyyy hh24:mi:ss.ff'), 107, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:17.418000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:17.452000', 'dd-mm-yyyy hh24:mi:ss.ff'), 34, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:17.924000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:17.948000', 'dd-mm-yyyy hh24:mi:ss.ff'), 24, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:17.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:17.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), 10, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:17.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:18.023000', 'dd-mm-yyyy hh24:mi:ss.ff'), 43, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:18.083000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:18.116000', 'dd-mm-yyyy hh24:mi:ss.ff'), 33, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:18.124000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:18.150000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:55:03.591000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:55:03.605000', 'dd-mm-yyyy hh24:mi:ss.ff'), 14, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:36.667000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:36.756000', 'dd-mm-yyyy hh24:mi:ss.ff'), 89, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:38.695000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:38.715000', 'dd-mm-yyyy hh24:mi:ss.ff'), 20, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:38.870000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:38.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:39.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:39.061000', 'dd-mm-yyyy hh24:mi:ss.ff'), 15, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:17.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:17.913000', 'dd-mm-yyyy hh24:mi:ss.ff'), 41, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:20.021000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:20.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), 32, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:20.823000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:20.850000', 'dd-mm-yyyy hh24:mi:ss.ff'), 27, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:28:57.367000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:28:57.545000', 'dd-mm-yyyy hh24:mi:ss.ff'), 178, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 12:31:38.647000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:38.687000', 'dd-mm-yyyy hh24:mi:ss.ff'), 40, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:42.315000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:42.342000', 'dd-mm-yyyy hh24:mi:ss.ff'), 27, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:15.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:15.844000', 'dd-mm-yyyy hh24:mi:ss.ff'), 25, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:15.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:15.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), 17, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:15.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:15.998000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:15.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:16.032000', 'dd-mm-yyyy hh24:mi:ss.ff'), 69, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 13:48:10.590000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:10.718000', 'dd-mm-yyyy hh24:mi:ss.ff'), 128, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 13:48:12.898000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:12.928000', 'dd-mm-yyyy hh24:mi:ss.ff'), 30, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 13:48:13.175000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:13.202000', 'dd-mm-yyyy hh24:mi:ss.ff'), 27, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 13:48:13.175000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:13.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), 31, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:56.601000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:56.636000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:56.904000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:56.937000', 'dd-mm-yyyy hh24:mi:ss.ff'), 33, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:29:04.194000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:29:04.220000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_privilege', to_timestamp('28-08-2014 10:30:14.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:30:14.241000', 'dd-mm-yyyy hh24:mi:ss.ff'), 76, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_privilege', to_timestamp('28-08-2014 10:30:16.605000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:30:16.649000', 'dd-mm-yyyy hh24:mi:ss.ff'), 44, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:18.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:18.077000', 'dd-mm-yyyy hh24:mi:ss.ff'), 31, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:42.315000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:42.399000', 'dd-mm-yyyy hh24:mi:ss.ff'), 84, 'admin', 'ajax');
commit;
prompt 100 records committed...
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 12:31:43.769000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:43.804000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:13.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:14.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), 172, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:28:55.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:55.569000', 'dd-mm-yyyy hh24:mi:ss.ff'), 86, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:17.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:17.989000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:18.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:18.250000', 'dd-mm-yyyy hh24:mi:ss.ff'), 25, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:35.932000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:36.034000', 'dd-mm-yyyy hh24:mi:ss.ff'), 102, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:33:35.932000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:33:36.086000', 'dd-mm-yyyy hh24:mi:ss.ff'), 154, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:49:15.302000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:49:15.337000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:49:16.709000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:49:16.742000', 'dd-mm-yyyy hh24:mi:ss.ff'), 33, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:49:17.215000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:49:17.245000', 'dd-mm-yyyy hh24:mi:ss.ff'), 30, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:51:30.496000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:51:30.534000', 'dd-mm-yyyy hh24:mi:ss.ff'), 38, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:52:28.201000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:52:28.224000', 'dd-mm-yyyy hh24:mi:ss.ff'), 23, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:52:30.096000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:52:30.115000', 'dd-mm-yyyy hh24:mi:ss.ff'), 19, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:52:31.785000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:52:31.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:52:34.858000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:52:34.897000', 'dd-mm-yyyy hh24:mi:ss.ff'), 39, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:53:05.868000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:53:05.927000', 'dd-mm-yyyy hh24:mi:ss.ff'), 59, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:53:12.773000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:53:12.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), 46, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:53:13.618000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:53:13.651000', 'dd-mm-yyyy hh24:mi:ss.ff'), 33, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:53:14.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:53:14.351000', 'dd-mm-yyyy hh24:mi:ss.ff'), 29, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:59:30.349000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:59:30.430000', 'dd-mm-yyyy hh24:mi:ss.ff'), 81, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:02:21.018000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:02:21.098000', 'dd-mm-yyyy hh24:mi:ss.ff'), 80, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:31:21.213000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:31:21.326000', 'dd-mm-yyyy hh24:mi:ss.ff'), 113, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:42.315000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:42.367000', 'dd-mm-yyyy hh24:mi:ss.ff'), 52, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 12:31:50.213000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:50.251000', 'dd-mm-yyyy hh24:mi:ss.ff'), 38, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:52.082000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:52.109000', 'dd-mm-yyyy hh24:mi:ss.ff'), 27, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:13.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:14.218000', 'dd-mm-yyyy hh24:mi:ss.ff'), 225, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:41:15.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:41:15.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), 17, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 13:27:40.687000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:27:40.737000', 'dd-mm-yyyy hh24:mi:ss.ff'), 50, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 13:48:13.175000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:13.266000', 'dd-mm-yyyy hh24:mi:ss.ff'), 91, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 13:48:14.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:14.193000', 'dd-mm-yyyy hh24:mi:ss.ff'), 55, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_page_list', to_timestamp('28-08-2014 13:48:15.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:15.233000', 'dd-mm-yyyy hh24:mi:ss.ff'), 50, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 13:48:16.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:48:16.207000', 'dd-mm-yyyy hh24:mi:ss.ff'), 42, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:20:28.682000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:20:28.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), 53, null, 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:20.367000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:20.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), 94, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:22.710000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:22.790000', 'dd-mm-yyyy hh24:mi:ss.ff'), 80, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:27.113000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:27.192000', 'dd-mm-yyyy hh24:mi:ss.ff'), 79, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:28.933000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:29.004000', 'dd-mm-yyyy hh24:mi:ss.ff'), 71, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:30.924000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:30.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), 56, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:33.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:33.569000', 'dd-mm-yyyy hh24:mi:ss.ff'), 86, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:33.611000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:33.637000', 'dd-mm-yyyy hh24:mi:ss.ff'), 26, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_menu', to_timestamp('28-08-2014 10:28:52.642000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:52.723000', 'dd-mm-yyyy hh24:mi:ss.ff'), 81, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:28:53.646000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:53.696000', 'dd-mm-yyyy hh24:mi:ss.ff'), 50, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:28:55.321000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:55.364000', 'dd-mm-yyyy hh24:mi:ss.ff'), 43, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:28:55.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:55.573000', 'dd-mm-yyyy hh24:mi:ss.ff'), 90, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 10:28:55.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:55.630000', 'dd-mm-yyyy hh24:mi:ss.ff'), 147, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'user_setting', to_timestamp('28-08-2014 10:28:59.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:28:59.027000', 'dd-mm-yyyy hh24:mi:ss.ff'), 27, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:29:02.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:29:02.263000', 'dd-mm-yyyy hh24:mi:ss.ff'), 37, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:16.511000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:16.550000', 'dd-mm-yyyy hh24:mi:ss.ff'), 39, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:47:18.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:47:18.059000', 'dd-mm-yyyy hh24:mi:ss.ff'), 13, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 10:52:22.496000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:52:22.531000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 10:52:25.650000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 10:52:25.666000', 'dd-mm-yyyy hh24:mi:ss.ff'), 16, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:38.048000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:38.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), 24, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:38.550000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:38.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:39.221000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:39.236000', 'dd-mm-yyyy hh24:mi:ss.ff'), 15, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 11:04:39.373000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:39.388000', 'dd-mm-yyyy hh24:mi:ss.ff'), 15, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_update_log', to_timestamp('28-08-2014 11:04:41.911000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:04:41.946000', 'dd-mm-yyyy hh24:mi:ss.ff'), 35, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:15.911000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:15.940000', 'dd-mm-yyyy hh24:mi:ss.ff'), 29, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:11:16.466000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:11:16.494000', 'dd-mm-yyyy hh24:mi:ss.ff'), 28, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 11:28:41.597000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 11:28:41.646000', 'dd-mm-yyyy hh24:mi:ss.ff'), 49, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 12:31:04.192000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:04.207000', 'dd-mm-yyyy hh24:mi:ss.ff'), 15, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 12:31:05.551000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:05.613000', 'dd-mm-yyyy hh24:mi:ss.ff'), 62, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 12:31:06.938000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:06.957000', 'dd-mm-yyyy hh24:mi:ss.ff'), 19, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 12:31:17.955000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:17.971000', 'dd-mm-yyyy hh24:mi:ss.ff'), 16, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 12:31:31.131000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:31.173000', 'dd-mm-yyyy hh24:mi:ss.ff'), 42, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 12:31:32.808000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:32.855000', 'dd-mm-yyyy hh24:mi:ss.ff'), 47, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:52.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:52.237000', 'dd-mm-yyyy hh24:mi:ss.ff'), 25, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_group', to_timestamp('28-08-2014 12:31:52.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 12:31:52.324000', 'dd-mm-yyyy hh24:mi:ss.ff'), 112, 'admin', 'ajax');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'system_about', to_timestamp('28-08-2014 13:27:33.031000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:27:33.049000', 'dd-mm-yyyy hh24:mi:ss.ff'), 18, 'admin', 'normal');
insert into SYS_C_APP_RESPONSE (ACTION_DATE, PAGE_ID, START_TIME, END_TIME, RESPONSE_TIME, USER_ID, ACTION_TYPE)
values (to_date('28-08-2014', 'dd-mm-yyyy'), 'home', to_timestamp('28-08-2014 13:27:34.563000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('28-08-2014 13:27:34.602000', 'dd-mm-yyyy hh24:mi:ss.ff'), 39, 'admin', 'normal');
commit;
prompt 169 records loaded
prompt Loading SYS_C_PER_DSPL...
prompt Table is empty
prompt Loading SYS_C_PER_FVOR...
insert into SYS_C_PER_FVOR (USER_ID, PAGE_ID, URL_PARAM, SEQ, LM_TIME)
values ('hilltop', 'system_group', null, null, null);
commit;
prompt 1 records loaded
prompt Loading SYS_C_SEC_GPPC...
insert into SYS_C_SEC_GPPC (GROUP_ID, CHILD_GROUP_ID, SEQ, LM_USER, LM_TIME)
values ('admin', 'admin', 10, 'hilltop', to_date('03-07-2013 22:10:39', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading SYS_C_SEC_GPPV...
insert into SYS_C_SEC_GPPV (GROUP_ID, PRIVILEGE_ID, LM_USER, LM_TIME)
values ('admin', 'admin', 'admin', to_date('09-07-2014 14:16:40', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading SYS_C_SEC_GROP...
insert into SYS_C_SEC_GROP (GROUP_ID, GROUP_DESCRIPTION, LM_USER, LM_TIME)
values ('admin', '超级管理员', 'hilltop', to_date('03-07-2013 22:12:11', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Loading SYS_C_SEC_PAGE...
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_consts', 'wabacus常量定义', null, 23, 'hilltop', null);
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_group', '组别', null, 232, 'hilltop', null);
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_menu', '菜单', null, 658, 'hilltop', null);
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_page_list', '页面', null, 356, 'hilltop', null);
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_parameter', '参数设置', null, 35, 'hilltop', null);
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_privilege', '权限', null, 233, 'hilltop', null);
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_update_log', '系统更新日志', null, 32, 'admin', to_date('15-07-2014 09:49:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SEC_PAGE (PAGE_ID, PAGE_NAME, PAGE_DESCRIPTION, HITS, LM_USER, LM_TIME)
values ('system_user_account', '帐号', null, 93, 'hilltop', null);
commit;
prompt 8 records loaded
prompt Loading SYS_C_SEC_PRIV...
insert into SYS_C_SEC_PRIV (PRIVILEGE_ID, PRIORITY, PRIVILEGE_DESCRIPTION, LM_USER, LM_TIME)
values ('admin', 1, '系统管理员', 'hilltop', null);
commit;
prompt 1 records loaded
prompt Loading SYS_C_SEC_PVLT...
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c83dd56013c84114ec90003', 'admin', 'system_privilege', 'report1', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c84193d9c0001', 'admin', 'home', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c841bb07e000a', 'admin', 'system_parameter', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c841cdb45000b', 'admin', 'system_menu', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c841cdb47000c', 'admin', 'system_user_account', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c841cdb49000d', 'admin', 'system_group', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c841cdb4a000e', 'admin', 'system_page_list', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('4028827a3c8417d7013c841d84580010', 'admin', 'system_user_account_form', 'report1', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('8a33d3a33c90b0e9013c90b10fa10001', 'admin', 'system_consts', 'common_vpanel', null, null, 'display', 'true', 'hilltop', null);
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('297e08864577995d014577995df80000', 'admin', 'user_setting', 'common_vpanel', null, null, 'display', 'true', 'admin', to_date('19-04-2014 09:28:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('297e08864577fa0d014577fa0dab0000', 'admin', 'change_password', 'common_vpanel', null, null, 'display', 'true', 'admin', to_date('19-04-2014 11:14:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SEC_PVLT (ID, PRIVILEGE_ID, PAGE_ID, COMPONENT_ID, PART_TYPE, PART_ID, PERMISSION_TYPE, PERMISSION_VALUE, LM_USER, LM_TIME)
values ('297e08864737b5df014737b5dfc20000', 'admin', 'system_update_log', 'common_vpanel', null, null, 'display', 'true', 'admin', to_date('15-07-2014 09:49:31', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 12 records loaded
prompt Loading SYS_C_SEC_USER...
insert into SYS_C_SEC_USER (USER_ID, USER_NAME, GROUP_ID, IS_ENABLE, SKIN, LM_USER, LM_TIME, PASSWORD, DEPARTMENT)
values ('admin', '攻城师', 'admin', 'Y', null, 'admin', to_date('15-08-2014 10:46:11', 'dd-mm-yyyy hh24:mi:ss'), 'Due2bkAVWVY=', null);
insert into SYS_C_SEC_USER (USER_ID, USER_NAME, GROUP_ID, IS_ENABLE, SKIN, LM_USER, LM_TIME, PASSWORD, DEPARTMENT)
values ('hilltop', '管理员', 'admin', 'Y', 'cares', 'hilltop', to_date('30-09-2013 15:19:33', 'dd-mm-yyyy hh24:mi:ss'), 'mnKZT3xVqKI=', null);
commit;
prompt 2 records loaded
prompt Loading SYS_C_SET_PARM...
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('sex', '性别', 'F', '女', 2, 'hilltop', to_date('09-10-2013 14:50:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('sex', '性别', 'M', '男', 1, '904125', to_date('01-04-2013 14:07:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('shift', '班次', 'D', '白班', 1, '904125', to_date('01-04-2013 14:07:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('shift', '班次', 'N', '夜班', 2, 'admin', to_date('24-01-2014 16:15:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('skin', '皮肤样式', 'cares', 'cares', 10, 'admin', to_date('19-04-2014 09:28:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('skin', '皮肤样式', 'qq', 'qq', 30, 'admin', to_date('19-04-2014 09:28:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_C_SET_PARM (PARAM_TYPE, PARAM_NAME, PARAM_ID, PARAM_VALUE, SEQ, LM_USER, LM_TIME)
values ('skin', '皮肤样式', 'vista', 'vista', 20, 'admin', to_date('19-04-2014 09:28:06', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
set feedback on
set define on
prompt Done.
