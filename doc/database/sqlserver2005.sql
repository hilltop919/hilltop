/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : 228
Source Server Version : 110200
Source Host           : 192.168.163.228:1521
Source Schema         : HILLTOP

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2014-09-28 09:59:39
*/


-- ----------------------------
-- Table structure for ACT_EVT_LOG
-- ----------------------------
DROP TABLE [ACT_EVT_LOG]
GO
CREATE TABLE [ACT_EVT_LOG] (
[LOG_NR_] decimal(19) NOT NULL ,
[TYPE_] nvarchar(64) NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[TIME_STAMP_] datetime NOT NULL ,
[USER_ID_] nvarchar(255) NULL ,
[DATA_] varbinary(MAX) NULL ,
[LOCK_OWNER_] nvarchar(255) NULL ,
[LOCK_TIME_] datetime NULL ,
[IS_PROCESSED_] decimal(3) NULL 
)


GO

-- ----------------------------
-- Records of ACT_EVT_LOG
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_GE_BYTEARRAY
-- ----------------------------
DROP TABLE [ACT_GE_BYTEARRAY]
GO
CREATE TABLE [ACT_GE_BYTEARRAY] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[NAME_] nvarchar(255) NULL ,
[DEPLOYMENT_ID_] nvarchar(64) NULL ,
[BYTES_] varbinary(MAX) NULL ,
[GENERATED_] decimal(1) NULL 
)


GO

-- ----------------------------
-- Records of ACT_GE_BYTEARRAY
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_GE_PROPERTY
-- ----------------------------
DROP TABLE [ACT_GE_PROPERTY]
GO
CREATE TABLE [ACT_GE_PROPERTY] (
[NAME_] nvarchar(64) NOT NULL ,
[VALUE_] nvarchar(300) NULL ,
[REV_] decimal(38,4) NULL 
)


GO

-- ----------------------------
-- Records of ACT_GE_PROPERTY
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [ACT_GE_PROPERTY] ([NAME_], [VALUE_], [REV_]) VALUES (N'schema.version', N'5.16.3.0', N'1')
GO
GO
INSERT INTO [ACT_GE_PROPERTY] ([NAME_], [VALUE_], [REV_]) VALUES (N'schema.history', N'create(5.16.3.0)', N'1')
GO
GO
INSERT INTO [ACT_GE_PROPERTY] ([NAME_], [VALUE_], [REV_]) VALUES (N'next.dbid', N'1', N'1')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_ACTINST
-- ----------------------------
DROP TABLE [ACT_HI_ACTINST]
GO
CREATE TABLE [ACT_HI_ACTINST] (
[ID_] nvarchar(64) NOT NULL ,
[PROC_DEF_ID_] nvarchar(64) NOT NULL ,
[PROC_INST_ID_] nvarchar(64) NOT NULL ,
[EXECUTION_ID_] nvarchar(64) NOT NULL ,
[ACT_ID_] nvarchar(255) NOT NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[CALL_PROC_INST_ID_] nvarchar(64) NULL ,
[ACT_NAME_] nvarchar(255) NULL ,
[ACT_TYPE_] nvarchar(255) NOT NULL ,
[ASSIGNEE_] nvarchar(255) NULL ,
[START_TIME_] datetime NOT NULL ,
[END_TIME_] datetime NULL ,
[DURATION_] decimal(19) NULL ,
[TENANT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_ACTINST
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_ATTACHMENT
-- ----------------------------
DROP TABLE [ACT_HI_ATTACHMENT]
GO
CREATE TABLE [ACT_HI_ATTACHMENT] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[USER_ID_] nvarchar(255) NULL ,
[NAME_] nvarchar(255) NULL ,
[DESCRIPTION_] nvarchar(2000) NULL ,
[TYPE_] nvarchar(255) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[URL_] nvarchar(2000) NULL ,
[CONTENT_ID_] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_ATTACHMENT
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_COMMENT
-- ----------------------------
DROP TABLE [ACT_HI_COMMENT]
GO
CREATE TABLE [ACT_HI_COMMENT] (
[ID_] nvarchar(64) NOT NULL ,
[TYPE_] nvarchar(255) NULL ,
[TIME_] datetime NOT NULL ,
[USER_ID_] nvarchar(255) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[ACTION_] nvarchar(255) NULL ,
[MESSAGE_] nvarchar(2000) NULL ,
[FULL_MSG_] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_COMMENT
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_DETAIL
-- ----------------------------
DROP TABLE [ACT_HI_DETAIL]
GO
CREATE TABLE [ACT_HI_DETAIL] (
[ID_] nvarchar(64) NOT NULL ,
[TYPE_] nvarchar(255) NOT NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[ACT_INST_ID_] nvarchar(64) NULL ,
[NAME_] nvarchar(255) NOT NULL ,
[VAR_TYPE_] nvarchar(64) NULL ,
[REV_] decimal(38,4) NULL ,
[TIME_] datetime NOT NULL ,
[BYTEARRAY_ID_] nvarchar(64) NULL ,
[DOUBLE_] decimal(10,10) NULL ,
[LONG_] decimal(19) NULL ,
[TEXT_] nvarchar(2000) NULL ,
[TEXT2_] nvarchar(2000) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_DETAIL
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_IDENTITYLINK
-- ----------------------------
DROP TABLE [ACT_HI_IDENTITYLINK]
GO
CREATE TABLE [ACT_HI_IDENTITYLINK] (
[ID_] nvarchar(64) NOT NULL ,
[GROUP_ID_] nvarchar(255) NULL ,
[TYPE_] nvarchar(255) NULL ,
[USER_ID_] nvarchar(255) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_IDENTITYLINK
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_PROCINST
-- ----------------------------
DROP TABLE [ACT_HI_PROCINST]
GO
CREATE TABLE [ACT_HI_PROCINST] (
[ID_] nvarchar(64) NOT NULL ,
[PROC_INST_ID_] nvarchar(64) NOT NULL ,
[BUSINESS_KEY_] nvarchar(255) NULL ,
[PROC_DEF_ID_] nvarchar(64) NOT NULL ,
[START_TIME_] datetime NOT NULL ,
[END_TIME_] datetime NULL ,
[DURATION_] decimal(19) NULL ,
[START_USER_ID_] nvarchar(255) NULL ,
[START_ACT_ID_] nvarchar(255) NULL ,
[END_ACT_ID_] nvarchar(255) NULL ,
[SUPER_PROCESS_INSTANCE_ID_] nvarchar(64) NULL ,
[DELETE_REASON_] nvarchar(2000) NULL ,
[TENANT_ID_] nvarchar(255) NULL ,
[NAME_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_PROCINST
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_TASKINST
-- ----------------------------
DROP TABLE [ACT_HI_TASKINST]
GO
CREATE TABLE [ACT_HI_TASKINST] (
[ID_] nvarchar(64) NOT NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL ,
[TASK_DEF_KEY_] nvarchar(255) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[PARENT_TASK_ID_] nvarchar(64) NULL ,
[NAME_] nvarchar(255) NULL ,
[DESCRIPTION_] nvarchar(2000) NULL ,
[OWNER_] nvarchar(255) NULL ,
[ASSIGNEE_] nvarchar(255) NULL ,
[START_TIME_] datetime NOT NULL ,
[CLAIM_TIME_] datetime NULL ,
[END_TIME_] datetime NULL ,
[DURATION_] decimal(19) NULL ,
[DELETE_REASON_] nvarchar(2000) NULL ,
[PRIORITY_] decimal(38,4) NULL ,
[DUE_DATE_] datetime NULL ,
[FORM_KEY_] nvarchar(255) NULL ,
[CATEGORY_] nvarchar(255) NULL ,
[TENANT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_TASKINST
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_HI_VARINST
-- ----------------------------
DROP TABLE [ACT_HI_VARINST]
GO
CREATE TABLE [ACT_HI_VARINST] (
[ID_] nvarchar(64) NOT NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[NAME_] nvarchar(255) NOT NULL ,
[VAR_TYPE_] nvarchar(100) NULL ,
[REV_] decimal(38,4) NULL ,
[BYTEARRAY_ID_] nvarchar(64) NULL ,
[DOUBLE_] decimal(10,10) NULL ,
[LONG_] decimal(19) NULL ,
[TEXT_] nvarchar(2000) NULL ,
[TEXT2_] nvarchar(2000) NULL ,
[CREATE_TIME_] datetime NULL ,
[LAST_UPDATED_TIME_] datetime NULL 
)


GO

-- ----------------------------
-- Records of ACT_HI_VARINST
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_ID_GROUP
-- ----------------------------
DROP TABLE [ACT_ID_GROUP]
GO
CREATE TABLE [ACT_ID_GROUP] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[NAME_] nvarchar(255) NULL ,
[TYPE_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_ID_GROUP
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_ID_INFO
-- ----------------------------
DROP TABLE [ACT_ID_INFO]
GO
CREATE TABLE [ACT_ID_INFO] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[USER_ID_] nvarchar(64) NULL ,
[TYPE_] nvarchar(64) NULL ,
[KEY_] nvarchar(255) NULL ,
[VALUE_] nvarchar(255) NULL ,
[PASSWORD_] varbinary(MAX) NULL ,
[PARENT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_ID_INFO
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_ID_MEMBERSHIP
-- ----------------------------
DROP TABLE [ACT_ID_MEMBERSHIP]
GO
CREATE TABLE [ACT_ID_MEMBERSHIP] (
[USER_ID_] nvarchar(64) NOT NULL ,
[GROUP_ID_] nvarchar(64) NOT NULL 
)


GO

-- ----------------------------
-- Records of ACT_ID_MEMBERSHIP
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_ID_USER
-- ----------------------------
DROP TABLE [ACT_ID_USER]
GO
CREATE TABLE [ACT_ID_USER] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[FIRST_] nvarchar(255) NULL ,
[LAST_] nvarchar(255) NULL ,
[EMAIL_] nvarchar(255) NULL ,
[PWD_] nvarchar(255) NULL ,
[PICTURE_ID_] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of ACT_ID_USER
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RE_DEPLOYMENT
-- ----------------------------
DROP TABLE [ACT_RE_DEPLOYMENT]
GO
CREATE TABLE [ACT_RE_DEPLOYMENT] (
[ID_] nvarchar(64) NOT NULL ,
[NAME_] nvarchar(255) NULL ,
[CATEGORY_] nvarchar(255) NULL ,
[TENANT_ID_] nvarchar(255) NULL ,
[DEPLOY_TIME_] datetime NULL 
)


GO

-- ----------------------------
-- Records of ACT_RE_DEPLOYMENT
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RE_MODEL
-- ----------------------------
DROP TABLE [ACT_RE_MODEL]
GO
CREATE TABLE [ACT_RE_MODEL] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[NAME_] nvarchar(255) NULL ,
[KEY_] nvarchar(255) NULL ,
[CATEGORY_] nvarchar(255) NULL ,
[CREATE_TIME_] datetime NULL ,
[LAST_UPDATE_TIME_] datetime NULL ,
[VERSION_] decimal(38,4) NULL ,
[META_INFO_] nvarchar(2000) NULL ,
[DEPLOYMENT_ID_] nvarchar(64) NULL ,
[EDITOR_SOURCE_VALUE_ID_] nvarchar(64) NULL ,
[EDITOR_SOURCE_EXTRA_VALUE_ID_] nvarchar(64) NULL ,
[TENANT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RE_MODEL
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RE_PROCDEF
-- ----------------------------
DROP TABLE [ACT_RE_PROCDEF]
GO
CREATE TABLE [ACT_RE_PROCDEF] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[CATEGORY_] nvarchar(255) NULL ,
[NAME_] nvarchar(255) NULL ,
[KEY_] nvarchar(255) NOT NULL ,
[VERSION_] decimal(38,4) NOT NULL ,
[DEPLOYMENT_ID_] nvarchar(64) NULL ,
[RESOURCE_NAME_] nvarchar(2000) NULL ,
[DGRM_RESOURCE_NAME_] varchar(4000) NULL ,
[DESCRIPTION_] nvarchar(2000) NULL ,
[HAS_START_FORM_KEY_] decimal(1) NULL ,
[SUSPENSION_STATE_] decimal(38,4) NULL ,
[TENANT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RE_PROCDEF
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RU_EVENT_SUBSCR
-- ----------------------------
DROP TABLE [ACT_RU_EVENT_SUBSCR]
GO
CREATE TABLE [ACT_RU_EVENT_SUBSCR] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[EVENT_TYPE_] nvarchar(255) NOT NULL ,
[EVENT_NAME_] nvarchar(255) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[ACTIVITY_ID_] nvarchar(64) NULL ,
[CONFIGURATION_] nvarchar(255) NULL ,
[CREATED_] datetime NOT NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL ,
[TENANT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RU_EVENT_SUBSCR
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RU_EXECUTION
-- ----------------------------
DROP TABLE [ACT_RU_EXECUTION]
GO
CREATE TABLE [ACT_RU_EXECUTION] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[BUSINESS_KEY_] nvarchar(255) NULL ,
[PARENT_ID_] nvarchar(64) NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL ,
[SUPER_EXEC_] nvarchar(64) NULL ,
[ACT_ID_] nvarchar(255) NULL ,
[IS_ACTIVE_] decimal(1) NULL ,
[IS_CONCURRENT_] decimal(1) NULL ,
[IS_SCOPE_] decimal(1) NULL ,
[IS_EVENT_SCOPE_] decimal(1) NULL ,
[SUSPENSION_STATE_] decimal(38,4) NULL ,
[CACHED_ENT_STATE_] decimal(38,4) NULL ,
[TENANT_ID_] nvarchar(255) NULL ,
[NAME_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RU_EXECUTION
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RU_IDENTITYLINK
-- ----------------------------
DROP TABLE [ACT_RU_IDENTITYLINK]
GO
CREATE TABLE [ACT_RU_IDENTITYLINK] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[GROUP_ID_] nvarchar(255) NULL ,
[TYPE_] nvarchar(255) NULL ,
[USER_ID_] nvarchar(255) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RU_IDENTITYLINK
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RU_JOB
-- ----------------------------
DROP TABLE [ACT_RU_JOB]
GO
CREATE TABLE [ACT_RU_JOB] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[TYPE_] nvarchar(255) NOT NULL ,
[LOCK_EXP_TIME_] datetime NULL ,
[LOCK_OWNER_] nvarchar(255) NULL ,
[EXCLUSIVE_] decimal(1) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[PROCESS_INSTANCE_ID_] nvarchar(64) NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL ,
[RETRIES_] decimal(38,4) NULL ,
[EXCEPTION_STACK_ID_] nvarchar(64) NULL ,
[EXCEPTION_MSG_] nvarchar(2000) NULL ,
[DUEDATE_] datetime NULL ,
[REPEAT_] nvarchar(255) NULL ,
[HANDLER_TYPE_] nvarchar(255) NULL ,
[HANDLER_CFG_] nvarchar(2000) NULL ,
[TENANT_ID_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RU_JOB
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RU_TASK
-- ----------------------------
DROP TABLE [ACT_RU_TASK]
GO
CREATE TABLE [ACT_RU_TASK] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[PROC_DEF_ID_] nvarchar(64) NULL ,
[NAME_] nvarchar(255) NULL ,
[PARENT_TASK_ID_] nvarchar(64) NULL ,
[DESCRIPTION_] nvarchar(2000) NULL ,
[TASK_DEF_KEY_] nvarchar(255) NULL ,
[OWNER_] nvarchar(255) NULL ,
[ASSIGNEE_] nvarchar(255) NULL ,
[DELEGATION_] nvarchar(64) NULL ,
[PRIORITY_] decimal(38,4) NULL ,
[CREATE_TIME_] datetime NULL ,
[DUE_DATE_] datetime NULL ,
[CATEGORY_] nvarchar(255) NULL ,
[SUSPENSION_STATE_] decimal(38,4) NULL ,
[TENANT_ID_] nvarchar(255) NULL ,
[FORM_KEY_] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RU_TASK
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ACT_RU_VARIABLE
-- ----------------------------
DROP TABLE [ACT_RU_VARIABLE]
GO
CREATE TABLE [ACT_RU_VARIABLE] (
[ID_] nvarchar(64) NOT NULL ,
[REV_] decimal(38,4) NULL ,
[TYPE_] nvarchar(255) NOT NULL ,
[NAME_] nvarchar(255) NOT NULL ,
[EXECUTION_ID_] nvarchar(64) NULL ,
[PROC_INST_ID_] nvarchar(64) NULL ,
[TASK_ID_] nvarchar(64) NULL ,
[BYTEARRAY_ID_] nvarchar(64) NULL ,
[DOUBLE_] decimal(10,10) NULL ,
[LONG_] decimal(19) NULL ,
[TEXT_] nvarchar(2000) NULL ,
[TEXT2_] nvarchar(2000) NULL 
)


GO

-- ----------------------------
-- Records of ACT_RU_VARIABLE
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_APP_CONSTS
-- ----------------------------
DROP TABLE [SYS_C_APP_CONSTS]
GO
CREATE TABLE [SYS_C_APP_CONSTS] (
[CONST_TYPE] varchar(32) NULL ,
[CONST_NAME] varchar(32) NOT NULL ,
[CONST_VALUE] varchar(32) NULL ,
[DATA_TYPE] varchar(16) NULL ,
[CONST_DESCRIPTION] varchar(64) NULL ,
[SEQ] decimal(38,4) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'com.wabacus.util.Consts.java,wabacus定义的 final static,这里记录一下,便于授权使用'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'com.wabacus.util.Consts.java,wabacus定义的 final static,这里记录一下,便于授权使用'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'CONST_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'常量分类'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'常量分类'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'CONST_NAME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'常量名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_NAME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'常量名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_NAME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'CONST_VALUE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_VALUE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_VALUE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'DATA_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据类型
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'DATA_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据类型
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'DATA_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'CONST_DESCRIPTION')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'常量说明
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_DESCRIPTION'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'常量说明
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'CONST_DESCRIPTION'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'SEQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'SEQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'SEQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_CONSTS', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_CONSTS'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_APP_CONSTS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'BUTTON_PART', N'button', N'String', null, N'7', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'DATA_PART', N'data', N'String', null, N'4', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'FOOTER_PART', N'footer', N'String', null, N'5', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'HEADER_PART', N'header', N'String', null, N'2', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'NAVIGATE_PART', N'navigate', N'String', null, N'6', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'SEARCH_PART', N'searchbox', N'String', null, N'1', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.KEY', N'TITLE_PART', N'title', N'String', null, N'3', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.NAVIGATE_PART', N'next', N'next', N'String', null, N'2', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.NAVIGATE_PART', N'pageno', N'pageno', N'String', null, N'5', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.NAVIGATE_PART', N'previous', N'previous', N'String', null, N'1', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.NAVIGATE_PART', N'recordcount', N'recordcount', N'String', null, N'4', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.NAVIGATE_PART', N'sequence', N'sequence', N'String', null, N'3', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{add}', N'type{add}', N'String', N'添加按钮', N'1', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{delete}', N'type{delete}', N'String', N'删除按钮', N'2', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{modify}', N'type{modify}', N'String', N'修改按钮', N'3', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{pdf}', N'type{pdf}', N'String', N'导出Pdf', N'10', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{plainexcel}', N'type{plainexcel}', N'String', N'导出纯数据', N'7', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{reset}', N'type{reset}', N'String', N'重置按钮', N'4', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{richexcel}', N'type{richexcel}', N'String', N'导出Excel', N'8', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{save}', N'type{save}', N'String', N'保存按钮', N'5', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{search}', N'type{search}', N'String', N'查询', N'6', null, null)
GO
GO
INSERT INTO [SYS_C_APP_CONSTS] ([CONST_TYPE], [CONST_NAME], [CONST_VALUE], [DATA_TYPE], [CONST_DESCRIPTION], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'Consts.BUTTON_PART', N'type{word}', N'type{word}', N'String', N'导出Word', N'9', null, null)
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_APP_DATE
-- ----------------------------
DROP TABLE [SYS_C_APP_DATE]
GO
CREATE TABLE [SYS_C_APP_DATE] (
[REPORT_DATE] datetime NOT NULL ,
[YEAR_STR] varchar(4) NULL ,
[MONTH_STR] varchar(2) NULL ,
[DAY_STR] varchar(2) NULL ,
[WEEK_NUM] varchar(16) NULL ,
[YEAR_MONTH_STR] varchar(8) NULL ,
[DATE_STRING] varchar(16) NULL ,
[DATE_TYPE] varchar(16) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日期,供查询等使用.事先跑好这个表的数据'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日期,供查询等使用.事先跑好这个表的数据'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'REPORT_DATE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日期,pk'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'REPORT_DATE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日期,pk'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'REPORT_DATE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'YEAR_STR')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年份'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'YEAR_STR'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年份'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'YEAR_STR'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'MONTH_STR')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'月份'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'MONTH_STR'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'月份'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'MONTH_STR'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'DAY_STR')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'DAY_STR'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'DAY_STR'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'WEEK_NUM')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'星期几'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'WEEK_NUM'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'星期几'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'WEEK_NUM'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'YEAR_MONTH_STR')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年月,例如2013-01'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'YEAR_MONTH_STR'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年月,例如2013-01'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'YEAR_MONTH_STR'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'DATE_STRING')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日期字串,例如2013-01-17'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'DATE_STRING'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日期字串,例如2013-01-17'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'DATE_STRING'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'DATE_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日期类型(正常出勤日,周末,法定假日等)normal/weekend/holiday'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'DATE_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日期类型(正常出勤日,周末,法定假日等)normal/weekend/holiday'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'DATE_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_DATE', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_DATE'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_APP_DATE
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_APP_LOG
-- ----------------------------
DROP TABLE [SYS_C_APP_LOG]
GO
CREATE TABLE [SYS_C_APP_LOG] (
[LOG_ID] varchar(32) NOT NULL ,
[LOG_DATE] datetime NOT NULL ,
[LOG_TITLE] varchar(64) NOT NULL ,
[SYSTEM_VERSION] varchar(64) NULL ,
[UPDATE_DETAIL] varchar(1024) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统更新日志'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统更新日志'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'LOG_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ID,pk,uuid'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LOG_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID,pk,uuid'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LOG_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'LOG_DATE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新日期'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LOG_DATE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新日期'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LOG_DATE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'LOG_TITLE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LOG_TITLE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'标题'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LOG_TITLE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'SYSTEM_VERSION')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'版本号'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'SYSTEM_VERSION'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'版本号'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'SYSTEM_VERSION'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'UPDATE_DETAIL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新内容'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'UPDATE_DETAIL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新内容'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'UPDATE_DETAIL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'"修改人
"'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'"修改人
"'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_LOG', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_LOG'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_APP_LOG
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_APP_LOG] ([LOG_ID], [LOG_DATE], [LOG_TITLE], [SYSTEM_VERSION], [UPDATE_DETAIL], [LM_USER], [LM_TIME]) VALUES (N'4028235347c4433e0147c4433e680001', '2014-08-01 00:00:00', N'决策支持报表', N'1.0.1', N'● 增加：决策支持类报表', N'admin', '2014-09-15 16:35:29')
GO
GO
INSERT INTO [SYS_C_APP_LOG] ([LOG_ID], [LOG_DATE], [LOG_TITLE], [SYSTEM_VERSION], [UPDATE_DETAIL], [LM_USER], [LM_TIME]) VALUES (N'402823b54737d053014737d053250000', '2014-07-15 00:00:00', N'系统上线', N'1.0.0', N'● 增加：页面的Footer;<br>● 增加：系统更新日志;', N'admin', '2014-09-15 16:35:29')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_APP_MENU
-- ----------------------------
DROP TABLE [SYS_C_APP_MENU]
GO
CREATE TABLE [SYS_C_APP_MENU] (
[MENU_ID] varchar(64) NOT NULL ,
[MENU_NAME] varchar(64) NOT NULL ,
[SEQ] decimal(38,4) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL ,
[MENU_TYPE] varchar(128) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统菜单设置'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统菜单设置'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
'COLUMN', N'MENU_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单编号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'MENU_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单编号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'MENU_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
'COLUMN', N'MENU_NAME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'MENU_NAME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'MENU_NAME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
'COLUMN', N'SEQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'顺序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'SEQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'顺序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'SEQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MENU', 
'COLUMN', N'MENU_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'正常菜单类型请填写 normal; 链接填写 url#index.jsp 或者 url#http://www.google.com.hk
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'MENU_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'正常菜单类型请填写 normal; 链接填写 url#index.jsp 或者 url#http://www.google.com.hk
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MENU'
, @level2type = 'COLUMN', @level2name = N'MENU_TYPE'
GO

-- ----------------------------
-- Records of SYS_C_APP_MENU
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_APP_MENU] ([MENU_ID], [MENU_NAME], [SEQ], [LM_USER], [LM_TIME], [MENU_TYPE]) VALUES (N'home_page', N'首页', N'-1', N'admin', '2014-06-10 14:19:13', N'url#index.jsp')
GO
GO
INSERT INTO [SYS_C_APP_MENU] ([MENU_ID], [MENU_NAME], [SEQ], [LM_USER], [LM_TIME], [MENU_TYPE]) VALUES (N'setting', N'&nbsp;', N'99999', N'admin', '2014-04-19 10:41:09', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_MENU] ([MENU_ID], [MENU_NAME], [SEQ], [LM_USER], [LM_TIME], [MENU_TYPE]) VALUES (N'system_setting', N'系统设置', N'9000', N'admin', '2014-01-22 17:06:10', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_MENU] ([MENU_ID], [MENU_NAME], [SEQ], [LM_USER], [LM_TIME], [MENU_TYPE]) VALUES (N'update_config', N'热部署', N'999999', N'admin', '2014-06-05 09:11:45', N'url#ShowReport.wx?ACTIONTYPE=updateconfig')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_APP_MNLT
-- ----------------------------
DROP TABLE [SYS_C_APP_MNLT]
GO
CREATE TABLE [SYS_C_APP_MNLT] (
[ID] varchar(64) NOT NULL ,
[MENU_ID] varchar(64) NOT NULL ,
[GROUP_ID] varchar(64) NOT NULL ,
[PAGE_ID] varchar(64) NOT NULL ,
[PAGE_NAME] varchar(64) NULL ,
[URL_PARAM] varchar(100) NULL ,
[SEQ] decimal(38,4) NULL ,
[IS_SHOW] varchar(8) NOT NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统菜单列表'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统菜单列表'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ID,pk,uuid
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID,pk,uuid
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'MENU_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单编号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'MENU_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单编号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'MENU_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'GROUP_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户组
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户组
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'PAGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'PAGE_NAME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'PAGE_NAME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'PAGE_NAME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'URL_PARAM')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'url参数
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'URL_PARAM'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'url参数
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'URL_PARAM'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'SEQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'顺序'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'SEQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'顺序'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'SEQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'IS_SHOW')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否显示
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'IS_SHOW'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否显示
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'IS_SHOW'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_MNLT', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_MNLT'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_APP_MNLT
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'297e088641a6a42e0141a6a42ed70000', N'home_page', N'admin', N'home', N'功能列表', null, null, N'Y', N'admin', '2014-01-22 20:08:52')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'8a3344513c152d3b013c152d3b490000', N'system_setting', N'admin', N'system_group', N'组别', null, N'10', N'Y', N'hilltop', '2013-10-09 14:49:09')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'8a3344513c152d3b013c152d3b4b0001', N'system_setting', N'admin', N'system_menu', N'菜单设置', null, N'20', N'Y', N'admin', '2014-01-14 09:31:59')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'8a3344513c152d3b013c152d3b4d0002', N'system_setting', N'admin', N'system_page_list', N'页面', null, N'30', N'Y', N'admin', '2014-01-14 09:31:59')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'8a3344513c152d3b013c152d3b4e0003', N'system_setting', N'admin', N'system_privilege', N'权限', null, N'50', N'Y', N'admin', '2014-01-14 09:31:59')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'8a3344513c152d3b013c152d3b500004', N'system_setting', N'admin', N'system_user_account', N'帐号', null, N'40', N'Y', N'admin', '2014-01-14 09:31:59')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'8a33d3a33c90b0e9013c90b0e9b60000', N'system_setting', N'admin', N'system_consts', N'wabacus常量定义', null, N'70', N'Y', N'admin', '2014-01-14 09:31:59')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'297e08864577995d0145779a06930001', N'setting', N'admin', N'user_setting', N'用户信息', null, null, N'N', N'admin', '2014-04-19 10:39:59')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'297e08864737b5df014737b612710001', N'system_setting', N'admin', N'system_update_log', N'系统更新日志', null, N'80', N'Y', N'admin', '2014-07-15 09:49:44')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'402823b54737d7b0014737d7b0a50000', N'setting', N'admin', N'system_about', N'关于地面运营报表系统', null, null, N'N', N'admin', '2014-07-15 16:04:20')
GO
GO
INSERT INTO [SYS_C_APP_MNLT] ([ID], [MENU_ID], [GROUP_ID], [PAGE_ID], [PAGE_NAME], [URL_PARAM], [SEQ], [IS_SHOW], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c3ca92a013c3ca92a430000', N'system_setting', N'admin', N'system_parameter', N'参数设置', null, N'60', N'Y', N'admin', '2014-01-14 09:31:59')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_APP_RESPONSE
-- ----------------------------
DROP TABLE [SYS_C_APP_RESPONSE]
GO
CREATE TABLE [SYS_C_APP_RESPONSE] (
[ACTION_DATE] datetime NULL ,
[PAGE_ID] varchar(64) NULL ,
[START_TIME] datetime NULL ,
[END_TIME] datetime NULL ,
[RESPONSE_TIME] decimal(38,4) NULL ,
[USER_ID] varchar(32) NULL ,
[ACTION_TYPE] varchar(32) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面响应时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面响应时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'ACTION_DATE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'访问日期'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'ACTION_DATE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'访问日期'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'ACTION_DATE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'PAGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面ID'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面ID'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'START_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'START_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'START_TIME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'END_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'END_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'END_TIME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'RESPONSE_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面响应时间(毫秒)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'RESPONSE_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面响应时间(毫秒)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'RESPONSE_TIME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'USER_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_APP_RESPONSE', 
'COLUMN', N'ACTION_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'访问类型(normal和ajax)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'ACTION_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'访问类型(normal和ajax)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_APP_RESPONSE'
, @level2type = 'COLUMN', @level2name = N'ACTION_TYPE'
GO

-- ----------------------------
-- Records of SYS_C_APP_RESPONSE
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:26:0', ' 2014-08-28 10:26:0', N'50', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:28:1', ' 2014-08-28 10:28:1', N'255', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:1', ' 2014-08-28 10:28:1', N'70', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:1', ' 2014-08-28 10:28:1', N'71', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'53', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'28', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'72', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'30', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'30', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'72', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'62', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'49', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'63', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'103', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_page_list', ' 2014-08-28 10:29:1', ' 2014-08-28 10:29:1', N'85', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_privilege', ' 2014-08-28 10:30:1', ' 2014-08-28 10:30:1', N'36', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'61', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'26', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'41', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:2', ' 2014-08-28 10:33:3', N'12728', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:1', ' 2014-08-28 11:11:1', N'88', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:1', ' 2014-08-28 11:11:1', N'33', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:1', ' 2014-08-28 11:11:1', N'29', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:2', ' 2014-08-28 11:11:2', N'26', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:28:3', ' 2014-08-28 11:28:3', N'158', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:28:3', ' 2014-08-28 11:28:3', N'76', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:32:2', ' 2014-08-28 11:32:2', N'171', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 12:31:0', ' 2014-08-28 12:31:0', N'18', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 12:31:0', ' 2014-08-28 12:31:0', N'18', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 12:31:0', ' 2014-08-28 12:31:0', N'49', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 12:31:1', ' 2014-08-28 12:31:1', N'26', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'31', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'17', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'35', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_page_list', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'56', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_parameter', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'62', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_update_log', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'27', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:5', ' 2014-08-28 12:31:5', N'97', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:5', ' 2014-08-28 12:31:5', N'178', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'29', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'172', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'177', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 13:27:3', ' 2014-08-28 13:27:3', N'36', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'56', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_user_account', ' 2014-09-12 14:59:0', ' 2014-09-12 14:59:0', N'111', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_parameter', ' 2014-09-12 14:59:0', ' 2014-09-12 14:59:0', N'104', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_privilege', ' 2014-09-12 14:59:1', ' 2014-09-12 14:59:1', N'83', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_update_log', ' 2014-09-12 14:59:1', ' 2014-09-12 14:59:1', N'55', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_menu', ' 2014-09-12 14:59:2', ' 2014-09-12 14:59:2', N'55', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_about', ' 2014-09-12 15:00:4', ' 2014-09-12 15:00:4', N'34', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:00:4', ' 2014-09-12 15:00:4', N'76', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:0', ' 2014-09-12 15:04:0', N'6', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_privilege', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'171', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:08:3', ' 2014-09-12 15:08:3', N'60', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:08:4', ' 2014-09-12 15:08:4', N'46', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:08:4', ' 2014-09-12 15:08:5', N'110', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'221', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_privilege', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'91', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'46', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'53', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'30', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'35', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:3', ' 2014-09-12 15:16:3', N'68', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:5', ' 2014-09-12 15:16:5', N'82', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:5', ' 2014-09-12 15:16:5', N'72', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:0', ' 2014-09-15 16:05:0', N'249', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:0', ' 2014-09-15 16:05:0', N'285', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:0', ' 2014-09-15 16:05:0', N'345', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'106', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'44', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'39', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:17:3', ' 2014-09-15 16:17:3', N'157', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:17:4', ' 2014-09-15 16:17:4', N'27', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:17:4', ' 2014-09-15 16:17:4', N'54', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('1970-01-01 00:00:00', N'system_update_log', ' 1970-01-01 08:00:0', ' 2014-09-15 16:19:2', N'1410769160815', null, N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'home', ' 2014-09-15 16:19:2', ' 2014-09-15 16:19:2', N'162', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'home', ' 2014-09-15 16:19:2', ' 2014-09-15 16:19:2', N'204', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:19:2', ' 2014-09-15 16:19:2', N'66', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:19:2', ' 2014-09-15 16:19:2', N'57', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:31:4', ' 2014-09-15 16:31:4', N'115', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:35:0', ' 2014-09-15 16:35:0', N'37', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:35:1', ' 2014-09-15 16:35:1', N'46', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:1', ' 2014-09-15 16:35:1', N'33', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:1', ' 2014-09-15 16:35:1', N'25', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:35:2', ' 2014-09-15 16:35:2', N'45', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'92', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'22', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'27', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'41', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'37', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'26', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'29', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'31', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:3', ' 2014-09-15 16:56:3', N'33', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:3', ' 2014-09-15 16:56:3', N'86', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:3', ' 2014-09-15 16:56:4', N'30', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:4', ' 2014-09-15 16:56:4', N'54', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:4', ' 2014-09-15 16:56:4', N'17', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:4', ' 2014-09-15 16:56:4', N'44', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:4', ' 2014-09-15 16:56:4', N'91', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:4', ' 2014-09-15 16:56:4', N'43', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:4', ' 2014-09-15 16:56:4', N'28', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:4', ' 2014-09-15 16:58:4', N'68', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:0', ' 2014-09-15 16:59:0', N'62', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:0', ' 2014-09-15 16:59:0', N'15', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:1', ' 2014-09-15 16:59:1', N'71', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:1', ' 2014-09-15 16:59:1', N'19', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:1', ' 2014-09-15 16:59:1', N'253', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:1', ' 2014-09-15 16:59:1', N'41', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:1', ' 2014-09-15 16:59:1', N'16', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'51', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:1', ' 2014-08-28 10:28:1', N'78', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'83', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'57', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'49', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'55', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'55', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'28', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'46', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'29', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'50', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'22', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:4', ' 2014-08-28 10:28:4', N'61', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'29', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_privilege', ' 2014-08-28 10:30:1', ' 2014-08-28 10:30:1', N'85', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_privilege', ' 2014-08-28 10:30:1', ' 2014-08-28 10:30:1', N'86', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'18', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'21', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'6', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'23', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:3', ' 2014-08-28 10:33:3', N'99', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:3', ' 2014-08-28 10:33:3', N'110', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:34:1', ' 2014-08-28 10:34:1', N'32', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:36:1', ' 2014-08-28 10:36:1', N'112', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:42:0', ' 2014-08-28 10:42:0', N'107', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'34', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'24', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'10', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'43', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'33', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'26', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:55:0', ' 2014-08-28 10:55:0', N'14', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'89', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'20', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'18', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'15', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:1', ' 2014-08-28 11:11:1', N'41', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:2', ' 2014-08-28 11:11:2', N'32', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:2', ' 2014-08-28 11:11:2', N'27', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:28:5', ' 2014-08-28 11:28:5', N'178', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 12:31:3', ' 2014-08-28 12:31:3', N'40', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'27', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'25', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'17', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'35', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'69', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'128', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'30', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'27', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'31', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:4', ' 2014-09-12 15:04:4', N'48', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'85', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'109', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'home', ' 2014-09-15 13:57:1', ' 2014-09-15 13:57:1', N'111', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:06:4', ' 2014-09-15 16:06:4', N'101', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:21:0', ' 2014-09-15 16:21:0', N'79', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:22:0', ' 2014-09-15 16:22:0', N'33', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:32:2', ' 2014-09-15 16:32:2', N'50', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:32:5', ' 2014-09-15 16:32:5', N'30', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:36:3', ' 2014-09-15 16:36:3', N'116', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:48:0', ' 2014-09-15 16:48:0', N'251', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:48:0', ' 2014-09-15 16:48:0', N'98', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:1', ' 2014-09-15 16:51:1', N'349', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:1', ' 2014-09-15 16:51:1', N'80', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'282', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'15', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'19', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'65', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'10', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'21', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:51:2', ' 2014-09-15 16:51:2', N'159', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:53:1', ' 2014-09-15 16:53:2', N'1290', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:3', ' 2014-09-15 16:56:3', N'250', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:56:3', ' 2014-09-15 16:56:3', N'132', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:57:2', ' 2014-09-15 16:57:2', N'206', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:57:2', ' 2014-09-15 16:57:2', N'18', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:57:2', ' 2014-09-15 16:57:2', N'15', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:4', ' 2014-09-15 16:58:4', N'262', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:0', ' 2014-09-15 16:59:0', N'238', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:0', ' 2014-09-15 16:59:0', N'86', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:0', ' 2014-09-15 16:59:0', N'70', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:2', ' 2014-09-15 16:59:2', N'15', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:2', ' 2014-09-15 16:59:2', N'26', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:59:2', ' 2014-09-15 16:59:2', N'25', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:00:3', ' 2014-09-15 17:00:3', N'317', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:00:3', ' 2014-09-15 17:00:3', N'334', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:5', ' 2014-09-15 17:09:5', N'302', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:5', ' 2014-09-15 17:09:5', N'69', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'14', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'111', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'100', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'19', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'15', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'22', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'33', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'42', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:1', ' 2014-09-15 17:10:1', N'68', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 09:03:4', ' 2014-09-16 09:03:4', N'49', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 09:03:5', ' 2014-09-16 09:03:5', N'100', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 09:03:5', ' 2014-09-16 09:03:5', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 12:46:1', ' 2014-09-16 12:46:1', N'84', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'user_setting', ' 2014-09-16 12:46:1', ' 2014-09-16 12:46:1', N'85', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'home', ' 2014-09-23 15:06:5', ' 2014-09-23 15:06:5', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'49', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'23', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'39', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'44', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'58', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:1', ' 2014-09-23 15:07:1', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:1', ' 2014-09-23 15:07:1', N'20', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:1', ' 2014-09-23 15:07:1', N'0', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:1', ' 2014-09-23 15:07:1', N'40', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:1', ' 2014-09-23 15:07:1', N'59', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'33', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:29:0', ' 2014-08-28 10:29:0', N'26', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_privilege', ' 2014-08-28 10:30:1', ' 2014-08-28 10:30:1', N'76', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_privilege', ' 2014-08-28 10:30:1', ' 2014-08-28 10:30:1', N'44', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'31', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'84', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'172', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_menu', ' 2014-09-12 15:00:1', ' 2014-09-12 15:00:2', N'208', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:04:0', ' 2014-09-12 15:04:0', N'62', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:1', ' 2014-09-12 15:04:1', N'35', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'35', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_page_list', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'59', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:4', ' 2014-09-12 15:04:4', N'82', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:08:3', ' 2014-09-12 15:08:3', N'142', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:1', ' 2014-09-12 15:13:1', N'130', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:3', ' 2014-09-12 15:13:3', N'57', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:4', ' 2014-09-12 15:13:4', N'51', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:5', ' 2014-09-12 15:13:5', N'43', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:14:0', ' 2014-09-12 15:14:0', N'80', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'50', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'61', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:28:2', ' 2014-09-15 16:28:2', N'159', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:28:3', ' 2014-09-15 16:28:3', N'75', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:28:4', ' 2014-09-15 16:28:4', N'606', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:32:0', ' 2014-09-15 16:32:0', N'51', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:35:3', ' 2014-09-15 16:35:3', N'28', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:01:0', ' 2014-09-15 17:01:0', N'383', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:01:0', ' 2014-09-15 17:01:0', N'197', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:01:1', ' 2014-09-15 17:01:1', N'221', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:01:1', ' 2014-09-15 17:01:1', N'83', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:01:1', ' 2014-09-15 17:01:1', N'64', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:01:1', ' 2014-09-15 17:01:1', N'153', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'system_about', ' 2014-09-16 12:46:0', ' 2014-09-16 12:46:0', N'63', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 12:46:1', ' 2014-09-16 12:46:1', N'82', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'change_password', ' 2014-09-16 12:46:2', ' 2014-09-16 12:46:2', N'39', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'101', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'home', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'37', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:10:2', ' 2014-09-23 15:10:2', N'25', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:10:2', ' 2014-09-23 15:10:2', N'8', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:10:2', ' 2014-09-23 15:10:2', N'27', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:10:2', ' 2014-09-23 15:10:2', N'55', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:10:2', ' 2014-09-23 15:10:2', N'66', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_about', ' 2014-09-23 15:11:0', ' 2014-09-23 15:11:0', N'24', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_about', ' 2014-09-23 15:11:0', ' 2014-09-23 15:11:0', N'23', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:1', ' 2014-09-23 15:11:1', N'27', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:1', ' 2014-09-23 15:11:1', N'31', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:1', ' 2014-09-23 15:11:1', N'74', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:1', ' 2014-09-23 15:11:1', N'48', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:1', ' 2014-09-23 15:11:1', N'25', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:1', ' 2014-09-23 15:11:1', N'39', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:2', ' 2014-09-23 15:11:2', N'68', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:11:2', ' 2014-09-23 15:11:2', N'40', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:11:4', ' 2014-09-23 15:11:4', N'36', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:11:4', ' 2014-09-23 15:11:4', N'8', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:11:5', ' 2014-09-23 15:11:5', N'10', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:11:5', ' 2014-09-23 15:11:5', N'28', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'6', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'7', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'6', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'10', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'7', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'13', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'10', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'25', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'15', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'13', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'9', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'40', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'12', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'14', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'9', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'12', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:0', ' 2014-09-23 15:12:0', N'6', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:1', ' 2014-09-23 15:12:1', N'23', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:1', ' 2014-09-23 15:12:1', N'14', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_page_list', ' 2014-09-23 15:12:1', ' 2014-09-23 15:12:1', N'10', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:40:2', ' 2014-09-24 14:40:2', N'170', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:40:3', ' 2014-09-24 14:40:3', N'146', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:40:3', ' 2014-09-24 14:40:3', N'48', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:4', ' 2014-09-24 14:46:4', N'55', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:4', ' 2014-09-24 14:46:4', N'42', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:4', ' 2014-09-24 14:46:5', N'44', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'42', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'39', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'62', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'9', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'23', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'1', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'30', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:46:5', N'40', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:46:5', ' 2014-09-24 14:47:0', N'91', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:48:1', ' 2014-09-24 14:48:1', N'145', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:48:1', ' 2014-09-24 14:48:1', N'41', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:50:0', ' 2014-09-24 14:50:0', N'51', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:50:1', ' 2014-09-24 14:50:1', N'66', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-24 00:00:00', N'home', ' 2014-09-24 14:50:1', ' 2014-09-24 14:50:1', N'347', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'86', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'26', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:1', ' 2014-08-28 10:33:1', N'25', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:3', ' 2014-08-28 10:33:3', N'102', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:33:3', ' 2014-08-28 10:33:3', N'154', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:49:1', ' 2014-08-28 10:49:1', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:49:1', ' 2014-08-28 10:49:1', N'33', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:49:1', ' 2014-08-28 10:49:1', N'30', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:51:3', ' 2014-08-28 10:51:3', N'38', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:52:2', ' 2014-08-28 10:52:2', N'23', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:52:3', ' 2014-08-28 10:52:3', N'19', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:52:3', ' 2014-08-28 10:52:3', N'18', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:52:3', ' 2014-08-28 10:52:3', N'39', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:53:0', ' 2014-08-28 10:53:0', N'59', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:53:1', ' 2014-08-28 10:53:1', N'46', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:53:1', ' 2014-08-28 10:53:1', N'33', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:53:1', ' 2014-08-28 10:53:1', N'29', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:59:3', ' 2014-08-28 10:59:3', N'81', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:02:2', ' 2014-08-28 11:02:2', N'80', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:31:2', ' 2014-08-28 11:31:2', N'113', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:4', ' 2014-08-28 12:31:4', N'52', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 12:31:5', ' 2014-08-28 12:31:5', N'38', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:5', ' 2014-08-28 12:31:5', N'27', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'225', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:41:1', ' 2014-08-28 12:41:1', N'17', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 13:27:4', ' 2014-08-28 13:27:4', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'91', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'55', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_page_list', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 13:48:1', ' 2014-08-28 13:48:1', N'42', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-01 00:00:00', N'home', ' 2014-09-01 09:27:4', ' 2014-09-01 09:27:4', N'205', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-01 00:00:00', N'home', ' 2014-09-01 09:27:5', ' 2014-09-01 09:27:5', N'97', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 14:56:0', ' 2014-09-12 14:56:0', N'131', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 14:56:0', ' 2014-09-12 14:56:0', N'91', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 14:58:2', ' 2014-09-12 14:58:2', N'165', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 14:58:2', ' 2014-09-12 14:58:2', N'103', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 14:58:4', ' 2014-09-12 14:58:4', N'131', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_menu', ' 2014-09-12 14:58:5', ' 2014-09-12 14:58:5', N'63', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 14:58:5', ' 2014-09-12 14:58:5', N'61', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_page_list', ' 2014-09-12 14:59:0', ' 2014-09-12 14:59:0', N'71', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_consts', ' 2014-09-12 14:59:2', ' 2014-09-12 14:59:2', N'88', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 14:59:2', ' 2014-09-12 14:59:2', N'56', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:02:1', ' 2014-09-12 15:02:1', N'121', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:02:1', ' 2014-09-12 15:02:1', N'85', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:02:2', ' 2014-09-12 15:02:2', N'94', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:0', ' 2014-09-12 15:04:0', N'56', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:0', ' 2014-09-12 15:04:0', N'165', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:0', ' 2014-09-12 15:04:0', N'203', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:1', ' 2014-09-12 15:04:1', N'7', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'53', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:4', ' 2014-09-12 15:04:4', N'57', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:08:0', ' 2014-09-12 15:08:0', N'144', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'user_setting', ' 2014-09-12 15:08:3', ' 2014-09-12 15:08:3', N'46', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_about', ' 2014-09-12 15:08:3', ' 2014-09-12 15:08:3', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:08:4', ' 2014-09-12 15:08:4', N'83', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'55', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'69', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_privilege', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'74', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'65', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:11:4', ' 2014-09-12 15:11:4', N'144', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:1', ' 2014-09-12 15:13:1', N'130', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:5', ' 2014-09-12 15:13:5', N'60', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:13:5', ' 2014-09-12 15:13:5', N'62', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:14:0', ' 2014-09-12 15:14:0', N'75', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:14:0', ' 2014-09-12 15:14:0', N'52', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:15:0', ' 2014-09-12 15:15:0', N'52', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:15:0', ' 2014-09-12 15:15:0', N'81', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:15:0', ' 2014-09-12 15:15:0', N'78', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:15:0', ' 2014-09-12 15:15:0', N'49', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:15:0', ' 2014-09-12 15:15:0', N'45', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:0', ' 2014-09-12 15:16:0', N'186', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:2', ' 2014-09-12 15:16:2', N'51', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:5', ' 2014-09-12 15:16:5', N'60', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:16:5', ' 2014-09-12 15:16:5', N'51', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:17:0', ' 2014-09-12 15:17:0', N'75', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:17:1', ' 2014-09-12 15:17:1', N'49', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'home', ' 2014-09-15 13:53:0', ' 2014-09-15 13:53:0', N'129', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'home', ' 2014-09-15 16:05:0', ' 2014-09-15 16:05:0', N'199', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:0', ' 2014-09-15 16:05:0', N'72', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:0', ' 2014-09-15 16:05:0', N'242', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'53', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:07:4', ' 2014-09-15 16:07:4', N'106', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:07:4', ' 2014-09-15 16:07:4', N'268', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:08:0', ' 2014-09-15 16:08:0', N'34', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:08:1', ' 2014-09-15 16:08:1', N'40', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:08:4', ' 2014-09-15 16:08:4', N'47', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:08:4', ' 2014-09-15 16:08:4', N'54', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:12:4', ' 2014-09-15 16:12:4', N'102', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:12:4', ' 2014-09-15 16:12:4', N'103', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:24:5', ' 2014-09-15 16:24:5', N'126', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:25:2', ' 2014-09-15 16:25:2', N'164', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:30:2', ' 2014-09-15 16:30:2', N'196', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:32:5', ' 2014-09-15 16:32:5', N'178', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:33:4', ' 2014-09-15 16:33:4', N'41', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_update_log', ' 2014-09-15 16:33:5', ' 2014-09-15 16:33:5', N'49', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:34:0', ' 2014-09-15 16:34:0', N'29', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:43:5', ' 2014-09-15 16:43:5', N'331', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:1', ' 2014-09-15 16:58:1', N'288', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:2', ' 2014-09-15 16:58:2', N'123', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:2', ' 2014-09-15 16:58:2', N'52', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:2', ' 2014-09-15 16:58:2', N'35', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:03:5', ' 2014-09-15 17:04:0', N'640', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'45', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'74', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'180', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'52', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'190', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:0', ' 2014-09-15 17:04:0', N'88', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:1', ' 2014-09-15 17:04:1', N'62', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:04:1', ' 2014-09-15 17:04:1', N'41', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:06:1', ' 2014-09-15 17:06:2', N'813', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:08:5', ' 2014-09-15 17:08:5', N'235', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:08:5', ' 2014-09-15 17:08:5', N'59', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:20:2', ' 2014-08-28 10:20:2', N'53', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'94', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'80', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'79', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:2', ' 2014-08-28 10:28:2', N'71', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'56', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'86', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:3', ' 2014-08-28 10:28:3', N'26', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_menu', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'81', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'43', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'90', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'147', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'user_setting', ' 2014-08-28 10:28:5', ' 2014-08-28 10:28:5', N'27', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:29:0', ' 2014-08-28 10:29:0', N'37', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'39', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:47:1', ' 2014-08-28 10:47:1', N'13', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 10:52:2', ' 2014-08-28 10:52:2', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 10:52:2', ' 2014-08-28 10:52:2', N'16', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'24', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'18', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'15', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 11:04:3', ' 2014-08-28 11:04:3', N'15', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_update_log', ' 2014-08-28 11:04:4', ' 2014-08-28 11:04:4', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:1', ' 2014-08-28 11:11:1', N'29', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:11:1', ' 2014-08-28 11:11:1', N'28', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 11:28:4', ' 2014-08-28 11:28:4', N'49', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 12:31:0', ' 2014-08-28 12:31:0', N'15', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 12:31:0', ' 2014-08-28 12:31:0', N'62', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 12:31:0', ' 2014-08-28 12:31:0', N'19', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 12:31:1', ' 2014-08-28 12:31:1', N'16', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 12:31:3', ' 2014-08-28 12:31:3', N'42', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 12:31:3', ' 2014-08-28 12:31:3', N'47', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:5', ' 2014-08-28 12:31:5', N'25', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_group', ' 2014-08-28 12:31:5', ' 2014-08-28 12:31:5', N'112', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'system_about', ' 2014-08-28 13:27:3', ' 2014-08-28 13:27:3', N'18', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-08-28 00:00:00', N'home', ' 2014-08-28 13:27:3', ' 2014-08-28 13:27:3', N'39', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_menu', ' 2014-09-12 15:00:3', ' 2014-09-12 15:00:3', N'133', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_menu', ' 2014-09-12 15:00:3', ' 2014-09-12 15:00:3', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_menu', ' 2014-09-12 15:00:3', ' 2014-09-12 15:00:3', N'43', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:01:0', ' 2014-09-12 15:01:0', N'212', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:0', ' 2014-09-12 15:04:0', N'293', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:1', ' 2014-09-12 15:04:1', N'41', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:1', ' 2014-09-12 15:04:1', N'84', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:1', ' 2014-09-12 15:04:1', N'122', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'48', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'70', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'131', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_privilege', ' 2014-09-12 15:04:3', ' 2014-09-12 15:04:3', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_parameter', ' 2014-09-12 15:04:4', ' 2014-09-12 15:04:4', N'50', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:4', ' 2014-09-12 15:04:4', N'37', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:04:4', ' 2014-09-12 15:04:4', N'101', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'system_group', ' 2014-09-12 15:08:5', ' 2014-09-12 15:08:5', N'80', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:10:0', ' 2014-09-12 15:10:0', N'132', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:10:1', ' 2014-09-12 15:10:1', N'49', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-12 00:00:00', N'home', ' 2014-09-12 15:10:1', ' 2014-09-12 15:10:1', N'51', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'home', ' 2014-09-15 13:53:0', ' 2014-09-15 13:53:0', N'106', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'66', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'8', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'75', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_group', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'107', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_about', ' 2014-09-15 16:05:4', ' 2014-09-15 16:05:4', N'24', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:37:5', ' 2014-09-15 16:37:5', N'95', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:41:2', ' 2014-09-15 16:41:2', N'261', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 16:58:4', ' 2014-09-15 16:58:4', N'237', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:06:2', ' 2014-09-15 17:06:2', N'585', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:06:5', ' 2014-09-15 17:06:5', N'145', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:06:5', ' 2014-09-15 17:06:5', N'52', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:06:5', ' 2014-09-15 17:06:5', N'17', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:07:2', ' 2014-09-15 17:07:2', N'124', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:07:5', ' 2014-09-15 17:07:5', N'167', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:07:5', ' 2014-09-15 17:07:5', N'12', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:07:5', ' 2014-09-15 17:07:5', N'64', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:08:0', ' 2014-09-15 17:08:0', N'101', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:0', ' 2014-09-15 17:09:0', N'364', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:0', ' 2014-09-15 17:09:0', N'36', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:0', ' 2014-09-15 17:09:0', N'43', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:1', ' 2014-09-15 17:09:1', N'136', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:1', ' 2014-09-15 17:09:1', N'58', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:1', ' 2014-09-15 17:09:1', N'81', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:1', ' 2014-09-15 17:09:1', N'31', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:2', ' 2014-09-15 17:09:2', N'47', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:2', ' 2014-09-15 17:09:2', N'26', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:09:2', ' 2014-09-15 17:09:2', N'69', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:0', ' 2014-09-15 17:10:0', N'60', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:1', ' 2014-09-15 17:10:1', N'39', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:1', ' 2014-09-15 17:10:1', N'44', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'11', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'21', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'29', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'20', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'44', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'23', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:3', ' 2014-09-15 17:10:3', N'14', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:4', ' 2014-09-15 17:10:4', N'32', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-15 00:00:00', N'system_page_list', ' 2014-09-15 17:10:4', ' 2014-09-15 17:10:4', N'61', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 12:31:2', ' 2014-09-16 12:31:2', N'46', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'system_about', ' 2014-09-16 12:46:2', ' 2014-09-16 12:46:2', N'41', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'system_about', ' 2014-09-16 12:46:3', ' 2014-09-16 12:46:3', N'42', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'system_about', ' 2014-09-16 12:46:3', ' 2014-09-16 12:46:3', N'59', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 12:46:3', ' 2014-09-16 12:46:3', N'64', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-16 00:00:00', N'home', ' 2014-09-16 12:46:3', ' 2014-09-16 12:46:3', N'69', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-18 00:00:00', N'home', ' 2014-09-18 11:00:4', ' 2014-09-18 11:00:4', N'1717', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'home', ' 2014-09-23 15:06:4', ' 2014-09-23 15:06:4', N'123', null, N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'home', ' 2014-09-23 15:06:4', ' 2014-09-23 15:06:4', N'83', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_menu', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'68', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'35', N'admin', N'normal')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'98', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'159', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'159', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'system_group', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'185', N'admin', N'ajax')
GO
GO
INSERT INTO [SYS_C_APP_RESPONSE] ([ACTION_DATE], [PAGE_ID], [START_TIME], [END_TIME], [RESPONSE_TIME], [USER_ID], [ACTION_TYPE]) VALUES ('2014-09-23 00:00:00', N'home', ' 2014-09-23 15:07:0', ' 2014-09-23 15:07:0', N'39', N'admin', N'normal')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_PER_DSPL
-- ----------------------------
DROP TABLE [SYS_C_PER_DSPL]
GO
CREATE TABLE [SYS_C_PER_DSPL] (
[USER_ID] varchar(32) NOT NULL ,
[PAGE_ID] varchar(64) NOT NULL ,
[REPORT_ID] varchar(64) NOT NULL ,
[PERSONALIZE_TYPE] varchar(32) NOT NULL ,
[PERSONALIZE_VALUE] varchar(64) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_DSPL', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保存用户个性化信息(包括列选择,列排序,列拖动)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保存用户个性化信息(包括列选择,列排序,列拖动)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_DSPL', 
'COLUMN', N'USER_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_DSPL', 
'COLUMN', N'PAGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_DSPL', 
'COLUMN', N'REPORT_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'reportID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'REPORT_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'reportID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'REPORT_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_DSPL', 
'COLUMN', N'PERSONALIZE_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'个性化信息类型,如列选择,列排序,列拖动
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'PERSONALIZE_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'个性化信息类型,如列选择,列排序,列拖动
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'PERSONALIZE_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_DSPL', 
'COLUMN', N'PERSONALIZE_VALUE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'个性化信息值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'PERSONALIZE_VALUE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'个性化信息值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_DSPL'
, @level2type = 'COLUMN', @level2name = N'PERSONALIZE_VALUE'
GO

-- ----------------------------
-- Records of SYS_C_PER_DSPL
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_PER_FVOR
-- ----------------------------
DROP TABLE [SYS_C_PER_FVOR]
GO
CREATE TABLE [SYS_C_PER_FVOR] (
[USER_ID] varchar(32) NOT NULL ,
[PAGE_ID] varchar(64) NOT NULL ,
[URL_PARAM] varchar(64) NULL ,
[SEQ] decimal(38,4) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_FVOR', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户收藏'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户收藏'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_FVOR', 
'COLUMN', N'USER_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'帐号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'帐号
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_FVOR', 
'COLUMN', N'PAGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_FVOR', 
'COLUMN', N'URL_PARAM')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'url参数
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'URL_PARAM'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'url参数
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'URL_PARAM'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_FVOR', 
'COLUMN', N'SEQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'SEQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'SEQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_PER_FVOR', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_PER_FVOR'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_PER_FVOR
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_PER_FVOR] ([USER_ID], [PAGE_ID], [URL_PARAM], [SEQ], [LM_TIME]) VALUES (N'hilltop', N'system_group', null, null, null)
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_GPPC
-- ----------------------------
DROP TABLE [SYS_C_SEC_GPPC]
GO
CREATE TABLE [SYS_C_SEC_GPPC] (
[GROUP_ID] varchar(64) NOT NULL ,
[CHILD_GROUP_ID] varchar(64) NOT NULL ,
[SEQ] decimal(38,4) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPC', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组_父子关系表(Parent-child relationship)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组_父子关系表(Parent-child relationship)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPC', 
'COLUMN', N'GROUP_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组别
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组别
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPC', 
'COLUMN', N'CHILD_GROUP_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'子组别
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'CHILD_GROUP_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'子组别
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'CHILD_GROUP_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPC', 
'COLUMN', N'SEQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'SEQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'SEQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPC', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPC', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPC'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SEC_GPPC
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_GPPC] ([GROUP_ID], [CHILD_GROUP_ID], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'admin', N'admin', N'10', N'hilltop', '2013-07-03 22:10:39')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_GPPV
-- ----------------------------
DROP TABLE [SYS_C_SEC_GPPV]
GO
CREATE TABLE [SYS_C_SEC_GPPV] (
[GROUP_ID] varchar(64) NOT NULL ,
[PRIVILEGE_ID] varchar(64) NOT NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPV', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组,权限关联'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组,权限关联'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPV', 
'COLUMN', N'GROUP_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组别,fk_sys_c_sec_gppv_1(sys_c_sec_grop.group_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组别,fk_sys_c_sec_gppv_1(sys_c_sec_grop.group_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPV', 
'COLUMN', N'PRIVILEGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限组,fk_sys_c_sec_gppv_2(sys_c_sec_priv.privilege_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限组,fk_sys_c_sec_gppv_2(sys_c_sec_priv.privilege_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPV', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GPPV', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GPPV'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SEC_GPPV
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_GPPV] ([GROUP_ID], [PRIVILEGE_ID], [LM_USER], [LM_TIME]) VALUES (N'admin', N'admin', N'admin', '2014-07-09 14:16:40')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_GROP
-- ----------------------------
DROP TABLE [SYS_C_SEC_GROP]
GO
CREATE TABLE [SYS_C_SEC_GROP] (
[GROUP_ID] varchar(64) NOT NULL ,
[GROUP_DESCRIPTION] varchar(64) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GROP', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GROP', 
'COLUMN', N'GROUP_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组别,PK
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组别,PK
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GROP', 
'COLUMN', N'GROUP_DESCRIPTION')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'GROUP_DESCRIPTION'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'GROUP_DESCRIPTION'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GROP', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_GROP', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_GROP'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SEC_GROP
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_GROP] ([GROUP_ID], [GROUP_DESCRIPTION], [LM_USER], [LM_TIME]) VALUES (N'admin', N'超级管理员', N'admin', '2014-09-12 15:04:30')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_PAGE
-- ----------------------------
DROP TABLE [SYS_C_SEC_PAGE]
GO
CREATE TABLE [SYS_C_SEC_PAGE] (
[PAGE_ID] varchar(64) NOT NULL ,
[PAGE_NAME] varchar(64) NULL ,
[PAGE_DESCRIPTION] varchar(4000) NULL ,
[HITS] decimal(38,4) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面(将所有page注册进该表,以便授权等操作)(2013-1-26修改,删除内部组件的信息,只保留pageid,增加hits功能)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面(将所有page注册进该表,以便授权等操作)(2013-1-26修改,删除内部组件的信息,只保留pageid,增加hits功能)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
'COLUMN', N'PAGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
'COLUMN', N'PAGE_NAME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'PAGE_NAME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面名称
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'PAGE_NAME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
'COLUMN', N'PAGE_DESCRIPTION')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'PAGE_DESCRIPTION'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'PAGE_DESCRIPTION'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
'COLUMN', N'HITS')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'点击率,default 0
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'HITS'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'点击率,default 0
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'HITS'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PAGE', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PAGE'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SEC_PAGE
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_consts', N'wabacus常量定义', N'<p>sfdfdsfdsfdsf123<img title="亲吻" src="webresources/component/tiny_mce/plugins/emotions/img/smiley-kiss.gif" alt="亲吻" border="0" /></p>', N'24', N'admin', '2014-09-23 15:11:58')
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_group', N'组别', null, N'245', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_menu', N'菜单', null, N'666', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_page_list', N'页面', null, N'379', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_parameter', N'参数设置', null, N'37', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_privilege', N'权限', null, N'236', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_update_log', N'系统更新日志', null, N'44', N'admin', '2014-07-15 09:49:26')
GO
GO
INSERT INTO [SYS_C_SEC_PAGE] ([PAGE_ID], [PAGE_NAME], [PAGE_DESCRIPTION], [HITS], [LM_USER], [LM_TIME]) VALUES (N'system_user_account', N'帐号', null, N'94', N'hilltop', null)
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_PRIV
-- ----------------------------
DROP TABLE [SYS_C_SEC_PRIV]
GO
CREATE TABLE [SYS_C_SEC_PRIV] (
[PRIVILEGE_ID] varchar(64) NOT NULL ,
[PRIORITY] decimal(38,4) NULL ,
[PRIVILEGE_DESCRIPTION] varchar(64) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PRIV', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PRIV', 
'COLUMN', N'PRIVILEGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限组,PK
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限组,PK
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PRIV', 
'COLUMN', N'PRIORITY')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限等级,(这个初衷是权限有冲突时用,未实现)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'PRIORITY'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限等级,(这个初衷是权限有冲突时用,未实现)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'PRIORITY'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PRIV', 
'COLUMN', N'PRIVILEGE_DESCRIPTION')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_DESCRIPTION'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_DESCRIPTION'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PRIV', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PRIV', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PRIV'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SEC_PRIV
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_PRIV] ([PRIVILEGE_ID], [PRIORITY], [PRIVILEGE_DESCRIPTION], [LM_USER], [LM_TIME]) VALUES (N'admin', N'1', N'系统管理员', N'hilltop', null)
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_PVLT
-- ----------------------------
DROP TABLE [SYS_C_SEC_PVLT]
GO
CREATE TABLE [SYS_C_SEC_PVLT] (
[ID] varchar(64) NOT NULL ,
[PRIVILEGE_ID] varchar(64) NOT NULL ,
[PAGE_ID] varchar(64) NOT NULL ,
[COMPONENT_ID] varchar(64) NULL ,
[PART_TYPE] varchar(64) NULL ,
[PART_ID] varchar(64) NULL ,
[PERMISSION_TYPE] varchar(32) NULL ,
[PERMISSION_VALUE] varchar(32) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限页面关联(授权)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限页面关联(授权)'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ID,pk,uuid
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID,pk,uuid
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'PRIVILEGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限组,fk_sys_c_sec_pvlt_1(sys_c_sec_priv.privilege_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限组,fk_sys_c_sec_pvlt_1(sys_c_sec_priv.privilege_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PRIVILEGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'PAGE_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PAGE_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'COMPONENT_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组件ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'COMPONENT_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组件ID
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'COMPONENT_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'PART_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组件部分
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PART_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组件部分
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PART_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'PART_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组件元素
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PART_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组件元素
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PART_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'PERMISSION_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限类型
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PERMISSION_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限类型
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PERMISSION_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'PERMISSION_VALUE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PERMISSION_VALUE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'PERMISSION_VALUE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_PVLT', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_PVLT'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SEC_PVLT
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c83dd56013c84114ec90003', N'admin', N'system_privilege', N'report1', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c84193d9c0001', N'admin', N'home', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c841bb07e000a', N'admin', N'system_parameter', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c841cdb45000b', N'admin', N'system_menu', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c841cdb47000c', N'admin', N'system_user_account', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c841cdb49000d', N'admin', N'system_group', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c841cdb4a000e', N'admin', N'system_page_list', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'4028827a3c8417d7013c841d84580010', N'admin', N'system_user_account_form', N'report1', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'8a33d3a33c90b0e9013c90b10fa10001', N'admin', N'system_consts', N'common_vpanel', null, null, N'display', N'true', N'hilltop', null)
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'297e08864577995d014577995df80000', N'admin', N'user_setting', N'common_vpanel', null, null, N'display', N'true', N'admin', '2014-04-19 09:28:30')
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'297e08864577fa0d014577fa0dab0000', N'admin', N'change_password', N'common_vpanel', null, null, N'display', N'true', N'admin', '2014-04-19 11:14:07')
GO
GO
INSERT INTO [SYS_C_SEC_PVLT] ([ID], [PRIVILEGE_ID], [PAGE_ID], [COMPONENT_ID], [PART_TYPE], [PART_ID], [PERMISSION_TYPE], [PERMISSION_VALUE], [LM_USER], [LM_TIME]) VALUES (N'297e08864737b5df014737b5dfc20000', N'admin', N'system_update_log', N'common_vpanel', null, null, N'display', N'true', N'admin', '2014-07-15 09:49:31')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SEC_USER
-- ----------------------------
DROP TABLE [SYS_C_SEC_USER]
GO
CREATE TABLE [SYS_C_SEC_USER] (
[USER_ID] varchar(32) NOT NULL ,
[USER_NAME] varchar(32) NULL ,
[GROUP_ID] varchar(64) NULL ,
[IS_ENABLE] varchar(8) NULL ,
[SKIN] varchar(32) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL ,
[PASSWORD] varchar(64) NULL ,
[DEPARTMENT] varchar(64) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'帐号'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'帐号'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'USER_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'帐号,PK
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'帐号,PK
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'USER_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'USER_NAME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'姓名
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'USER_NAME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'姓名
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'USER_NAME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'GROUP_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'
组,fk_sys_c_sec_user_1(sys_c_sec_grop.group_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'
组,fk_sys_c_sec_user_1(sys_c_sec_grop.group_id)
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'GROUP_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'IS_ENABLE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用,默认Y
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'IS_ENABLE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用,默认Y
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'IS_ENABLE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'SKIN')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户主题
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'SKIN'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户主题
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'SKIN'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'PASSWORD')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'PASSWORD'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'PASSWORD'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SEC_USER', 
'COLUMN', N'DEPARTMENT')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'DEPARTMENT'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SEC_USER'
, @level2type = 'COLUMN', @level2name = N'DEPARTMENT'
GO

-- ----------------------------
-- Records of SYS_C_SEC_USER
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SEC_USER] ([USER_ID], [USER_NAME], [GROUP_ID], [IS_ENABLE], [SKIN], [LM_USER], [LM_TIME], [PASSWORD], [DEPARTMENT]) VALUES (N'admin', N'攻城师', N'admin', N'Y', null, N'admin', '2014-08-15 10:46:11', N'Due2bkAVWVY=', null)
GO
GO
INSERT INTO [SYS_C_SEC_USER] ([USER_ID], [USER_NAME], [GROUP_ID], [IS_ENABLE], [SKIN], [LM_USER], [LM_TIME], [PASSWORD], [DEPARTMENT]) VALUES (N'hilltop', N'管理员', N'admin', N'Y', N'cares', N'hilltop', '2013-09-30 15:19:33', N'mnKZT3xVqKI=', null)
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for SYS_C_SET_PARM
-- ----------------------------
DROP TABLE [SYS_C_SET_PARM]
GO
CREATE TABLE [SYS_C_SET_PARM] (
[PARAM_TYPE] varchar(64) NOT NULL ,
[PARAM_NAME] varchar(64) NULL ,
[PARAM_ID] varchar(64) NOT NULL ,
[PARAM_VALUE] varchar(64) NULL ,
[SEQ] decimal(38,4) NULL ,
[LM_USER] varchar(32) NULL ,
[LM_TIME] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数设置'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数设置'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'PARAM_TYPE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数类别
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_TYPE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数类别
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_TYPE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'PARAM_NAME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_NAME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_NAME'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'PARAM_ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数ID,请不要随意修改
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数ID,请不要随意修改
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'PARAM_VALUE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_VALUE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数值
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'PARAM_VALUE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'SEQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'SEQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'次序
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'SEQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'LM_USER')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'LM_USER'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'HILLTOP', 
'TABLE', N'SYS_C_SET_PARM', 
'COLUMN', N'LM_TIME')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间
'
, @level0type = 'SCHEMA', @level0name = N'HILLTOP'
, @level1type = 'TABLE', @level1name = N'SYS_C_SET_PARM'
, @level2type = 'COLUMN', @level2name = N'LM_TIME'
GO

-- ----------------------------
-- Records of SYS_C_SET_PARM
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'sex', N'性别', N'F', N'女', N'2', N'hilltop', '2013-10-09 14:50:52')
GO
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'sex', N'性别', N'M', N'男', N'1', N'904125', '2013-04-01 14:07:55')
GO
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'shift', N'班次', N'D', N'白班', N'1', N'904125', '2013-04-01 14:07:55')
GO
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'shift', N'班次', N'N', N'夜班', N'2', N'admin', '2014-01-24 16:15:52')
GO
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'skin', N'皮肤样式', N'cares', N'cares', N'10', N'admin', '2014-04-19 09:28:06')
GO
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'skin', N'皮肤样式', N'qq', N'qq', N'30', N'admin', '2014-04-19 09:28:06')
GO
GO
INSERT INTO [SYS_C_SET_PARM] ([PARAM_TYPE], [PARAM_NAME], [PARAM_ID], [PARAM_VALUE], [SEQ], [LM_USER], [LM_TIME]) VALUES (N'skin', N'皮肤样式', N'vista', N'vista', N'20', N'admin', '2014-04-19 09:28:06')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Indexes structure for table ACT_EVT_LOG
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_EVT_LOG
-- ----------------------------
ALTER TABLE [ACT_EVT_LOG] ADD PRIMARY KEY ([LOG_NR_])
GO

-- ----------------------------
-- Indexes structure for table ACT_GE_BYTEARRAY
-- ----------------------------
CREATE INDEX [ACT_IDX_BYTEAR_DEPL] ON [ACT_GE_BYTEARRAY]
([DEPLOYMENT_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_GE_BYTEARRAY
-- ----------------------------
ALTER TABLE [ACT_GE_BYTEARRAY] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_GE_PROPERTY
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_GE_PROPERTY
-- ----------------------------
ALTER TABLE [ACT_GE_PROPERTY] ADD PRIMARY KEY ([NAME_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_ACTINST
-- ----------------------------
CREATE INDEX [ACT_IDX_HI_ACT_INST_END] ON [ACT_HI_ACTINST]
([END_TIME_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_ACT_INST_EXEC] ON [ACT_HI_ACTINST]
([EXECUTION_ID_] ASC, [ACT_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_ACT_INST_PROCINST] ON [ACT_HI_ACTINST]
([PROC_INST_ID_] ASC, [ACT_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_ACT_INST_START] ON [ACT_HI_ACTINST]
([START_TIME_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_HI_ACTINST
-- ----------------------------
ALTER TABLE [ACT_HI_ACTINST] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_ATTACHMENT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_HI_ATTACHMENT
-- ----------------------------
ALTER TABLE [ACT_HI_ATTACHMENT] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_COMMENT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_HI_COMMENT
-- ----------------------------
ALTER TABLE [ACT_HI_COMMENT] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_DETAIL
-- ----------------------------
CREATE INDEX [ACT_IDX_HI_DETAIL_ACT_INST] ON [ACT_HI_DETAIL]
([ACT_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_DETAIL_NAME] ON [ACT_HI_DETAIL]
([NAME_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_DETAIL_PROC_INST] ON [ACT_HI_DETAIL]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_DETAIL_TASK_ID] ON [ACT_HI_DETAIL]
([TASK_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_DETAIL_TIME] ON [ACT_HI_DETAIL]
([TIME_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_HI_DETAIL
-- ----------------------------
ALTER TABLE [ACT_HI_DETAIL] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_IDENTITYLINK
-- ----------------------------
CREATE INDEX [ACT_IDX_HI_IDENT_LNK_PROCINST] ON [ACT_HI_IDENTITYLINK]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_IDENT_LNK_TASK] ON [ACT_HI_IDENTITYLINK]
([TASK_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_IDENT_LNK_USER] ON [ACT_HI_IDENTITYLINK]
([USER_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_HI_IDENTITYLINK
-- ----------------------------
ALTER TABLE [ACT_HI_IDENTITYLINK] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_PROCINST
-- ----------------------------
CREATE INDEX [ACT_IDX_HI_PRO_INST_END] ON [ACT_HI_PROCINST]
([END_TIME_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_PRO_I_BUSKEY] ON [ACT_HI_PROCINST]
([BUSINESS_KEY_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_HI_PROCINST
-- ----------------------------
ALTER TABLE [ACT_HI_PROCINST] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_TASKINST
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_HI_TASKINST
-- ----------------------------
ALTER TABLE [ACT_HI_TASKINST] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_HI_VARINST
-- ----------------------------
CREATE INDEX [ACT_IDX_HI_PROCVAR_NAME_TYPE] ON [ACT_HI_VARINST]
([NAME_] ASC, [VAR_TYPE_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_HI_PROCVAR_PROC_INST] ON [ACT_HI_VARINST]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_HI_VARINST
-- ----------------------------
ALTER TABLE [ACT_HI_VARINST] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_ID_GROUP
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_ID_GROUP
-- ----------------------------
ALTER TABLE [ACT_ID_GROUP] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_ID_INFO
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_ID_INFO
-- ----------------------------
ALTER TABLE [ACT_ID_INFO] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_ID_MEMBERSHIP
-- ----------------------------
CREATE INDEX [ACT_IDX_MEMB_GROUP] ON [ACT_ID_MEMBERSHIP]
([GROUP_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_MEMB_USER] ON [ACT_ID_MEMBERSHIP]
([USER_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_ID_MEMBERSHIP
-- ----------------------------
ALTER TABLE [ACT_ID_MEMBERSHIP] ADD PRIMARY KEY ([USER_ID_], [GROUP_ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_ID_USER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_ID_USER
-- ----------------------------
ALTER TABLE [ACT_ID_USER] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RE_DEPLOYMENT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_RE_DEPLOYMENT
-- ----------------------------
ALTER TABLE [ACT_RE_DEPLOYMENT] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RE_MODEL
-- ----------------------------
CREATE INDEX [ACT_IDX_MODEL_DEPLOYMENT] ON [ACT_RE_MODEL]
([DEPLOYMENT_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_MODEL_SOURCE] ON [ACT_RE_MODEL]
([EDITOR_SOURCE_VALUE_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_MODEL_SOURCE_EXTRA] ON [ACT_RE_MODEL]
([EDITOR_SOURCE_EXTRA_VALUE_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RE_MODEL
-- ----------------------------
ALTER TABLE [ACT_RE_MODEL] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RE_PROCDEF
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ACT_RE_PROCDEF
-- ----------------------------
ALTER TABLE [ACT_RE_PROCDEF] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RU_EVENT_SUBSCR
-- ----------------------------
CREATE INDEX [ACT_IDX_EVENT_SUBSCR] ON [ACT_RU_EVENT_SUBSCR]
([EXECUTION_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_EVENT_SUBSCR_CONFIG_] ON [ACT_RU_EVENT_SUBSCR]
([CONFIGURATION_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RU_EVENT_SUBSCR
-- ----------------------------
ALTER TABLE [ACT_RU_EVENT_SUBSCR] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RU_EXECUTION
-- ----------------------------
CREATE INDEX [ACT_IDX_EXEC_BUSKEY] ON [ACT_RU_EXECUTION]
([BUSINESS_KEY_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_EXE_PARENT] ON [ACT_RU_EXECUTION]
([PARENT_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_EXE_PROCDEF] ON [ACT_RU_EXECUTION]
([PROC_DEF_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_EXE_PROCINST] ON [ACT_RU_EXECUTION]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_EXE_SUPER] ON [ACT_RU_EXECUTION]
([SUPER_EXEC_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RU_EXECUTION
-- ----------------------------
ALTER TABLE [ACT_RU_EXECUTION] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RU_IDENTITYLINK
-- ----------------------------
CREATE INDEX [ACT_IDX_ATHRZ_PROCEDEF] ON [ACT_RU_IDENTITYLINK]
([PROC_DEF_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_IDENT_LNK_GROUP] ON [ACT_RU_IDENTITYLINK]
([GROUP_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_IDENT_LNK_USER] ON [ACT_RU_IDENTITYLINK]
([USER_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_IDL_PROCINST] ON [ACT_RU_IDENTITYLINK]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_TSKASS_TASK] ON [ACT_RU_IDENTITYLINK]
([TASK_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RU_IDENTITYLINK
-- ----------------------------
ALTER TABLE [ACT_RU_IDENTITYLINK] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RU_JOB
-- ----------------------------
CREATE INDEX [ACT_IDX_JOB_EXCEPTION] ON [ACT_RU_JOB]
([EXCEPTION_STACK_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RU_JOB
-- ----------------------------
ALTER TABLE [ACT_RU_JOB] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RU_TASK
-- ----------------------------
CREATE INDEX [ACT_IDX_TASK_CREATE] ON [ACT_RU_TASK]
([CREATE_TIME_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_TASK_EXEC] ON [ACT_RU_TASK]
([EXECUTION_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_TASK_PROCDEF] ON [ACT_RU_TASK]
([PROC_DEF_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_TASK_PROCINST] ON [ACT_RU_TASK]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RU_TASK
-- ----------------------------
ALTER TABLE [ACT_RU_TASK] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table ACT_RU_VARIABLE
-- ----------------------------
CREATE INDEX [ACT_IDX_VARIABLE_TASK_ID] ON [ACT_RU_VARIABLE]
([TASK_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_VAR_BYTEARRAY] ON [ACT_RU_VARIABLE]
([BYTEARRAY_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_VAR_EXE] ON [ACT_RU_VARIABLE]
([EXECUTION_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO
CREATE INDEX [ACT_IDX_VAR_PROCINST] ON [ACT_RU_VARIABLE]
([PROC_INST_ID_] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON, MAXDOP = 1)
GO

-- ----------------------------
-- Primary Key structure for table ACT_RU_VARIABLE
-- ----------------------------
ALTER TABLE [ACT_RU_VARIABLE] ADD PRIMARY KEY ([ID_])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_APP_CONSTS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_APP_CONSTS
-- ----------------------------
ALTER TABLE [SYS_C_APP_CONSTS] ADD PRIMARY KEY ([CONST_NAME])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_APP_LOG
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_APP_LOG
-- ----------------------------
ALTER TABLE [SYS_C_APP_LOG] ADD PRIMARY KEY ([LOG_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_APP_MENU
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_APP_MENU
-- ----------------------------
ALTER TABLE [SYS_C_APP_MENU] ADD PRIMARY KEY ([MENU_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_APP_MNLT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_APP_MNLT
-- ----------------------------
ALTER TABLE [SYS_C_APP_MNLT] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_PER_DSPL
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_PER_DSPL
-- ----------------------------
ALTER TABLE [SYS_C_PER_DSPL] ADD PRIMARY KEY ([USER_ID], [PAGE_ID], [REPORT_ID], [PERSONALIZE_TYPE])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_PER_FVOR
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_PER_FVOR
-- ----------------------------
ALTER TABLE [SYS_C_PER_FVOR] ADD PRIMARY KEY ([USER_ID], [PAGE_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_GPPC
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_GPPC
-- ----------------------------
ALTER TABLE [SYS_C_SEC_GPPC] ADD PRIMARY KEY ([GROUP_ID], [CHILD_GROUP_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_GPPV
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_GPPV
-- ----------------------------
ALTER TABLE [SYS_C_SEC_GPPV] ADD PRIMARY KEY ([GROUP_ID], [PRIVILEGE_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_GROP
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_GROP
-- ----------------------------
ALTER TABLE [SYS_C_SEC_GROP] ADD PRIMARY KEY ([GROUP_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_PAGE
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_PAGE
-- ----------------------------
ALTER TABLE [SYS_C_SEC_PAGE] ADD PRIMARY KEY ([PAGE_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_PRIV
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_PRIV
-- ----------------------------
ALTER TABLE [SYS_C_SEC_PRIV] ADD PRIMARY KEY ([PRIVILEGE_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_PVLT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_PVLT
-- ----------------------------
ALTER TABLE [SYS_C_SEC_PVLT] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SEC_USER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SEC_USER
-- ----------------------------
ALTER TABLE [SYS_C_SEC_USER] ADD PRIMARY KEY ([USER_ID])
GO

-- ----------------------------
-- Indexes structure for table SYS_C_SET_PARM
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SYS_C_SET_PARM
-- ----------------------------
ALTER TABLE [SYS_C_SET_PARM] ADD PRIMARY KEY ([PARAM_TYPE], [PARAM_ID])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_GE_BYTEARRAY]
-- ----------------------------
ALTER TABLE [ACT_GE_BYTEARRAY] ADD FOREIGN KEY ([DEPLOYMENT_ID_]) REFERENCES [ACT_RE_DEPLOYMENT] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_ID_MEMBERSHIP]
-- ----------------------------
ALTER TABLE [ACT_ID_MEMBERSHIP] ADD FOREIGN KEY ([GROUP_ID_]) REFERENCES [ACT_ID_GROUP] ([ID_])
GO
ALTER TABLE [ACT_ID_MEMBERSHIP] ADD FOREIGN KEY ([USER_ID_]) REFERENCES [ACT_ID_USER] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RE_MODEL]
-- ----------------------------
ALTER TABLE [ACT_RE_MODEL] ADD FOREIGN KEY ([DEPLOYMENT_ID_]) REFERENCES [ACT_RE_DEPLOYMENT] ([ID_])
GO
ALTER TABLE [ACT_RE_MODEL] ADD FOREIGN KEY ([EDITOR_SOURCE_VALUE_ID_]) REFERENCES [ACT_GE_BYTEARRAY] ([ID_])
GO
ALTER TABLE [ACT_RE_MODEL] ADD FOREIGN KEY ([EDITOR_SOURCE_EXTRA_VALUE_ID_]) REFERENCES [ACT_GE_BYTEARRAY] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RU_EVENT_SUBSCR]
-- ----------------------------
ALTER TABLE [ACT_RU_EVENT_SUBSCR] ADD FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RU_EXECUTION]
-- ----------------------------
ALTER TABLE [ACT_RU_EXECUTION] ADD FOREIGN KEY ([PARENT_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO
ALTER TABLE [ACT_RU_EXECUTION] ADD FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [ACT_RE_PROCDEF] ([ID_])
GO
ALTER TABLE [ACT_RU_EXECUTION] ADD FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO
ALTER TABLE [ACT_RU_EXECUTION] ADD FOREIGN KEY ([SUPER_EXEC_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RU_IDENTITYLINK]
-- ----------------------------
ALTER TABLE [ACT_RU_IDENTITYLINK] ADD FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [ACT_RE_PROCDEF] ([ID_])
GO
ALTER TABLE [ACT_RU_IDENTITYLINK] ADD FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO
ALTER TABLE [ACT_RU_IDENTITYLINK] ADD FOREIGN KEY ([TASK_ID_]) REFERENCES [ACT_RU_TASK] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RU_JOB]
-- ----------------------------
ALTER TABLE [ACT_RU_JOB] ADD FOREIGN KEY ([EXCEPTION_STACK_ID_]) REFERENCES [ACT_GE_BYTEARRAY] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RU_TASK]
-- ----------------------------
ALTER TABLE [ACT_RU_TASK] ADD FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO
ALTER TABLE [ACT_RU_TASK] ADD FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [ACT_RE_PROCDEF] ([ID_])
GO
ALTER TABLE [ACT_RU_TASK] ADD FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO

-- ----------------------------
-- Foreign Key structure for table [ACT_RU_VARIABLE]
-- ----------------------------
ALTER TABLE [ACT_RU_VARIABLE] ADD FOREIGN KEY ([BYTEARRAY_ID_]) REFERENCES [ACT_GE_BYTEARRAY] ([ID_])
GO
ALTER TABLE [ACT_RU_VARIABLE] ADD FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO
ALTER TABLE [ACT_RU_VARIABLE] ADD FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [ACT_RU_EXECUTION] ([ID_])
GO
