/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.5.16-log : Database - aview_ati
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aview` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE aview;

/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `action_id` int(10) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(100) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL DEFAULT '1',
  `attr1_name` varchar(100) DEFAULT NULL,
  `attr2_name` varchar(100) DEFAULT NULL,
  `attr3_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  UNIQUE KEY `action_name_UNIQUE` (`action_name`),
  KEY `action_status` (`status_id`),
  KEY `action_create_user` (`created_by_user_id`),
  KEY `action_modify_user` (`modified_by_user_id`),
  CONSTRAINT `action_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `action_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `action_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1 COMMENT='Master table for stroing the user actions.';

/*Data for the table `action` */

insert  into `action`(`action_id`,`action_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`,`attr1_name`,`attr2_name`,`attr3_name`) values (1,'Download AVIEW',1,'1900-12-31 00:00:00',1,'1900-12-31 00:00:00',1,NULL,NULL,NULL),(2,'UserStatus',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',2,'NewStatus','PublishingBW',NULL),(3,'UserRole',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'NewRole','PublishingBW',NULL),(4,'PresenterRequest',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'RequestStatus',NULL,NULL),(5,'PTTState',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',2,'PTTState',NULL,NULL),(6,'ConnectionSuccess',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Module','IP:Port','NumberOfRetries'),(7,'ConnectionReject',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Module','IP:Port',NULL),(8,'ConnectionFail',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Module','IP:Port',NULL),(9,'ConnectionClose',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Module','IP:Port',NULL),(10,'VideoRefresh',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentPresenter','CurrentViewer',NULL),(11,'PresenterVideoToggle',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'ToggleMode','PublishingBW','CurrentPresenter'),(12,'ViewerVideoToggle',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'ToggleMode','PublishingBW','CurrentViewer'),(13,'VideoPublishStart',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PublishingMode','PublishingBW','AVDriver'),(14,'VideoPublishEnd',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PublishingMode','PublishingBW','AVDriver'),(15,'ChatMessage',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Message',NULL,NULL),(16,'ChatClear',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(17,'QuestionAsk',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Question',NULL,NULL),(18,'QuestionAnswer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Question',NULL,NULL),(19,'QuestionVote',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Question','NewVotes',NULL),(20,'QuestionDelete',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Question',NULL,NULL),(21,'DocumentView',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','Animations','TotalPages'),(22,'DocumentUpload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','Animations',NULL),(23,'DocumentThumbnail',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','Orientation',NULL),(24,'DocumentNavigation',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','NavigationMethod','PageNo'),(25,'DocumentPointer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','PointerMode','CurrentPageNo'),(26,'DocumentRotate',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','RotationDegree','CurrentPageNo'),(27,'DocumentZoomIn',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','ZoomXZoomY','CurrentPageNo'),(28,'DocumentZoomOut',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','ZoomXZoomY','CurrentPageNo'),(29,'DocumentZoomReset',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','ZoomXZoomY','CurrentPageNo'),(30,'DocumentRefresh',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(31,'DocumentAllowDownload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(32,'DocumentDenyDownload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(33,'DocumentUnload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(34,'DocumentDownloadLocal',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(35,'DocumentAnnotationTools',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(36,'DocumentRemoveAnnotationTools',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(37,'DocumentAnnotationToolSelection',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','ToolName','CurrentPageNo'),(38,'WhiteBoardPageChange',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','MaxPages','NavigationMethod'),(39,'WhiteBoardTool',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','ToolName',NULL),(40,'WhiteBoardHide',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','HideMode',NULL),(41,'WhiteBoardCollaboration',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','CollaborationMode',NULL),(42,'WhiteBoardPointer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','PointerMode',NULL),(43,'WhiteBoardLineColor',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','Color','SelectionMethod'),(44,'WhiteBoardClear',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber',NULL,NULL),(45,'WhiteBoardRestore',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber',NULL,NULL),(46,'WhiteBoardLineThickness',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'PageNumber','Thickness',NULL),(47,'DesktopSharingStart',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'SharingMode','ApplicationName',NULL),(48,'DesktopSharingEnd',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'SharingMode','ApplicationName',NULL),(49,'VideoSharingUpload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(50,'VideoSharingLoad',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','Location',NULL),(51,'VideoSharingPlay',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','VideoTime',NULL),(52,'VideoSharingPause',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','VideoTime',NULL),(53,'VideoSharingSeek',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','VideoTime','CurrentState'),(54,'VideoSharingStop',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','VideoTime',NULL),(55,'2DSharingUpload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(56,'2DSharingLoad',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(57,'2DSharingPlay',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','AnimationTime',NULL),(58,'2DSharingPause',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','AnimationTime',NULL),(59,'2DSharingSeek',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','AnimationTime',NULL),(60,'2DSharingStop',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL','AnimationTime',NULL),(61,'3DSharingUpload',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(62,'3DSharingLoad',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(63,'3DSharingStop',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'URL',NULL,NULL),(64,'FullScreenVideoPresenter',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentPresenter',NULL,NULL),(65,'FullScreenVideoSelectedViewer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentViewer',NULL,NULL),(66,'FullScreenVideoViewedViewer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentViewer',NULL,NULL),(67,'CloseFullScreenVideoPresenter',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentPresenter',NULL,NULL),(68,'CloseFullScreenVideoSelectedViewer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentViewer',NULL,NULL),(69,'CloseFullScreenVideoViewedViewer',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentViewer',NULL,NULL),(70,'RecordingStart',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(71,'RecordingEnd',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(72,'PlaybackStart',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'LectureId',NULL,NULL),(73,'PlaybackEnd',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'LectureId',NULL,NULL),(74,'EditingStart',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'LectureId',NULL,NULL),(75,'EditingEnd',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'LectureId',NULL,NULL),(76,'KeyboardShortcut',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Shortcut','Module',NULL),(77,'VideoBitrateSelection',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'CurrentPresenter','SelectedBitrate',NULL),(78,'TabClick',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',2,'TabName',NULL,NULL),(79,'Feedback',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(80,'HelpUsage',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'Section',NULL,NULL),(81,'Pre-CheckLaunch',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'LaunchedFrom',NULL,NULL),(82,'Pre-CheckSpeakerTab',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(83,'Pre-CheckSpeakerTest',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'TestResult',NULL,NULL),(84,'Pre-CheckMikeTab',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(85,'Pre-CheckMikeTest',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'TestResult',NULL,NULL),(86,'Pre-CheckCameraTab',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,NULL,NULL,NULL),(87,'Pre-CheckCameraTest',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'TestResult',NULL,NULL),(88,'Pre-CheckSave',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'SavedTab','AudioDriver','VideoDriver'),(89,'FaceRecognitionRegister',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'NumberOfFaces',NULL,NULL),(90,'FaceRecognitionRemove',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'NumberOfFaces',NULL,NULL),(91,'FaceRecognitionNotRegistered',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'NumberOfFaces',NULL,NULL),(92,'ReleaseAllHandRaises',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'NumberOfHandRaises',NULL,NULL),(93,'FilterUsers',1,'2012-09-07 17:59:09',1,'2012-09-07 17:59:09',1,'FilterMethod','Filter','NumberOfUsers'),(94,'Reset Password',1,'2012-10-05 17:08:38',1,'2012-10-05 17:08:38',1,NULL,NULL,NULL),(95,'Change Password',1,'2012-10-05 17:08:40',1,'2012-10-05 17:08:40',1,NULL,NULL,NULL),(96,'Interacting',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'UserName','InteractionCount',NULL),(97,'Handraised',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'UserName','InteractionCount',NULL),(98,'HandraiseReleased',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'UserName','InteractionCount',NULL),(99,'InteractionEnded',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'UserName','InteractionCount',NULL),(100,'Viewed',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'UserName','InteractionCount',NULL),(101,'CloseViewed',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'UserName','InteractionCount',NULL),(102,'PushToTalk',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'TalkingUser','Role',NULL),(103,'FreeTalk',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(104,'PrivateChatMessage',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'Message','Viewer1','Viewer2'),(105,'PrefUserListSorting',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'NewStatus',NULL,NULL),(106,'PrefMultiUserInteration',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'NewStatus',NULL,NULL),(107,'PrefUninterruptedDesktopSharing',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,'NewStatus',NULL,NULL),(108,'HidePanel',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(109,'ShowPanel',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(110,'PopOutDocument',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(111,'PopInDocument',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(112,'PopOutWhiteBoard',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(113,'PopInWhiteBoard',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(114,'PopOut2D',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(115,'PopIn2D',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(116,'PopOutVideoSharing',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(117,'PopInVideoSharing',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(118,'VideoWallOpen',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(119,'VideoWallClose',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(120,'VideoWallPopOut',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(121,'VideoWallPopIn',1,'2013-01-07 13:34:17',1,'2013-01-07 13:34:17',1,NULL,NULL,NULL),(122,'FailedLoginAttempt',1,'2013-03-07 10:05:37',1,'2013-03-07 10:05:37',1,'IPAddress','ConnectingApplication','AdditionalInfo'),(123,'FailedLoginAttemptWrongUserName',1,'2013-03-07 10:05:39',1,'2013-03-07 10:05:39',1,'IPAddress','UserName','AdditionalInfo'),(124,'VALLIC',1,'2013-08-31 18:33:26',1,'2013-08-31 18:33:26',1,NULL,NULL,NULL);

/*Table structure for table `audit_lecture` */

DROP TABLE IF EXISTS `audit_lecture`;

CREATE TABLE `audit_lecture` (
  `audit_lecture_id` int(10) NOT NULL AUTO_INCREMENT,
  `audit_user_login_id` int(10) NOT NULL,
  `is_multi_bitrate` varchar(45) NOT NULL,
  `max_students` int(10) NOT NULL,
  `min_publishing_bandwidth_kbps` int(10) NOT NULL,
  `max_publishing_bandwidth_kbps` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `lecture_id` int(10) NOT NULL,
  `is_moderator` enum('Y','N') NOT NULL DEFAULT 'N',
  `video_codec` varchar(50) DEFAULT 'H.264',
  `last_action_date` datetime DEFAULT NULL,
  PRIMARY KEY (`audit_lecture_id`),
  UNIQUE KEY `audit_lecture_unique` (`audit_user_login_id`,`created_date`),
  KEY `audit_lecture_create_user` (`created_by_user_id`),
  KEY `audit_lecture_modify_user` (`modified_by_user_id`),
  KEY `audit_lecture_status` (`status_id`),
  KEY `audit_lecture_lecture_id` (`lecture_id`),
  CONSTRAINT `audit_lecture_auditloginid` FOREIGN KEY (`audit_user_login_id`) REFERENCES `audit_user_login` (`audit_user_login_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_lecture_id` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit_lecture` */

/*Table structure for table `audit_lecture_server` */

DROP TABLE IF EXISTS `audit_lecture_server`;

CREATE TABLE `audit_lecture_server` (
  `audit_lecture_server_id` int(10) NOT NULL AUTO_INCREMENT,
  `audit_lecture_id` int(10) NOT NULL,
  `server_name` varchar(100) NOT NULL,
  `server_ip` varchar(100) NOT NULL,
  `server_domain` varchar(250) DEFAULT NULL,
  `server_type_id` int(10) NOT NULL,
  `server_port` int(10) NOT NULL,
  `presenter_publishing_bw_kbps` int(10) DEFAULT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`audit_lecture_server_id`),
  UNIQUE KEY `audit_lecture_server_unique` (`audit_lecture_id`,`server_ip`,`server_type_id`,`presenter_publishing_bw_kbps`),
  KEY `audit_lecture_server_create_user` (`created_by_user_id`),
  KEY `audit_lecture_server_modify_user` (`modified_by_user_id`),
  KEY `audit_lecture_server_server_type` (`server_type_id`),
  KEY `audit_lecture_server_status` (`status_id`),
  CONSTRAINT `audit_lecture_server_audit_lecture` FOREIGN KEY (`audit_lecture_id`) REFERENCES `audit_lecture` (`audit_lecture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_server_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_server_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_server_server_type` FOREIGN KEY (`server_type_id`) REFERENCES `server_type` (`server_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_lecture_server_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Mapping between class and all the servers';

/*Data for the table `audit_lecture_server` */

/*Table structure for table `audit_user_login` */

DROP TABLE IF EXISTS `audit_user_login`;

CREATE TABLE `audit_user_login` (
  `audit_user_login_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `operating_system` varchar(50) NOT NULL,
  `flash_player_version` varchar(100) NOT NULL,
  `network_connection_type` varchar(1024) NOT NULL,
  `ip_address` varchar(256) NOT NULL,
  `aview_version` varchar(50) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `gui_mode` enum('Single Window','Multiple Windows') NOT NULL DEFAULT 'Single Window',
  `auth_mode` enum('Password','Face Recognition') NOT NULL DEFAULT 'Password',
  `hardware_address` varchar(256) NOT NULL DEFAULT '',
  `external_ip_address` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`audit_user_login_id`),
  UNIQUE KEY `unique_login` (`user_id`,`login_time`),
  KEY `audit_user_login_create_user` (`created_by_user_id`),
  KEY `audit_user_login_modify_user` (`modified_by_user_id`),
  KEY `audit_user_login_status` (`status_id`),
  CONSTRAINT `audit_user_login_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_login_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_login_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_login_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit_user_login` */

/*Table structure for table `audit_user_setting` */

DROP TABLE IF EXISTS `audit_user_setting`;

CREATE TABLE `audit_user_setting` (
  `audit_user_setting_id` int(10) NOT NULL AUTO_INCREMENT,
  `audit_user_login_id` int(10) NOT NULL,
  `audit_lecture_id` int(10) NOT NULL,
  `screen_resolution` varchar(20) NOT NULL,
  `video_driver` varchar(100) DEFAULT NULL,
  `microphone_driver` varchar(100) DEFAULT NULL,
  `publishing_bw` varchar(256) NOT NULL,
  `pixel_aspect_ratio` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`audit_user_setting_id`),
  KEY `audit_user_setting_audit_lecture` (`audit_lecture_id`),
  KEY `audit_user_setting_audit_login_id` (`audit_user_login_id`),
  KEY `audit_user_setting_create_user` (`created_by_user_id`),
  KEY `audit_user_setting_modify_user` (`modified_by_user_id`),
  KEY `audit_user_setting_status` (`status_id`),
  CONSTRAINT `audit_user_setting_audit_lecture` FOREIGN KEY (`audit_lecture_id`) REFERENCES `audit_lecture` (`audit_lecture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_setting_audit_login_id` FOREIGN KEY (`audit_user_login_id`) REFERENCES `audit_user_login` (`audit_user_login_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_setting_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_setting_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `audit_user_setting_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit_user_setting` */

/*Table structure for table `branding_attribute` */

DROP TABLE IF EXISTS `branding_attribute`;

CREATE TABLE `branding_attribute` (
  `branding_attribute_id` int(10) NOT NULL AUTO_INCREMENT,
  `branding_attribute_name` varchar(256) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`branding_attribute_id`),
  UNIQUE KEY `branding_attribute_name_UNIQUE` (`branding_attribute_name`),
  KEY `branding_attribute_created_id` (`created_by_user_id`),
  KEY `branding_attribute_modified_id` (`modified_by_user_id`),
  KEY `branding_attribute_status_id` (`status_id`),
  CONSTRAINT `branding_attribute_created_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `branding_attribute_modified_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `branding_attribute_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `branding_attribute` */

insert  into `branding_attribute`(`branding_attribute_id`,`branding_attribute_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'LOGO',1,'2012-09-07 17:54:15',1,'2012-09-07 17:54:15',1),(2,'STYLE_SHEET',1,'2012-09-07 17:54:17',1,'2012-09-07 17:54:17',1);

/*Table structure for table `bug_module` */

DROP TABLE IF EXISTS `bug_module`;

CREATE TABLE `bug_module` (
  `bug_module_id` int(10) NOT NULL AUTO_INCREMENT,
  `module_id` int(10) NOT NULL,
  `user_bugreport_id` int(10) NOT NULL,
  PRIMARY KEY (`bug_module_id`),
  KEY `bug_module_module` (`module_id`),
  KEY `bug_module_user_bugreport` (`user_bugreport_id`),
  CONSTRAINT `bug_module_module` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bug_module_user_bugreport` FOREIGN KEY (`user_bugreport_id`) REFERENCES `user_bugreport` (`user_bugreport_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for stroing the issues and its corresponding modules.';

/*Data for the table `bug_module` */

/*Table structure for table `bug_server` */

DROP TABLE IF EXISTS `bug_server`;

CREATE TABLE `bug_server` (
  `bug_server_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_bugreport_id` int(10) NOT NULL,
  `server_id` int(10) NOT NULL,
  PRIMARY KEY (`bug_server_id`),
  KEY `bug_server_server` (`server_id`),
  KEY `bug_server_user_bugreport` (`user_bugreport_id`),
  CONSTRAINT `bug_server_server` FOREIGN KEY (`server_id`) REFERENCES `server` (`server_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bug_server_user_bugreport` FOREIGN KEY (`user_bugreport_id`) REFERENCES `user_bugreport` (`user_bugreport_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for stroing the issues and its corresponding server ip';

/*Data for the table `bug_server` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category` varchar(100) DEFAULT NULL,
  `cat_id` int(12) NOT NULL AUTO_INCREMENT,
  `parent_id` int(12) DEFAULT '0',
  `cat_Desc` text,
  `cat_type` int(2) DEFAULT '0',
  `last_post_user` int(12) DEFAULT NULL,
  `last_accessed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `category_user` (`last_post_user`),
  CONSTRAINT `category_user` FOREIGN KEY (`last_post_user`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `category` */

insert  into `category`(`category`,`cat_id`,`parent_id`,`cat_Desc`,`cat_type`,`last_post_user`,`last_accessed_date`) values ('Electrical',10000,0,NULL,0,NULL,'2011-11-14 20:45:45'),('Electronics',10001,0,NULL,0,NULL,'2011-10-21 17:05:49'),('Communication Engineering',10002,0,NULL,0,NULL,'2011-11-07 08:33:19'),('Microelectronics/Semiconductors',10003,0,NULL,0,NULL,'2011-10-19 10:51:13'),('Control Engineering',10004,0,NULL,0,NULL,'2011-11-11 05:32:41'),('Electrical',10005,10000,NULL,0,NULL,'2011-11-14 20:45:45'),('Electronics',10006,10001,NULL,0,NULL,'2011-10-21 17:05:49'),('Communication Engineering',10007,10002,NULL,0,NULL,'2011-11-07 08:33:19'),('Microelectronics/Semiconductors',10008,10003,NULL,0,NULL,'2011-10-19 10:51:13'),('Control Engineering',10009,10004,NULL,0,NULL,'2011-11-11 05:32:41');

/*Table structure for table `chat_message` */

DROP TABLE IF EXISTS `chat_message`;

CREATE TABLE `chat_message` (
  `chat_message_id` int(10) NOT NULL AUTO_INCREMENT,
  `chat_message_text` text NOT NULL,
  `chat_session_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`chat_message_id`),
  KEY `chat_message_chat_session_id` (`chat_session_id`),
  KEY `chat_message_status_id` (`status_id`),
  KEY `chat_message_created_user_id` (`created_by_user_id`),
  KEY `chat_message_modified_user_id` (`modified_by_user_id`),
  CONSTRAINT `chat_message_chat_session_id` FOREIGN KEY (`chat_session_id`) REFERENCES `chat_session` (`chat_session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_message_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_message_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_message_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_message` */

/*Table structure for table `chat_session` */

DROP TABLE IF EXISTS `chat_session`;

CREATE TABLE `chat_session` (
  `chat_session_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `group_id` int(10) DEFAULT NULL,
  `lecture_id` int(10) DEFAULT '0',
  `is_private_chat` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_by_user_id` int(10) NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`chat_session_id`),
  KEY `chat_session_user_id` (`owner_id`),
  KEY `chat_session_group_id` (`group_id`),
  KEY `chat_session_lecture_id` (`lecture_id`),
  KEY `chat_session_status_id` (`status_id`),
  KEY `chat_session_created_user_id` (`created_by_user_id`),
  KEY `chat_session_modified_user_id` (`modified_by_user_id`),
  CONSTRAINT `chat_session_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_session_group_id` FOREIGN KEY (`group_id`) REFERENCES `contact_group` (`contact_group_id`),
  CONSTRAINT `chat_session_lecture_id` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`),
  CONSTRAINT `chat_session_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_session_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `chat_session_user_id` FOREIGN KEY (`owner_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_session` */

/*Table structure for table `chat_session_member` */

DROP TABLE IF EXISTS `chat_session_member`;

CREATE TABLE `chat_session_member` (
  `chat_session_member_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `chat_session_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`chat_session_member_id`),
  KEY `chat_session_member_chat_session` (`chat_session_id`),
  KEY `chat_session_member_user` (`member_id`),
  KEY `chat_session_member_status_id` (`status_id`),
  KEY `chat_session_member_created_user_id` (`created_by_user_id`),
  KEY `chat_session_member_modified_user_id` (`modified_by_user_id`),
  CONSTRAINT `chat_session_member_chat_session` FOREIGN KEY (`chat_session_id`) REFERENCES `chat_session` (`chat_session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_session_member_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_session_member_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chat_session_member_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `chat_session_member_user` FOREIGN KEY (`member_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_session_member` */

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  `class_description` varchar(4000) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `course_id` int(10) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `weekdays` varchar(7) DEFAULT NULL COMMENT 'weekdays represents the days of week for which the class is scheduled. The value starts from monday.\nExample: a value of ''YYNNYNN'' means the class is scheduled for mon, tue, and fri.',
  `schedule_type` enum('Adhoc','Scheduled') NOT NULL DEFAULT 'Scheduled',
  `max_students` int(10) NOT NULL DEFAULT '-1',
  `class_type` enum('Classroom','Webinar','Meeting') DEFAULT 'Classroom',
  `can_monitor` enum('Yes','No') NOT NULL DEFAULT 'No',
  `monitor_interval_freq` int(10) DEFAULT '0',
  `audio_video_interaction_mode` enum('Full','Minimal') NOT NULL DEFAULT 'Full',
  `enable_people_count` enum('Yes','No') NOT NULL DEFAULT 'No',
  `max_publishing_bandwidth_kbps` int(10) NOT NULL DEFAULT '-1',
  `min_publishing_bandwidth_kbps` int(10) NOT NULL DEFAULT '-1',
  `video_codec` enum('VP6','Sorenson','H.264') NOT NULL DEFAULT 'H.264',
  `video_streaming_protocol` varchar(50) DEFAULT 'rtmp',
  `is_multi_bitrate` enum('Y','N') NOT NULL DEFAULT 'N',
  `allow_dynamic_switching` enum('Y','N') NOT NULL DEFAULT 'N',
  `presenter_publishing_bws_kbps` varchar(256) DEFAULT '128',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `audit_level` enum('Action','Lecture') NOT NULL DEFAULT 'Action',
  `max_viewer_interaction` int(10) DEFAULT '1',
  `registration_type` enum('Approval','NoApproval','OpenWithLogin','Open') DEFAULT 'Approval',
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `class_name_course` (`class_name`,`course_id`),
  KEY `class_course` (`course_id`),
  KEY `class_create_user` (`created_by_user_id`),
  KEY `class_modify_user` (`modified_by_user_id`),
  KEY `class_status` (`status_id`),
  CONSTRAINT `class_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='An instance of a course.';

/*Data for the table `class` */

/*Table structure for table `class_register` */

DROP TABLE IF EXISTS `class_register`;

CREATE TABLE `class_register` (
  `class_register_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `node_type_id` int(10) NOT NULL,
  `is_moderator` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `enable_audio_video` enum('Y','N') NOT NULL DEFAULT 'Y',
  `enable_document_sharing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `enable_desktop_sharing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `enable_video_sharing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `enable_2d_sharing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `enable_3d_sharing` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`class_register_id`),
  UNIQUE KEY `class_user` (`class_id`,`user_id`),
  KEY `class_register_class` (`class_id`),
  KEY `class_register_status` (`status_id`),
  KEY `class_register_create_user` (`created_by_user_id`),
  KEY `class_register_modify_user` (`modified_by_user_id`),
  KEY `class_register_user` (`user_id`),
  KEY `class_register_node_type` (`node_type_id`),
  CONSTRAINT `class_register_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_register_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_register_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_register_node_type` FOREIGN KEY (`node_type_id`) REFERENCES `node_type` (`node_type_id`),
  CONSTRAINT `class_register_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_register_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Registered users of a particular class.';

/*Data for the table `class_register` */

/*Table structure for table `class_server` */

DROP TABLE IF EXISTS `class_server`;

CREATE TABLE `class_server` (
  `class_server_id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(10) NOT NULL,
  `server_id` int(10) NOT NULL,
  `server_type_id` int(10) NOT NULL,
  `server_port` int(10) NOT NULL,
  `presenter_publishing_bw_kbps` int(10) DEFAULT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`class_server_id`),
  UNIQUE KEY `class_server_unique` (`class_id`,`server_id`,`server_type_id`,`presenter_publishing_bw_kbps`),
  KEY `class_server_class` (`class_id`),
  KEY `class_server_server` (`server_id`),
  KEY `class_server_server_type` (`server_type_id`),
  KEY `class_server_create_user` (`created_by_user_id`),
  KEY `class_server_modify_user` (`modified_by_user_id`),
  KEY `class_server_status` (`status_id`),
  CONSTRAINT `class_server_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_server_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_server_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_server_server` FOREIGN KEY (`server_id`) REFERENCES `server` (`server_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_server_server_type` FOREIGN KEY (`server_type_id`) REFERENCES `server_type` (`server_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_server_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Mapping between class and all the servers';

/*Data for the table `class_server` */

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(100) NOT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  `work_number` varchar(15) DEFAULT NULL,
  `fax_number` varchar(15) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `institute_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `contact_institute` (`contact_name`,`institute_id`),
  KEY `contact_institute_id` (`institute_id`),
  KEY `contact_created_id` (`created_by_user_id`),
  KEY `contacted_modified_id` (`modified_by_user_id`),
  KEY `contact_status_id` (`status_id`),
  CONSTRAINT `contact_created_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contact_institute_id` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contact_modified_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contact_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

/*Table structure for table `contact_group` */

DROP TABLE IF EXISTS `contact_group`;

CREATE TABLE `contact_group` (
  `contact_group_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_group_name` varchar(100) NOT NULL,
  `group_owner_user_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`contact_group_id`),
  UNIQUE KEY `group_unique_key` (`contact_group_name`,`group_owner_user_id`),
  KEY `group_group_owner_user_id` (`group_owner_user_id`),
  KEY `group_status_id` (`status_id`),
  KEY `group_created_by_user_id` (`created_by_user_id`),
  KEY `group_modified_by_user_id` (`modified_by_user_id`),
  CONSTRAINT `group_created_by_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `group_group_owner_user_id` FOREIGN KEY (`group_owner_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `group_modified_by_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `group_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact_group` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `status_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_name` (`country_name`),
  KEY `country_status` (`status_id`),
  KEY `country_create_user` (`created_by_user_id`),
  KEY `country_modify_user` (`modified_by_user_id`),
  CONSTRAINT `country_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `country_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `country_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Master table for storing the country names.';

/*Data for the table `country` */

insert  into `country`(`country_id`,`country_name`,`status_id`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`) values (1,'India',1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `institute_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `status_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_name_institute` (`course_name`,`institute_id`),
  UNIQUE KEY `course_code_institute` (`course_code`,`institute_id`),
  KEY `course_create_user` (`created_by_user_id`),
  KEY `course_modify_user` (`modified_by_user_id`),
  KEY `course_status` (`status_id`),
  KEY `course_institute` (`institute_id`),
  CONSTRAINT `course_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `course_institute` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`),
  CONSTRAINT `course_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `course_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Courses offered by the system.';

/*Data for the table `course` */

/*Table structure for table `deployment_activity` */

DROP TABLE IF EXISTS `deployment_activity`;

CREATE TABLE `deployment_activity` (
  `deployment_activity_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_id` int(10) NOT NULL,
  `contact_id` int(10) NOT NULL,
  `deployment_status_id` int(10) NOT NULL,
  `deployment_event_date` datetime NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`deployment_activity_id`),
  UNIQUE KEY `institute_deployment_status` (`institute_id`,`deployment_status_id`),
  KEY `deployment_institute_id` (`institute_id`),
  KEY `deployment_contact_id` (`contact_id`),
  KEY `deployment_created_user_id` (`created_by_user_id`),
  KEY `deployment_modified_user_id` (`modified_by_user_id`),
  KEY `deployment_status_id` (`status_id`),
  KEY `deployment_deployment_status_id` (`deployment_status_id`),
  CONSTRAINT `deployment_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_deployment_status_id` FOREIGN KEY (`deployment_status_id`) REFERENCES `deployment_status` (`deployment_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_institute_id` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `deployment_activity` */

/*Table structure for table `deployment_status` */

DROP TABLE IF EXISTS `deployment_status`;

CREATE TABLE `deployment_status` (
  `deployment_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `deployment_status_name` varchar(100) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`deployment_status_id`),
  UNIQUE KEY `deployment_status_name_UNIQUE` (`deployment_status_name`),
  KEY `deployment_create_user` (`created_by_user_id`),
  KEY `deployment_modify_user` (`modified_by_user_id`),
  KEY `deployment_status` (`status_id`),
  CONSTRAINT `deployment_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deployment_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `deployment_status` */

insert  into `deployment_status`(`deployment_status_id`,`deployment_status_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'Demoed',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(2,'Downloaded',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(3,'Emailed',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(4,'Phoned',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(5,'Tested',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(6,'Faxed',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1);

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `district_id` int(10) NOT NULL AUTO_INCREMENT,
  `state_id` int(10) NOT NULL,
  `district_name` varchar(256) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`district_id`),
  UNIQUE KEY `district_name_state` (`district_name`,`state_id`),
  KEY `district_state_id` (`state_id`),
  KEY `district_created_user` (`created_by_user_id`),
  KEY `district_modified_user` (`modified_by_user_id`),
  KEY `district_status` (`status_id`),
  CONSTRAINT `district_created_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `district_modified_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `district_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `district_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=latin1;

/*Data for the table `district` */

insert  into `district`(`district_id`,`state_id`,`district_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,1,'Andaman',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(2,1,'Nicobar',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(3,36,'Adilabad',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(4,2,'Anantapur',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(5,2,'Chittoor',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(6,2,'East Godavari',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(7,2,'Guntur',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(8,36,'Hyderabad',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(9,2,'YSR district',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(10,36,'Karimnagar',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(11,36,'Khammam',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(12,2,'Krishna',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(13,2,'Kurnool',1,'2011-11-15 09:54:53',1,'2011-11-15 09:54:53',1),(14,36,'Mahbubnagar',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(15,36,'Medak',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(16,36,'Nalgonda',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(17,2,'Nellore',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(18,36,'Nizamabad',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(19,2,'Prakasam',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(20,36,'Rangareddi',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(21,2,'Srikakulam',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(22,2,'Vishakhapatnam',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(23,2,'Vizianagaram',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(24,36,'Warangal',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(25,2,'West Godavari',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(26,3,'Anjaw',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(27,3,'Changlang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(28,3,'East Kameng',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(29,3,'East Siang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(30,3,'Lohit',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(31,3,'Lower Subansiri',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(32,3,'Papum Pare',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(33,3,'Tawang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(34,3,'Tirap',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(35,3,'Dibang Valley',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(36,3,'Lower Dibang Valley',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(37,3,'Upper Siang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(38,3,'Upper Subansiri',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(39,3,'West Kameng',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(40,3,'West Siang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(41,3,'Kurung Kumey',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(42,4,'Barpeta',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(43,4,'Bongaigaon',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(44,4,'Cachar',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(45,4,'Darrang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(46,4,'Dhemaji',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(47,4,'Dhubri',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(48,4,'Dibrugarh',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(49,4,'Goalpara',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(50,4,'Golaghat',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(51,4,'Hailakandi',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(52,4,'Jorhat',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(53,4,'Kamrup',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(54,4,'Karbi Anglong',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(55,4,'Karimganj',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(56,4,'Kokrajhar',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(57,4,'Lakhimpur',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(58,4,'Marigaon',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(59,4,'Nagaon',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(60,4,'Nalbari',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(61,4,'North Cachar Hills',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(62,4,'Sivasagar',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(63,4,'Sonitpur',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(64,4,'Tinsukia',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(65,4,'Kamrup Metro',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(66,4,'Udalguri',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(67,4,'Baksa',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(68,4,'Chirang',1,'2011-11-15 09:54:54',1,'2011-11-15 09:54:54',1),(69,5,'Araria',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(70,5,'Madhubani',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(71,5,'Begusarai',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(72,5,'Katihar',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(73,5,'Bhojpur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(74,5,'Darbhanga',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(75,5,'Gaya',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(76,5,'Gopalganj',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(77,5,'Jamui',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(78,5,'Jehanabad',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(79,5,'Kaimur (Bhabua)',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(80,5,'Khagaria',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(81,5,'Kishanganj',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(82,5,'Lakhisarai',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(83,5,'Madhepura',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(84,5,'Buxar',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(85,5,'Munger',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(86,5,'Muzaffarpur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(87,5,'Nawada',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(88,5,'Bhagalpur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(89,5,'Patna',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(90,5,'Purba Champaran (EastChamparan)',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(91,5,'Purnia',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(92,5,'Rohtas',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(93,5,'Saharsa',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(94,5,'Banka',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(95,5,'Saran',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(96,5,'Aurangabad',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(97,5,'Sitamarhi',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(98,5,'Siwan',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(99,5,'Supaul',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(100,5,'Vaishali',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(101,5,'Nalanda',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(102,5,'Pashchim Champaran(WestChamparan)',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(103,5,'Samastipur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(104,5,'Sheikhpura',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(105,5,'Sheohar',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(106,6,'Chandigarh',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(107,7,'Bastar',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(108,7,'Bilaspur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(109,7,'Dantewada',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(110,7,'Dhamtari',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(111,7,'Durg',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(112,7,'Janjgir-Champa',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(113,7,'Jashpur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(114,7,'Kanker',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(115,7,'Kawardha',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(116,7,'Korba',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(117,7,'Koriya',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(118,7,'Mahasamund',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(119,7,'Raigarh',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(120,7,'Raipur',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(121,7,'Rajnandgaon',1,'2011-11-15 09:54:55',1,'2011-11-15 09:54:55',1),(122,7,'Surguja',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(123,8,'Dadra & Nagar Haveli',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(124,9,'Diu',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(125,9,'Daman',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(126,10,'Central Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(127,10,'East Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(128,10,'New Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(129,10,'North Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(130,10,'North East Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(131,10,'North West Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(132,10,'South Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(133,10,'South West Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(134,10,'West Delhi',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(135,11,'North Goa',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(136,11,'South Goa',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(137,12,'Ahmedabad',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(138,12,'Amreli',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(139,12,'Anand',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(140,12,'Banas Kantha',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(141,12,'Bharuch',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(142,12,'Bhavnagar',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(143,12,'Dohad',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(144,12,'Gandhinagar',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(145,12,'Jamnagar',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(146,12,'Junagadh',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(147,12,'Kutch',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(148,12,'Kheda',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(149,12,'Mahesana',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(150,12,'Narmada',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(151,12,'Navsari',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(152,12,'Panch Mahals',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(153,12,'Patan',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(154,12,'Porbandar',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(155,12,'Rajkot',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(156,12,'Sabar Kantha',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(157,12,'Surat',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(158,12,'Surendranagar',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(159,12,'Dangs',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(160,12,'Vadodara',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(161,12,'Valsad',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(162,12,'Tapi ',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(163,13,'Ambala',1,'2011-11-15 09:54:56',1,'2011-11-15 09:54:56',1),(164,13,'Bhiwani',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(165,13,'Faridabad',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(166,13,'Fatehabad',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(167,13,'Gurgaon',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(168,13,'Hisar',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(169,13,'Jhajjar',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(170,13,'Jind',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(171,13,'Kaithal',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(172,13,'Karnal',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(173,13,'Kurukshetra',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(174,13,'Mahendragarh',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(175,13,'Mewat',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(176,13,'Panchkula',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(177,13,'Panipat',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(178,13,'Rewari',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(179,13,'Rohtak',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(180,13,'Sirsa',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(181,13,'Sonipat',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(182,13,'Yamunanagar',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(183,14,'Bilaspur',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(184,14,'Chamba',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(185,14,'Hamirpur',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(186,14,'Kangra',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(187,14,'Kinnaur',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(188,14,'Kullu',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(189,14,'Lahaul & Spiti',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(190,14,'Mandi',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(191,14,'Shimla',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(192,14,'Sirmaur',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(193,14,'Solan',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(194,14,'Una',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(195,15,'Anantnag',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(196,15,'Budgam',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(197,15,'Baramulla',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(198,15,'Doda',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(199,15,'Jammu',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(200,15,'Kargil',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(201,15,'Kathua',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(202,15,'Kupwara',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(203,15,'Leh',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(204,15,'Pulwama',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(205,15,'Poonch',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(206,15,'Rajauri',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(207,15,'Srinagar',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(208,15,'Udhampur',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(209,15,'Samba',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(210,15,'Reasi',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(211,15,'Ramban',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(212,15,'Kishtwar',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(213,15,'Kulgam',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(214,15,'Shopian',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(215,15,'Ganderbal',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(216,15,'Bandipora',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(217,16,'Bokaro',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(218,16,'Chatra',1,'2011-11-15 09:54:57',1,'2011-11-15 09:54:57',1),(219,16,'Deoghar',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(220,16,'Dhanbad',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(221,16,'Dumka',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(222,16,'Garhwa',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(223,16,'Giridih',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(224,16,'Godda',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(225,16,'Gumla',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(226,16,'Hazaribag',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(227,16,'Jamtara',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(228,16,'Koderma',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(229,16,'Lohardaga',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(230,16,'Pakur',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(231,16,'Palamu',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(232,16,'West Singhbhum',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(233,16,'East Singhbhum',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(234,16,'Ranchi',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(235,16,'Sahibganj',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(236,16,'Seraikela ',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(237,16,'Latehar',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(238,16,'Simdega',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(239,17,'Bagalkot',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(240,17,'Bangalore',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(241,17,'Bangalore Rural',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(242,17,'Belgaum',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(243,17,'Bellary',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(244,17,'Bidar',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(245,17,'Bijapur',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(246,17,'Chamrajnagar',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(247,17,'Chickmagalur',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(248,17,'Chitradurga',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(249,17,'Dakshin Kannada',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(250,17,'Davangere',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(251,17,'Dharwad',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(252,17,'Gadag',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(253,17,'Gulbarga',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(254,17,'Hassan',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(255,17,'Haveri',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(256,17,'Kodagu',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(257,17,'Kolar',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(258,17,'Koppal',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(259,17,'Mandya',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(260,17,'Mysore',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(261,17,'Raichur',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(262,17,'Shimoga',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(263,17,'Tumkur',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(264,17,'Udupi',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(265,17,'Uttar Kannada',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(266,18,'Alappuzha',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(267,18,'Ernakulam',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(268,18,'Idukki',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(269,18,'Kannur',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(270,18,'Kasargod',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(271,18,'Kollam',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(272,18,'Kottayam',1,'2011-11-15 09:54:58',1,'2011-11-15 09:54:58',1),(273,18,'Kozhikode',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(274,18,'Malappuram',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(275,18,'Palakkad',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(276,18,'Pathanamthitta',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(277,18,'Thiruvananthapuram',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(278,18,'Thrissur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(279,18,'Wayanad',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(280,19,'Lakshadweep',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(281,20,'Balaghat',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(282,20,'Barwani',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(283,20,'Betul',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(284,20,'Bhind',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(285,20,'Bhopal',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(286,20,'Chhatarpur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(287,20,'Chhindwara',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(288,20,'Damoh',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(289,20,'Datia',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(290,20,'Dewas',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(291,20,'Dhar',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(292,20,'Dindori',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(293,20,'Khandwa',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(294,20,'Guna',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(295,20,'Gwalior',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(296,20,'Harda',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(297,20,'Hoshangabad',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(298,20,'Indore',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(299,20,'Jabalpur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(300,20,'Jhabua',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(301,20,'Katni',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(302,20,'Mandla',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(303,20,'Mandsaur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(304,20,'Morena',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(305,20,'Narsinghpur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(306,20,'Neemuch',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(307,20,'Panna',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(308,20,'Raisen',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(309,20,'Rajgarh',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(310,20,'Ratlam',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(311,20,'Rewa',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(312,20,'Sagar',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(313,20,'Satna',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(314,20,'Sehore',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(315,20,'Seoni',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(316,20,'Shahdol',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(317,20,'Shajapur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(318,20,'Sheopur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(319,20,'Shivpuri',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(320,20,'Sidhi',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(321,20,'Tikamgarh',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(322,20,'Ujjain',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(323,20,'Umaria',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(324,20,'Vidisha',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(325,20,'Khargone (West Nimar)',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(326,20,'Anuppur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(327,20,'Burhanpur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(328,20,'Alirajpur',1,'2011-11-15 09:54:59',1,'2011-11-15 09:54:59',1),(329,20,'Singrauli',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(330,20,'Ashoknagar',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(331,21,'Ahmednagar',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(332,21,'Akola',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(333,21,'Amravati',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(334,21,'Aurangabad',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(335,21,'Bhandara',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(336,21,'Beed',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(337,21,'Buldhana',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(338,21,'Chandrapur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(339,21,'Dhule',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(340,21,'Gadchiroli',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(341,21,'Gondia',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(342,21,'Hingoli',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(343,21,'Jalgaon',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(344,21,'Jalna',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(345,21,'Kolhapur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(346,21,'Latur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(347,21,'Mumbai',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(348,21,'Mumbai Suburban',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(349,21,'Nagpur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(350,21,'Nanded',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(351,21,'Nandurbar',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(352,21,'Nashik',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(353,21,'Osmanabad',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(354,21,'Parbhani',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(355,21,'Pune',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(356,21,'Raigad',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(357,21,'Ratnagiri',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(358,21,'Sangli',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(359,21,'Satara',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(360,21,'Sindhudurg',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(361,21,'Solapur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(362,21,'Thane',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(363,21,'Wardha',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(364,21,'Washim',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(365,21,'Yavatmal',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(366,22,'Bishnupur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(367,22,'Chandel',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(368,22,'Churachandpur',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(369,22,'Imphal East',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(370,22,'Imphal West',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(371,22,'Senapati',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(372,22,'Tamenglong',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(373,22,'Thoubal',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(374,22,'Ukhrul',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(375,23,'East Garo Hills',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(376,23,'East Khasi Hills',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(377,23,'Jaintia Hills',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(378,23,'Ri Bhoi',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(379,23,'South Garo Hills',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(380,23,'West Garo Hills',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(381,23,'West Khasi Hills',1,'2011-11-15 09:55:00',1,'2011-11-15 09:55:00',1),(382,24,'Aizawl',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(383,24,'Champhai',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(384,24,'Kolasib',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(385,24,'Lawngtlai',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(386,24,'Lunglei',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(387,24,'Mamit',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(388,24,'Saiha',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(389,24,'Serchhip',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(390,25,'Dimapur',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(391,25,'Kohima',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(392,25,'Mokokchung',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(393,25,'Mon',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(394,25,'Phek',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(395,25,'Tuensang',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(396,25,'Wokha',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(397,25,'Zunheboto',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(398,26,'Anugul',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(399,26,'Balangir',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(400,26,'Baleswar',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(401,26,'Bargarh',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(402,26,'Boudh',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(403,26,'Bhadrak',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(404,26,'Cuttack',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(405,26,'Deogarh',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(406,26,'Dhenkanal',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(407,26,'Gajapati',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(408,26,'Ganjam',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(409,26,'Jagatsinghapur',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(410,26,'Jajpur',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(411,26,'Jharsuguda',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(412,26,'Kalahandi',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(413,26,'Kandhamal',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(414,26,'Kendrapara',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(415,26,'Kendujhar',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(416,26,'Khordha',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(417,26,'Koraput',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(418,26,'Malkangiri',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(419,26,'Mayurbhanj',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(420,26,'Nabarangapur',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(421,26,'Nayagarh',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(422,26,'Nuapada',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(423,26,'Puri',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(424,26,'Rayagada',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(425,26,'Sambalpur',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(426,26,'Subarnapur',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(427,26,'Sundergarh',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(428,27,'Karaikal',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(429,27,'Mahe',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(430,27,'Puducherry',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(431,27,'Yanam',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(432,28,'Amritsar',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(433,28,'Bathinda',1,'2011-11-15 09:55:01',1,'2011-11-15 09:55:01',1),(434,28,'Faridkot',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(435,28,'Fatehgarh Sahib',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(436,28,'Ferozepur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(437,28,'Gurdaspur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(438,28,'Hoshiarpur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(439,28,'Jalandhar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(440,28,'Kapurthala',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(441,28,'Ludhiana',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(442,28,'Mansa',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(443,28,'Muktsar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(444,28,'Nawanshahr',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(445,28,'Patiala',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(446,28,'Rupnagar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(447,28,'Sangrur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(448,28,'Barnala',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(449,28,'Mohali',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(450,28,'Tarn Taran',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(451,29,'Ajmer',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(452,29,'Alwar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(453,29,'Banswara',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(454,29,'Baran',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(455,29,'Barmer',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(456,29,'Bharatpur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(457,29,'Bhilwara',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(458,29,'Bikaner',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(459,29,'Bundi',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(460,29,'Chittorgarh',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(461,29,'Churu',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(462,29,'Dausa',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(463,29,'Dholpur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(464,29,'Dungarpur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(465,29,'Sri Ganganagar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(466,29,'Hanumangarh',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(467,29,'Jaipur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(468,29,'Jaisalmer',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(469,29,'Jalor',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(470,29,'Jhalawar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(471,29,'Jhunjhunu',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(472,29,'Jodhpur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(473,29,'Karauli',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(474,29,'Kota',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(475,29,'Nagaur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(476,29,'Pali',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(477,29,'Rajsamand',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(478,29,'Sawai Madhopur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(479,29,'Sikar',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(480,29,'Sirohi',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(481,29,'Tonk',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(482,29,'Udaipur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(483,29,'Pratapgarh',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(484,30,'East Sikkim',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(485,30,'North Sikkim',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(486,30,'South Sikkim',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(487,30,'West Sikkim',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(488,31,'Ariyalur',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(489,31,'Chennai',1,'2011-11-15 09:55:02',1,'2011-11-15 09:55:02',1),(490,31,'Coimbatore',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(491,31,'Cuddalore',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(492,31,'Dharmapuri',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(493,31,'Dindigul',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(494,31,'Erode',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(495,31,'Kanchipuram',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(496,31,'Kanyakumari',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(497,31,'Karur',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(498,31,'Madurai',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(499,31,'Nagapattinam',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(500,31,'Namakkal',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(501,31,'Perambalur',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(502,31,'Pudukkottai',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(503,31,'Ramanathapuram',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(504,31,'Salem',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(505,31,'Sivaganga',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(506,31,'Thanjavur',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(507,31,'Nilgiris',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(508,31,'Theni',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(509,31,'Tiruvallur',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(510,31,'Tiruvarur',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(511,31,'Thoothukudi',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(512,31,'Tiruchirappalli',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(513,31,'Tirunelveli',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(514,31,'Tiruvannamalai',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(515,31,'Vellore',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(516,31,'Viluppuram',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(517,31,'Virudhunagar',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(518,31,'Krishnagiri',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(519,32,'Dhalai',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(520,32,'North Tripura',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(521,32,'South Tripura',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(522,32,'West Tripura',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(523,33,'Agra',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(524,33,'Aligarh',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(525,33,'Allahabad',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(526,33,'Ambedkar Nagar',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(527,33,'Auraiya',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(528,33,'Azamgarh',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(529,33,'Bagpat',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(530,33,'Bahraich',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(531,33,'Ballia',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(532,33,'Balrampur',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(533,33,'Banda',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(534,33,'Barabanki',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(535,33,'Bareilly',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(536,33,'Basti',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(537,33,'Bijnor',1,'2011-11-15 09:55:03',1,'2011-11-15 09:55:03',1),(538,33,'Budaun',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(539,33,'Bulandshahr',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(540,33,'Chandauli',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(541,33,'Chitrakoot',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(542,33,'Deoria',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(543,33,'Etah',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(544,33,'Etawah',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(545,33,'Faizabad',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(546,33,'Farrukhabad',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(547,33,'Fatehpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(548,33,'Firozabad',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(549,33,'Gautam Buddha Nagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(550,33,'Ghaziabad',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(551,33,'Ghazipur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(552,33,'Gonda',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(553,33,'Gorakhpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(554,33,'Hamirpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(555,33,'Hardoi',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(556,33,'Hathras',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(557,33,'Jalaun',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(558,33,'Jaunpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(559,33,'Jhansi',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(560,33,'Jyotiba Phule Nagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(561,33,'Kannauj',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(562,33,'Kanpur Dehat',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(563,33,'Kanpur Nagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(564,33,'Kaushambi',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(565,33,'Kheri',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(566,33,'Kushinagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(567,33,'Lalitpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(568,33,'Lucknow',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(569,33,'Mahoba',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(570,33,'Maharajganj',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(571,33,'Mainpuri',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(572,33,'Mathura',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(573,33,'Mau',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(574,33,'Meerut',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(575,33,'Mirzapur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(576,33,'Moradabad',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(577,33,'Muzaffarnagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(578,33,'Pilibhit',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(579,33,'Pratapgarh',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(580,33,'RaeBareli',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(581,33,'Rampur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(582,33,'Saharanpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(583,33,'Sant Kabir Nagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(584,33,'Sant Ravidas Nagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(585,33,'Shahjahanpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(586,33,'Shravasti',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(587,33,'Siddharthnagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(588,33,'Sitapur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(589,33,'Sonbhadra',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(590,33,'Sultanpur',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(591,33,'Unnao',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(592,33,'Varanasi',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(593,33,'Manyavar Kanshiram Nagar',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(594,34,'Almora',1,'2011-11-15 09:55:04',1,'2011-11-15 09:55:04',1),(595,34,'Bageshwar',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(596,34,'Chamoli',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(597,34,'Champawat',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(598,34,'Dehradun',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(599,34,'Pauri Garhwal',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(600,34,'Haridwar',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(601,34,'Nainital',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(602,34,'Pithoragarh',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(603,34,'Rudraprayag',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(604,34,'Tehri Garhwal',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(605,34,'Udham Singh Nagar',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(606,34,'Uttarkashi',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(607,35,'Bankura',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(608,35,'Bardhaman',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(609,35,'Birbhum',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(610,35,'South Dinajpur (Dakshin)',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(611,35,'Darjeeling',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(612,35,'Howrah',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(613,35,'Hooghly',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(614,35,'Jalpaiguri',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(615,35,'Cooch Behar',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(616,35,'Kolkata',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(617,35,'Malda',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(618,35,'East Medinipur',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(619,35,'Murshidabad',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(620,35,'Nadia',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(621,35,'North 24 Parganas',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(622,35,'Purulia',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(623,35,'South 24 Parganas',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(624,35,'North Dinajpur(Uttar)',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(625,35,'West Medinipur (Paschim)',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(626,31,'Tirupur',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(627,28,'Moga',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(628,17,'Yadgir',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1);

/*Table structure for table `download_list` */

DROP TABLE IF EXISTS `download_list`;

CREATE TABLE `download_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_download` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) DEFAULT NULL,
  `emailaddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `download_list` */

/*Table structure for table `face_templates` */

DROP TABLE IF EXISTS `face_templates`;

CREATE TABLE `face_templates` (
  `template_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `templatefile_path` varchar(1024) NOT NULL,
  `templatefile_name` varchar(256) NOT NULL,
  `iconfile_path` varchar(1024) NOT NULL,
  `iconfile_name` varchar(256) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_user_id` (`user_id`),
  KEY `template_created_id` (`created_by_user_id`),
  KEY `template_modified_id` (`modified_by_user_id`),
  KEY `template_status_id` (`status_id`),
  CONSTRAINT `template_created_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `template_modified_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `template_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `template_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `face_templates` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `audit_user_login_id` int(10) NOT NULL,
  `audit_lecture_id` int(10) DEFAULT NULL,
  `average_bandwidth_bars` decimal(5,2) NOT NULL,
  `overall_rating` int(1) DEFAULT NULL,
  `audio_rating` int(1) DEFAULT NULL,
  `video_rating` int(1) DEFAULT NULL,
  `interaction_rating` int(1) DEFAULT NULL,
  `whiteboard_rating` int(1) DEFAULT NULL,
  `document_sharing_rating` int(1) DEFAULT NULL,
  `desktop_sharing_rating` int(1) DEFAULT NULL,
  `usability_rating` int(1) DEFAULT NULL,
  `overall_feedback` varchar(256) DEFAULT NULL,
  `audio_feedback` varchar(256) DEFAULT NULL,
  `video_feedback` varchar(256) DEFAULT NULL,
  `interaction_feedback` varchar(256) DEFAULT NULL,
  `whiteboard_feedback` varchar(256) DEFAULT NULL,
  `document_sharing_feedback` varchar(256) DEFAULT NULL,
  `desktop_sharing_feedback` varchar(256) DEFAULT NULL,
  `usability_feedback` varchar(256) DEFAULT NULL,
  `other_feedback` varchar(4000) DEFAULT NULL,
  `total_memory_mb` decimal(9,3) DEFAULT NULL,
  `free_memory_mb` decimal(9,3) DEFAULT NULL,
  `memory_used_mb` decimal(9,3) DEFAULT NULL,
  `cpu_used_pct` int(3) DEFAULT NULL,
  `cpu_architecture` varchar(128) DEFAULT NULL,
  `operating_system` varchar(128) DEFAULT NULL,
  `screen_resolution_x` int(6) DEFAULT NULL,
  `screen_resolution_y` int(6) DEFAULT NULL,
  `stage_width` int(6) DEFAULT NULL,
  `stage_height` int(6) DEFAULT NULL,
  `is_audio_video_access` enum('Y','N') DEFAULT NULL,
  `is_local_file_read_access` enum('Y','N') DEFAULT NULL,
  `is_max_idc_level` varchar(20) DEFAULT NULL,
  `is_64bit_support` enum('Y','N') DEFAULT NULL,
  `runtime_version` varchar(128) DEFAULT NULL,
  `upload_bandwidth_kb` int(6) DEFAULT NULL,
  `download_bandwidth_kb` int(6) DEFAULT NULL,
  `is_behind_firewall` enum('Y','N') DEFAULT NULL,
  `is_behind_proxy` enum('Y','N') DEFAULT NULL,
  `is_antivirus_protected` enum('Y','N') DEFAULT NULL,
  `anti_virus_name` varchar(128) DEFAULT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `feedback_user` (`user_id`),
  KEY `feedback_aul` (`audit_user_login_id`),
  KEY `feedback_al` (`audit_lecture_id`),
  KEY `feedback_create_user` (`created_by_user_id`),
  KEY `feedback_modify_user` (`modified_by_user_id`),
  KEY `feedback_status` (`status_id`),
  CONSTRAINT `feedback_al` FOREIGN KEY (`audit_lecture_id`) REFERENCES `audit_lecture` (`audit_lecture_id`),
  CONSTRAINT `feedback_aul` FOREIGN KEY (`audit_user_login_id`) REFERENCES `audit_user_login` (`audit_user_login_id`),
  CONSTRAINT `feedback_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `feedback_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `feedback_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `feedback_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `feedback_issue` */

DROP TABLE IF EXISTS `feedback_issue`;

CREATE TABLE `feedback_issue` (
  `feedback_issue_id` int(10) NOT NULL AUTO_INCREMENT,
  `feedback_id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `issue_title` varchar(256) DEFAULT NULL,
  `issue_description` varchar(4000) DEFAULT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`feedback_issue_id`),
  UNIQUE KEY `feedback_issue_unique` (`feedback_id`,`module_id`),
  KEY `issue_module` (`module_id`),
  KEY `issue_create_user` (`created_by_user_id`),
  KEY `issue_modify_user` (`modified_by_user_id`),
  KEY `issue_status` (`status_id`),
  CONSTRAINT `issue_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `issue_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`),
  CONSTRAINT `issue_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `issue_module` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`),
  CONSTRAINT `issue_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback_issue` */

/*Table structure for table `group_transfer` */

DROP TABLE IF EXISTS `group_transfer`;

CREATE TABLE `group_transfer` (
  `group_transfer_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`group_transfer_id`),
  UNIQUE KEY `group_receiver` (`group_id`,`receiver_id`),
  KEY `group_transfer_receiver` (`receiver_id`),
  KEY `group_transfer_modified_user` (`modified_by_user_id`),
  KEY `group_transfer_status` (`status_id`),
  KEY `group_transfer_created_user` (`created_by_user_id`),
  KEY `group_transfer_sender` (`sender_id`),
  CONSTRAINT `group_transfer_created_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `group_transfer_group` FOREIGN KEY (`group_id`) REFERENCES `contact_group` (`contact_group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `group_transfer_modified_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `group_transfer_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `group_transfer_sender` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `group_transfer_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `group_transfer` */

/*Table structure for table `group_user` */

DROP TABLE IF EXISTS `group_user`;

CREATE TABLE `group_user` (
  `group_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_group_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`group_user_id`),
  UNIQUE KEY `group_user_unique_key` (`contact_group_id`,`user_id`),
  KEY `group_user_user_id` (`user_id`),
  KEY `group_user_status_id` (`status_id`),
  KEY `group_user_created_by_user_id` (`created_by_user_id`),
  KEY `group_user_modified_by_user_id` (`modified_by_user_id`),
  CONSTRAINT `group_user_created_by_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `group_user_group_id` FOREIGN KEY (`contact_group_id`) REFERENCES `contact_group` (`contact_group_id`),
  CONSTRAINT `group_user_modified_by_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `group_user_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `group_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `group_user` */

/*Table structure for table `institute` */

DROP TABLE IF EXISTS `institute`;

CREATE TABLE `institute` (
  `institute_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(300) NOT NULL,
  `institute_type` enum('College','Organization','University','School') DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `institute_category_id` int(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district_id` int(10) NOT NULL,
  `latitude` float DEFAULT '0',
  `longitude` float DEFAULT '0',
  `parent_institute_id` int(10) DEFAULT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `is_fire_walled` enum('Y','N') NOT NULL DEFAULT 'N',
  `min_publishing_bandwidth_kbps` int(10) NOT NULL,
  `max_publishing_bandwidth_kbps` int(10) NOT NULL,
  PRIMARY KEY (`institute_id`),
  UNIQUE KEY `institute_name_UNIQUE` (`institute_name`),
  KEY `institute_district_id` (`district_id`),
  KEY `institute_created_id` (`created_by_user_id`),
  KEY `institute_modified_id` (`modified_by_user_id`),
  KEY `institute_status_id` (`status_id`),
  KEY `institute_parent_id` (`parent_institute_id`),
  KEY `institute_category` (`institute_category_id`),
  CONSTRAINT `institute_category` FOREIGN KEY (`institute_category_id`) REFERENCES `institute_category` (`institute_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_created_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_modified_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_parent_id` FOREIGN KEY (`parent_institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `institute` */

insert  into `institute`(`institute_id`,`institute_name`,`institute_type`,`address`,`institute_category_id`,`city`,`district_id`,`latitude`,`longitude`,`parent_institute_id`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`,`is_fire_walled`,`min_publishing_bandwidth_kbps`,`max_publishing_bandwidth_kbps`) values (1,'Amrita E-Learning Research Lab','Organization','Amrita Vishwa Vidyapeetham\rAmritapuri\rClappana P.O.\rKollam',7,'Amritapuri',271,0,0,NULL,1,'2011-11-15 10:00:51',1,'2014-07-05 12:32:42',1,'N',28,8505);

/*Table structure for table `institute_admin_user` */

DROP TABLE IF EXISTS `institute_admin_user`;

CREATE TABLE `institute_admin_user` (
  `institute_admin_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `institute_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`institute_admin_user_id`),
  UNIQUE KEY `institute_admin_user_user` (`user_id`,`institute_id`),
  KEY `institute_admin_user_institute` (`institute_id`),
  KEY `institute_admin_user_created_user` (`created_by_user_id`),
  KEY `institute_admin_user_modified_user` (`modified_by_user_id`),
  KEY `institute_admin_user_status_id` (`status_id`),
  CONSTRAINT `institute_admin_user_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_admin_user_institute_id` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_admin_user_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_admin_user_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_admin_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `institute_admin_user` */

/*Table structure for table `institute_branding` */

DROP TABLE IF EXISTS `institute_branding`;

CREATE TABLE `institute_branding` (
  `institute_branding_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_id` int(10) NOT NULL,
  `branding_attribute_id` int(10) NOT NULL,
  `branding_attribute_value` varchar(1000) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`institute_branding_id`),
  UNIQUE KEY `institute_branding_UNIQUE` (`institute_id`,`branding_attribute_id`),
  KEY `institute_branding_created_id` (`created_by_user_id`),
  KEY `institute_branding_modified_id` (`modified_by_user_id`),
  KEY `institute_branding_status_id` (`status_id`),
  KEY `institute_branding_branding_attribute_id` (`branding_attribute_id`),
  CONSTRAINT `institute_branding_branding_attribute_id` FOREIGN KEY (`branding_attribute_id`) REFERENCES `branding_attribute` (`branding_attribute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_branding_created_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_branding_institute_id` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_branding_modified_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_branding_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `institute_branding` */

/*Table structure for table `institute_category` */

DROP TABLE IF EXISTS `institute_category`;

CREATE TABLE `institute_category` (
  `institute_category_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_category_name` varchar(200) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`institute_category_id`),
  UNIQUE KEY `institute_category_name_UNIQUE` (`institute_category_name`),
  KEY `category_created_user_id` (`created_by_user_id`),
  KEY `category_modified_user_id` (`modified_by_user_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `category_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `category_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `institute_category` */

insert  into `institute_category`(`institute_category_id`,`institute_category_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'Arts and Sciences',1,'2011-11-15 09:55:05',1,'2011-11-15 09:57:47',1),(2,'Engineering',1,'2011-11-15 09:55:05',1,'2011-11-15 09:57:47',1),(3,'Medicine',1,'2011-11-15 09:55:05',1,'2011-11-15 09:57:47',1),(4,'Management',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(5,'Law',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(6,'Agriculture',1,'2011-11-15 09:55:05',1,'2011-11-15 09:55:05',1),(7,'Others',1,'2011-11-15 09:57:47',1,'2011-11-15 09:57:47',1),(8,'School-Primary',1,'2013-08-27 13:30:55',1,'2013-08-27 13:30:55',1),(9,'School-Secondary',1,'2013-08-27 13:30:56',1,'2013-08-27 13:30:56',1),(10,'School-Higher Secondary',1,'2013-08-27 13:30:56',1,'2013-08-27 13:30:56',1);

/*Table structure for table `institute_server` */

DROP TABLE IF EXISTS `institute_server`;

CREATE TABLE `institute_server` (
  `institute_server_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_id` int(10) NOT NULL,
  `server_id` int(10) NOT NULL,
  `server_type_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`institute_server_id`),
  UNIQUE KEY `institute_server_unique` (`institute_id`,`server_id`,`server_type_id`),
  KEY `institute_server_institute` (`institute_id`),
  KEY `institute_server_server` (`server_id`),
  KEY `institute_server_server_type` (`server_type_id`),
  KEY `institute_server_created_user` (`created_by_user_id`),
  KEY `institute_server_modified_user` (`modified_by_user_id`),
  KEY `institute_server_status` (`status_id`),
  CONSTRAINT `institute_server_created_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_server_institute` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_server_modified_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_server_server` FOREIGN KEY (`server_id`) REFERENCES `server` (`server_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_server_server_type` FOREIGN KEY (`server_type_id`) REFERENCES `server_type` (`server_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `institute_server_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `institute_server` */

/*Table structure for table `lecture` */

DROP TABLE IF EXISTS `lecture`;

CREATE TABLE `lecture` (
  `lecture_id` int(10) NOT NULL AUTO_INCREMENT,
  `lecture_name` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  `recorded_presenter_video_url` varchar(1000) DEFAULT NULL,
  `recorded_viewer_video_url` varchar(1000) DEFAULT NULL,
  `recorded_video_file_path` varchar(256) DEFAULT NULL,
  `recorded_content_url` varchar(1000) DEFAULT NULL,
  `recorded_content_file_path` varchar(256) DEFAULT NULL,
  `class_id` int(10) NOT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  `lecture_number` int(10) NOT NULL,
  `start_time` time NOT NULL COMMENT 'Initially this value is inherited from class table. But can be modified per lecture basis.',
  `end_time` time NOT NULL COMMENT 'Initially this value is inherited from class table. But can be modified per lecture basis.',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `recorded_desktop_url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`lecture_id`),
  UNIQUE KEY `lecture_name` (`lecture_name`,`class_id`),
  UNIQUE KEY `lecture_date` (`date`,`start_time`,`end_time`,`class_id`),
  KEY `FK_lectures` (`class_id`),
  KEY `lecture_create_user` (`created_by_user_id`),
  KEY `lecture_modify_user` (`modified_by_user_id`),
  KEY `lecture_status` (`status_id`),
  CONSTRAINT `lecture_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  CONSTRAINT `lecture_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lecture_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lecture_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Instance of a class.';

/*Data for the table `lecture` */

/*Table structure for table `lectures` */

DROP TABLE IF EXISTS `lectures`;

CREATE TABLE `lectures` (
  `lecture_id` int(12) NOT NULL AUTO_INCREMENT,
  `lecture_topic` varchar(100) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `videofile_path` varchar(1024) DEFAULT NULL,
  `videofile_name` varchar(256) DEFAULT NULL,
  `xmlfile_path` varchar(1024) DEFAULT NULL,
  `xmlfile_name` varchar(256) DEFAULT NULL,
  `teacher_id` int(12) DEFAULT NULL,
  `course_id` int(12) DEFAULT NULL,
  `recorded_lecture_id` int(10) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `lecture_number` int(12) DEFAULT NULL,
  PRIMARY KEY (`lecture_id`),
  KEY `FK_lecture` (`recorded_lecture_id`),
  KEY `FK_user` (`teacher_id`),
  KEY `FK_course` (`course_id`),
  CONSTRAINT `FK_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `FK_lecture` FOREIGN KEY (`recorded_lecture_id`) REFERENCES `lecture` (`lecture_id`),
  CONSTRAINT `FK_user` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lectures` */

/*Table structure for table `module` */

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `module_id` int(10) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `status_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`module_id`),
  KEY `module_create_user` (`created_by_user_id`),
  KEY `module_modify_user` (`modified_by_user_id`),
  KEY `module_status` (`status_id`),
  CONSTRAINT `module_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `module_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `module_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Master table for stroing the module names.';

/*Data for the table `module` */

insert  into `module`(`module_id`,`module_name`,`status_id`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`) values (1,'White Board',1,1,'2011-06-04 12:29:30',1,'2011-06-04 12:29:30'),(2,'Video/Audio',1,1,'2011-06-04 12:29:33',1,'2011-06-04 12:29:33'),(3,'Document Sharing',1,1,'2011-06-04 12:29:36',1,'2011-06-04 12:29:36'),(4,'User Interface',1,1,'2011-06-04 12:29:41',1,'2011-06-04 12:29:41'),(5,'Desktop Sharing',1,1,'2011-06-04 12:29:44',1,'2011-06-04 12:29:44'),(6,'Chat',1,1,'2011-06-04 12:29:51',1,'2011-06-04 12:29:51'),(7,'Quiz',1,1,'2012-09-07 17:53:24',1,'2012-09-07 17:53:24'),(8,'Setup',1,1,'2012-09-07 17:53:24',1,'2012-09-07 17:53:24'),(9,'Feedback',1,1,'2012-09-07 17:53:24',1,'2012-09-07 17:53:24'),(10,'Help',1,1,'2012-09-07 17:53:24',1,'2012-09-07 17:53:24'),(11,'Question',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(12,'3DViewer',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(13,'2DViewer',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(14,'Video Sharing',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(15,'Polling',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(16,'Recording',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(17,'Playback',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(18,'Editing',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25'),(19,'Face registration',1,1,'2012-09-07 17:53:25',1,'2012-09-07 17:53:25');

/*Table structure for table `node` */

DROP TABLE IF EXISTS `node`;

CREATE TABLE `node` (
  `node_id` int(10) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(100) NOT NULL,
  `node_type_id` int(10) NOT NULL,
  `node_location` varchar(256) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`node_id`),
  UNIQUE KEY `node_name_UNIQUE` (`node_name`),
  KEY `node_node_type` (`node_type_id`),
  KEY `node_status` (`status_id`),
  KEY `node_create_user` (`created_by_user_id`),
  KEY `node_modify_user` (`modified_by_user_id`),
  CONSTRAINT `node_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `node_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `node_node_type` FOREIGN KEY (`node_type_id`) REFERENCES `node_type` (`node_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `node_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='The location from which the lecture is attended.';

/*Data for the table `node` */

/*Table structure for table `node_type` */

DROP TABLE IF EXISTS `node_type`;

CREATE TABLE `node_type` (
  `node_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `node_type_name` varchar(100) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`node_type_id`),
  UNIQUE KEY `node_type_name_UNIQUE` (`node_type_name`),
  KEY `node_type_status` (`status_id`),
  KEY `node_type_create_user` (`created_by_user_id`),
  KEY `node_type_modify_user` (`modified_by_user_id`),
  CONSTRAINT `node_type_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `node_type_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `node_type_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Location type from which A-View is used';

/*Data for the table `node_type` */

insert  into `node_type`(`node_type_id`,`node_type_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'PERSONAL COMPUTER',1,'1900-01-01 00:00:00',1,'1900-01-01 00:00:00',1),(2,'CLASSROOM COMPUTER',1,'1900-01-01 00:00:00',1,'1900-01-01 00:00:00',1);

/*Table structure for table `people_count` */

DROP TABLE IF EXISTS `people_count`;

CREATE TABLE `people_count` (
  `people_count_id` int(10) NOT NULL AUTO_INCREMENT,
  `lecture_id` int(10) NOT NULL,
  `people_count_timestamp` datetime NOT NULL,
  `people_count_data` mediumtext,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`people_count_id`),
  KEY `people_count_lecture_id` (`lecture_id`),
  KEY `people_count_status_id` (`status_id`),
  KEY `people_count_created_user_id` (`created_by_user_id`),
  KEY `people_count_modified_user_id` (`modified_by_user_id`),
  CONSTRAINT `people_count_created_user_id` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `people_count_lecture_id` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `people_count_modified_user_id` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `people_count_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `people_count` */

/*Table structure for table `qb_answer_choice` */

DROP TABLE IF EXISTS `qb_answer_choice`;

CREATE TABLE `qb_answer_choice` (
  `qb_answer_choice_id` int(10) NOT NULL AUTO_INCREMENT,
  `qb_question_id` int(10) NOT NULL,
  `choice_text` varchar(256) NOT NULL,
  `fraction` decimal(3,2) NOT NULL COMMENT 'The value for this field determines the correctness of an answer.\nIn case of single response, a value of 1 means correct answer and a value of 0 means wrong answer.\nIn case of multiple responses, each option (choice) can be given a fractional value, both ',
  `display_sequence` int(10) NOT NULL,
  `choice_text_hash` varchar(40) NOT NULL DEFAULT '',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`qb_answer_choice_id`),
  UNIQUE KEY `qb_question_answer_choice` (`qb_question_id`,`choice_text_hash`),
  KEY `choice_qb_question_id` (`qb_question_id`),
  KEY `choice_create_user` (`created_by_user_id`),
  KEY `choice_modify_user` (`modified_by_user_id`),
  KEY `choice_status` (`status_id`),
  CONSTRAINT `choice_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `choice_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `choice_question` FOREIGN KEY (`qb_question_id`) REFERENCES `qb_question` (`qb_question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `choice_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Choices for answer of question in qb_question.';

/*Data for the table `qb_answer_choice` */

/*Table structure for table `qb_category` */

DROP TABLE IF EXISTS `qb_category`;

CREATE TABLE `qb_category` (
  `qb_category_id` int(10) NOT NULL AUTO_INCREMENT,
  `qb_category_name` varchar(100) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `institute_id` int(10) NOT NULL,
  PRIMARY KEY (`qb_category_id`),
  UNIQUE KEY `qb_category_name_user_unique` (`qb_category_name`,`created_by_user_id`),
  KEY `category_create_user` (`created_by_user_id`),
  KEY `category_modify_user` (`modified_by_user_id`),
  KEY `category_status` (`status_id`),
  KEY `qbcategory_institute` (`institute_id`),
  CONSTRAINT `category_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `category_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `category_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qbcategory_institute` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Categories are for grouping questions.';

/*Data for the table `qb_category` */

insert  into `qb_category`(`qb_category_id`,`qb_category_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`,`institute_id`) values (1,'Polling',1,'2012-09-07 18:07:08',1,'2012-09-07 18:07:08',1,1);

/*Table structure for table `qb_difficulty_level` */

DROP TABLE IF EXISTS `qb_difficulty_level`;

CREATE TABLE `qb_difficulty_level` (
  `qb_difficulty_level_id` int(10) NOT NULL AUTO_INCREMENT,
  `qb_difficulty_level_name` varchar(100) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`qb_difficulty_level_id`),
  UNIQUE KEY `qb_difficulty_level_name_UNIQUE` (`qb_difficulty_level_name`),
  KEY `dlevel_create_user` (`created_by_user_id`),
  KEY `dlevel_modify_user` (`modified_by_user_id`),
  KEY `dlevel_status` (`status_id`),
  CONSTRAINT `dlevel_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dlevel_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dlevel_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Master table for difficulty level of a question.';

/*Data for the table `qb_difficulty_level` */

insert  into `qb_difficulty_level`(`qb_difficulty_level_id`,`qb_difficulty_level_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'Easy',1,'2012-09-10 14:05:38',1,'2012-09-10 14:05:38',1),(2,'Difficult',1,'2012-09-10 14:05:38',1,'2012-09-10 14:05:38',1);

/*Table structure for table `qb_question` */

DROP TABLE IF EXISTS `qb_question`;

CREATE TABLE `qb_question` (
  `qb_question_id` int(10) NOT NULL AUTO_INCREMENT,
  `qb_subcategory_id` int(10) NOT NULL,
  `qb_question_type_id` int(10) NOT NULL,
  `qb_difficulty_level_id` int(10) NOT NULL,
  `question_text` varchar(4000) NOT NULL,
  `marks` decimal(5,2) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `question_text_hash` varchar(40) NOT NULL COMMENT 'This value is populated by external program by calculating the hash of the question text to ensure the uniqueness.',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`qb_question_id`),
  UNIQUE KEY `qb_question_sc_dl_user_unique` (`question_text_hash`,`qb_subcategory_id`,`qb_question_type_id`,`created_by_user_id`),
  KEY `ques_subcategory` (`qb_subcategory_id`),
  KEY `ques_qtype` (`qb_question_type_id`),
  KEY `ques_dlevel` (`qb_difficulty_level_id`),
  KEY `ques_create_user` (`created_by_user_id`),
  KEY `ques_modify_user` (`modified_by_user_id`),
  KEY `ques_status` (`status_id`),
  KEY `ques_parent` (`parent_id`),
  CONSTRAINT `ques_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ques_dlevel` FOREIGN KEY (`qb_difficulty_level_id`) REFERENCES `qb_difficulty_level` (`qb_difficulty_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ques_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ques_parent` FOREIGN KEY (`parent_id`) REFERENCES `qb_question` (`qb_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ques_qtype` FOREIGN KEY (`qb_question_type_id`) REFERENCES `qb_question_type` (`qb_question_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ques_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ques_subcategory` FOREIGN KEY (`qb_subcategory_id`) REFERENCES `qb_subcategory` (`qb_subcategory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The questions themselves';

/*Data for the table `qb_question` */

/*Table structure for table `qb_question_type` */

DROP TABLE IF EXISTS `qb_question_type`;

CREATE TABLE `qb_question_type` (
  `qb_question_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `qb_question_type_name` varchar(100) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`qb_question_type_id`),
  UNIQUE KEY `qb_question_type_name_UNIQUE` (`qb_question_type_name`),
  KEY `qtype_create_user` (`created_by_user_id`),
  KEY `qtype_modify_user` (`modified_by_user_id`),
  KEY `qtype_status` (`status_id`),
  CONSTRAINT `qtype_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qtype_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qtype_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Master table for question types.';

/*Data for the table `qb_question_type` */

insert  into `qb_question_type`(`qb_question_type_id`,`qb_question_type_name`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'Multiple Choice',1,'2012-09-10 14:06:37',1,'2012-09-10 14:06:37',1),(2,'Multiple Response',1,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',1),(3,'Polling',1,'0000-00-00 00:00:00',1,'0000-00-00 00:00:00',1),(4,'True/False',1,'2015-07-25 17:21:58',1,'2015-07-25 17:21:58',1);

/*Table structure for table `qb_subcategory` */

DROP TABLE IF EXISTS `qb_subcategory`;

CREATE TABLE `qb_subcategory` (
  `qb_subcategory_id` int(10) NOT NULL AUTO_INCREMENT,
  `qb_subcategory_name` varchar(100) NOT NULL,
  `qb_category_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`qb_subcategory_id`),
  UNIQUE KEY `qb_subcategory_unique` (`qb_subcategory_name`,`qb_category_id`),
  KEY `subcategory_category` (`qb_category_id`),
  KEY `subcategory_create_user` (`created_by_user_id`),
  KEY `subcategory_modify_user` (`modified_by_user_id`),
  KEY `subcategory_status` (`status_id`),
  CONSTRAINT `subcategory_category` FOREIGN KEY (`qb_category_id`) REFERENCES `qb_category` (`qb_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `subcategory_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `subcategory_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `subcategory_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Subcategorizing questions within a category.';

/*Data for the table `qb_subcategory` */

/*Table structure for table `question_paper` */

DROP TABLE IF EXISTS `question_paper`;

CREATE TABLE `question_paper` (
  `question_paper_id` int(10) NOT NULL AUTO_INCREMENT,
  `question_paper_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'unique value',
  `current_total_marks` decimal(7,2) DEFAULT NULL,
  `max_total_marks` decimal(7,2) DEFAULT NULL,
  `is_complete` enum('Y','N') NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `institute_id` int(10) NOT NULL,
  PRIMARY KEY (`question_paper_id`),
  UNIQUE KEY `question_paper_name_user_unique` (`question_paper_name`,`created_by_user_id`),
  KEY `qp_create_user` (`created_by_user_id`),
  KEY `qp_modify_user` (`modified_by_user_id`),
  KEY `qp_status` (`status_id`),
  KEY `questionpaper_institute` (`institute_id`),
  CONSTRAINT `qp_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `questionpaper_institute` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Main details of a question paper.';

/*Data for the table `question_paper` */

/*Table structure for table `question_paper_question` */

DROP TABLE IF EXISTS `question_paper_question`;

CREATE TABLE `question_paper_question` (
  `question_paper_question_id` int(10) NOT NULL AUTO_INCREMENT,
  `question_paper_id` int(10) NOT NULL,
  `pattern_type` enum('Specific','Random') NOT NULL COMMENT 'The pattern of any question is either specific or random.\n''Specific'' means the question is chosen from the question bank, or random.\n''Random'' means a pattern is specified for the question to be picked up randomly from the question bank at run-time.',
  `num_random_questions` int(10) DEFAULT NULL COMMENT 'This field cannot be null for a ''random'' question type.\n''Null'' for specific question type.',
  `qb_question_id` int(10) DEFAULT NULL COMMENT 'Not null for specific questin type and null for random question.',
  `qb_subcategory_id` int(10) DEFAULT NULL COMMENT 'Not null for random question.\nNull for specific question.',
  `qb_difficulty_level_id` int(10) DEFAULT NULL COMMENT 'Not null for random question.\nNull for specific question.',
  `qb_question_type_id` int(10) DEFAULT NULL COMMENT 'Not null for random question.\nNull for specific question.',
  `marks` decimal(5,2) DEFAULT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`question_paper_question_id`),
  UNIQUE KEY `qb_question_question_paper` (`qb_question_id`,`question_paper_id`),
  UNIQUE KEY `question_paper_sc_dl_qt` (`question_paper_id`,`qb_subcategory_id`,`qb_difficulty_level_id`,`qb_question_type_id`),
  KEY `qp_ques_qp` (`question_paper_id`),
  KEY `qp_ques_subcategory` (`qb_subcategory_id`),
  KEY `qp_ques_ques` (`qb_question_id`),
  KEY `qp_ques_dlevel` (`qb_difficulty_level_id`),
  KEY `qp_ques_qtype` (`qb_question_type_id`),
  KEY `qp_ques_create_user` (`created_by_user_id`),
  KEY `qp_ques_modify_user` (`modified_by_user_id`),
  KEY `qp_ques_status` (`status_id`),
  CONSTRAINT `qp_ques_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_ques_dlevel` FOREIGN KEY (`qb_difficulty_level_id`) REFERENCES `qb_difficulty_level` (`qb_difficulty_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_ques_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_ques_qp` FOREIGN KEY (`question_paper_id`) REFERENCES `question_paper` (`question_paper_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `qp_ques_qtype` FOREIGN KEY (`qb_question_type_id`) REFERENCES `qb_question_type` (`qb_question_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_ques_ques` FOREIGN KEY (`qb_question_id`) REFERENCES `qb_question` (`qb_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_ques_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qp_ques_subcategory` FOREIGN KEY (`qb_subcategory_id`) REFERENCES `qb_subcategory` (`qb_subcategory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Questions or question patterns in question paper';

/*Data for the table `question_paper_question` */

/*Table structure for table `quiz` */

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `quiz_id` int(10) NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(100) NOT NULL COMMENT 'unique value',
  `class_id` int(10) NOT NULL,
  `question_paper_id` int(10) NOT NULL,
  `total_marks` int(10) NOT NULL,
  `time_open` datetime DEFAULT NULL COMMENT 'From the time ''time_open'' onwards the quiz is available for the students till the ''time_close''',
  `time_close` datetime DEFAULT NULL COMMENT 'After ''time_close'', the quiz is not available for students.',
  `duration_seconds` int(10) NOT NULL COMMENT 'The duration of the quiz.\nAfter the duration period is completed, the quiz is submitted automatically if by then the user has not submitted.',
  `quiz_status` enum('Ready','Active','Completed') NOT NULL COMMENT '''Ready'' - The quiz is completely made and ready for conducting a test.\n\n''Active'' - The quiz is currently available.\n\n''Completed'' - The quiz is not available.',
  `quiz_type` enum('Live','Online') NOT NULL DEFAULT 'Online',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  `institute_id` int(10) NOT NULL,
  PRIMARY KEY (`quiz_id`),
  UNIQUE KEY `quiz_name_user_unique` (`quiz_name`,`created_by_user_id`),
  KEY `quiz_class` (`class_id`),
  KEY `quiz_qp` (`question_paper_id`),
  KEY `quiz_create_user` (`created_by_user_id`),
  KEY `quiz_modify_user` (`modified_by_user_id`),
  KEY `quiz_status` (`status_id`),
  KEY `quiz_institute` (`institute_id`),
  CONSTRAINT `quiz_institute` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main information about each quiz';

/*Data for the table `quiz` */

/*Table structure for table `quiz_answer_choice` */

DROP TABLE IF EXISTS `quiz_answer_choice`;

CREATE TABLE `quiz_answer_choice` (
  `quiz_answer_choice_id` int(10) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(10) NOT NULL,
  `choice_text` varchar(256) CHARACTER SET utf8 NOT NULL,
  `choice_text_hash` varchar(40) NOT NULL,
  `fraction` decimal(2,0) NOT NULL,
  `display_sequence` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`quiz_answer_choice_id`),
  UNIQUE KEY `quiz_question_answer_choice` (`quiz_question_id`,`choice_text_hash`),
  KEY `qz_ques_ch_qz_ques` (`quiz_question_id`),
  KEY `qz_ques_ch_create_user` (`created_by_user_id`),
  KEY `qz_ques_ch_modify_user` (`modified_by_user_id`),
  KEY `qz_ques_ch_status` (`status_id`),
  CONSTRAINT `qz_ques_ch_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_ch_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_ch_qz_ques` FOREIGN KEY (`quiz_question_id`) REFERENCES `quiz_question` (`quiz_question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `qz_ques_ch_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Choices for answer of a question from a quiz.';

/*Data for the table `quiz_answer_choice` */

/*Table structure for table `quiz_question` */

DROP TABLE IF EXISTS `quiz_question`;

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(10) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `subcategory_id` int(10) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `question_type_name` varchar(100) NOT NULL,
  `difficulty_level_name` varchar(100) NOT NULL,
  `question_paper_question_id` int(10) NOT NULL,
  `qb_question_id` int(10) NOT NULL,
  `question_text_hash` varchar(40) NOT NULL COMMENT 'This value is populated by external program by calculating the hash of the question text to ensure the uniqueness.',
  `question_text` varchar(4000) CHARACTER SET utf8 NOT NULL,
  `marks` decimal(5,2) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`quiz_question_id`),
  UNIQUE KEY `qz_ques_question_id` (`quiz_id`,`qb_question_id`),
  KEY `qz_ques_quiz_id` (`quiz_id`),
  KEY `qz_ques_create_user` (`created_by_user_id`),
  KEY `qz_ques_modify_user` (`modified_by_user_id`),
  KEY `qz_ques_status` (`status_id`),
  KEY `qz_ques_category` (`category_id`),
  KEY `qz_ques_subcategory` (`subcategory_id`),
  KEY `qz_ques_qp_ques_id` (`question_paper_question_id`),
  KEY `qz_ques_ques_id` (`qb_question_id`),
  CONSTRAINT `qz_ques_category` FOREIGN KEY (`category_id`) REFERENCES `qb_category` (`qb_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_qp_ques_id` FOREIGN KEY (`question_paper_question_id`) REFERENCES `question_paper_question` (`question_paper_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_ques_id` FOREIGN KEY (`qb_question_id`) REFERENCES `qb_question` (`qb_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_qz` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `qz_ques_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_ques_subcategory` FOREIGN KEY (`subcategory_id`) REFERENCES `qb_subcategory` (`qb_subcategory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Snap shot of question at the time of the quiz';

/*Data for the table `quiz_question` */

/*Table structure for table `quiz_question_choice_response` */

DROP TABLE IF EXISTS `quiz_question_choice_response`;

CREATE TABLE `quiz_question_choice_response` (
  `quiz_question_choice_response_id` int(10) NOT NULL AUTO_INCREMENT,
  `quiz_question_response_id` int(10) NOT NULL,
  `quiz_answer_choice_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`quiz_question_choice_response_id`),
  UNIQUE KEY `quiz_question_response_answer_choice` (`quiz_question_response_id`,`quiz_answer_choice_id`),
  KEY `qz_qn_ch_res_qz_qn_res` (`quiz_question_response_id`),
  KEY `qz_qn_ch_res_qz_qn_ch` (`quiz_answer_choice_id`),
  KEY `qz_qn_ch_res_create_user` (`created_by_user_id`),
  KEY `qz_qn_ch_res_modify_user` (`modified_by_user_id`),
  KEY `qz_qn_ch_res_status` (`status_id`),
  CONSTRAINT `qz_qn_ch_res_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_ch_res_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_ch_res_qz_qn_ch` FOREIGN KEY (`quiz_answer_choice_id`) REFERENCES `quiz_answer_choice` (`quiz_answer_choice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_ch_res_qz_qn_res` FOREIGN KEY (`quiz_question_response_id`) REFERENCES `quiz_question_response` (`quiz_question_response_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_ch_res_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Student answer choice for quiz question';

/*Data for the table `quiz_question_choice_response` */

/*Table structure for table `quiz_question_response` */

DROP TABLE IF EXISTS `quiz_question_response`;

CREATE TABLE `quiz_question_response` (
  `quiz_question_response_id` int(10) NOT NULL AUTO_INCREMENT,
  `quiz_response_id` int(10) NOT NULL,
  `quiz_question_id` int(10) NOT NULL,
  `score` decimal(5,2) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`quiz_question_response_id`),
  UNIQUE KEY `quiz_question_response_quiz` (`quiz_response_id`,`quiz_question_id`),
  KEY `qz_qn_resp_qz_resp` (`quiz_response_id`),
  KEY `qz_qn_resp_qz_qn` (`quiz_question_id`),
  KEY `qz_qn_resp_create_user` (`created_by_user_id`),
  KEY `qz_qn_resp_modify_user` (`modified_by_user_id`),
  KEY `qz_qn_resp_status` (`status_id`),
  CONSTRAINT `qz_qn_resp_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_resp_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_resp_qz_qn` FOREIGN KEY (`quiz_question_id`) REFERENCES `quiz_question` (`quiz_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_resp_qz_resp` FOREIGN KEY (`quiz_response_id`) REFERENCES `quiz_response` (`quiz_response_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_qn_resp_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='The question attempted by a user from a particular quiz and ';

/*Data for the table `quiz_question_response` */

/*Table structure for table `quiz_response` */

DROP TABLE IF EXISTS `quiz_response`;

CREATE TABLE `quiz_response` (
  `quiz_response_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `quiz_id` int(10) NOT NULL,
  `total_score` decimal(7,2) DEFAULT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `quiz_response_type` enum('Mobile','PC') NOT NULL DEFAULT 'PC',
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`quiz_response_id`),
  UNIQUE KEY `user_quiz` (`user_id`,`quiz_id`),
  KEY `qz_response_quz` (`quiz_id`),
  KEY `qz_response_create_user` (`created_by_user_id`),
  KEY `qz_response_modify_user` (`modified_by_user_id`),
  KEY `qz_response_status` (`status_id`),
  CONSTRAINT `qz_response_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_response_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_response_quz` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `qz_response_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Students who have taken/answerd the quiz.';

/*Data for the table `quiz_response` */

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `reply_id` int(12) NOT NULL AUTO_INCREMENT,
  `topic_id` int(12) DEFAULT NULL,
  `reply_content` mediumtext,
  `posted_date` datetime DEFAULT NULL,
  `author` int(12) DEFAULT NULL,
  `parent_reply_id` int(12) DEFAULT NULL,
  `reply_con` mediumtext,
  `answered_not` int(1) DEFAULT NULL,
  `hierarchy` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK_reply` (`topic_id`),
  KEY `FK_reply_parent` (`parent_reply_id`),
  KEY `reply_user` (`author`),
  CONSTRAINT `FK_reply` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`),
  CONSTRAINT `FK_reply_parent` FOREIGN KEY (`parent_reply_id`) REFERENCES `reply` (`reply_id`) ON DELETE NO ACTION,
  CONSTRAINT `reply_user` FOREIGN KEY (`author`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `reply` */

/*Table structure for table `server` */

DROP TABLE IF EXISTS `server`;

CREATE TABLE `server` (
  `server_id` int(10) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(100) NOT NULL,
  `server_ip` varchar(100) NOT NULL,
  `status_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `server_domain` varchar(250) DEFAULT NULL,
  `server_category` enum('FMS','FMS-WEB','WEB-LIN','WEB-WIN','RED5-LIN','RED5-WIN') DEFAULT NULL,
  `supports_animation` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`server_id`),
  UNIQUE KEY `server_ip_UNIQUE` (`server_ip`),
  UNIQUE KEY `server_domain_UNIQUE` (`server_domain`),
  KEY `server_create_user` (`created_by_user_id`),
  KEY `server_modify_user` (`modified_by_user_id`),
  KEY `server_status` (`status_id`),
  CONSTRAINT `server_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `server_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `server_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Master table for stroing the server names.';

/*Data for the table `server` */

/*Table structure for table `server_type` */

DROP TABLE IF EXISTS `server_type`;

CREATE TABLE `server_type` (
  `server_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `server_type` varchar(50) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL,
  PRIMARY KEY (`server_type_id`),
  UNIQUE KEY `server_type` (`server_type`),
  KEY `server_type_create_user` (`created_by_user_id`),
  KEY `server_type_modify_user` (`modified_by_user_id`),
  KEY `server_type_status` (`status_id`),
  CONSTRAINT `server_type_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `server_type_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `server_type_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Server Type Name';

/*Data for the table `server_type` */

insert  into `server_type`(`server_type_id`,`server_type`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,'FMS_VIDEO_PRESENTER',1,'2011-11-15 09:54:43',1,'2011-11-15 09:54:43',1),(2,'FMS_DATA',1,'2011-11-15 09:54:43',1,'2011-11-15 09:54:43',1),(3,'FMS_VIDEO_VIEWER',1,'2011-11-15 09:54:43',1,'2011-11-15 09:54:43',1),(4,'CONTENT_SERVER',1,'2011-11-15 09:54:43',1,'2011-11-15 09:54:43',1),(5,'FMS_DESKTOP_SHARING',1,'2011-11-15 09:54:43',1,'2011-11-15 09:54:43',1),(6,'MEETING_FMS_VIDEO_PRESENTER',1,'2013-11-19 10:52:00',1,'2013-11-19 10:52:00',1),(7,'MEETING_FMS_DATA',1,'2013-11-19 10:52:00',1,'2013-11-19 10:52:00',1),(8,'MEETING_FMS_VIDEO_VIEWER',1,'2013-11-19 10:52:00',1,'2013-11-19 10:52:00',1),(9,'MEETING_CONTENT_SERVER',1,'2013-11-19 10:52:00',1,'2013-11-19 10:52:00',1),(10,'MEETING_FMS_DESKTOP_SHARING',1,'2013-11-19 10:52:00',1,'2013-11-19 10:52:00',1);

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  `country_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name_country` (`state_name`,`country_id`),
  KEY `state_country` (`country_id`),
  KEY `state_status` (`status_id`),
  KEY `state_create_user` (`created_by_user_id`),
  KEY `state_modify_user` (`modified_by_user_id`),
  CONSTRAINT `state_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COMMENT='Master table for storing the state names.';

/*Data for the table `state` */

insert  into `state`(`state_id`,`state_name`,`country_id`,`status_id`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`) values (1,'Andaman and Nicobar Island',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(2,'Andhra Pradesh',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(3,'Arunachal Pradesh',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(4,'Assam',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(5,'Bihar',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(6,'Chandigarh',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(7,'Chhattisgarh',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(8,'Dadra and Nagar Haveli',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(9,'Daman and Diu',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(10,'Delhi',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(11,'Goa',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(12,'Gujarat',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(13,'Haryana',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(14,'Himachal Pradesh',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(15,'Jammu and Kashmir',1,1,1,'2011-04-16 14:26:30',1,'2011-04-16 14:26:30'),(16,'Jharkhand',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(17,'Karnataka',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(18,'Kerala',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(19,'Lakshadweep',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(20,'Madhya Pradesh',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(21,'Maharashtra',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(22,'Manipur',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(23,'Meghalaya',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(24,'Mizoram',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(25,'Nagaland',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(26,'Orissa',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(27,'Puducherry',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(28,'Punjab',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(29,'Rajasthan',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(30,'Sikkim',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(31,'Tamil Nadu',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(32,'Tripura',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(33,'Uttar Pradesh',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(34,'Uttarakhand',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(35,'West Bengal',1,1,1,'2011-04-16 14:26:31',1,'2011-04-16 14:26:31'),(36,'Telangana',1,1,1,'2015-07-25 17:22:06',1,'2015-07-25 17:22:06');

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `status_id` int(10) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by_user_id` int(10) DEFAULT NULL,
  `modified_by_user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`),
  KEY `status_create_user` (`created_by_user_id`),
  KEY `status_modify_user` (`modified_by_user_id`),
  CONSTRAINT `status_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `status_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Master table for status values.';

/*Data for the table `status` */

insert  into `status`(`status_id`,`status_name`,`created_date`,`modified_date`,`created_by_user_id`,`modified_by_user_id`) values (1,'Active','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1),(2,'Deleted','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1),(3,'Pending','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1),(4,'Closed','2011-10-11 10:53:00','2011-10-11 10:53:00',1,1),(5,'Communicating','2012-10-13 12:12:51','2012-10-13 12:12:51',1,1),(6,'Testing','2012-10-13 12:12:54','2012-10-13 12:12:54',1,1),(7,'FailedTesting','2012-10-13 12:12:55','2012-10-13 12:12:55',1,1),(8,'InActive','2012-10-13 12:12:57','2012-10-13 12:12:57',1,1),(9,'Joined','2015-07-25 17:21:22','2015-07-25 17:21:22',1,1),(10,'Exited','2015-07-25 17:21:22','2015-07-25 17:21:22',1,1);

/*Table structure for table `system_parameter` */

DROP TABLE IF EXISTS `system_parameter`;

CREATE TABLE `system_parameter` (
  `parameter_id` int(10) NOT NULL AUTO_INCREMENT,
  `parameter_name` varchar(100) NOT NULL,
  `parameter_value` varchar(100) NOT NULL,
  `status_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`parameter_id`),
  UNIQUE KEY `parameter_name_UNIQUE` (`parameter_name`),
  KEY `parameter_create_user` (`created_by_user_id`),
  KEY `parameter_modify_user` (`modified_by_user_id`),
  KEY `parameter_status` (`status_id`),
  CONSTRAINT `parameter_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `parameter_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `parameter_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Master table for stroing the System parameters';

/*Data for the table `system_parameter` */

insert  into `system_parameter`(`parameter_id`,`parameter_name`,`parameter_value`,`status_id`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`) values (1,'EnablePhotoCapture','Yes',1,1,'2013-05-24 18:23:45',1,'2013-05-24 18:23:45'),(3,'AllowedCharactersForName','\\-a-zA-Z0-9&,.;:_\\()/+| ',1,1,'2013-06-05 15:06:30',1,'2013-06-05 15:06:30'),(4,'OnlineUserDirectoryServer','localhost',1,1,'2013-06-10 18:17:00',1,'2013-06-10 18:17:00'),(5,'QuizAnswerChoiceCount','10',1,1,'2015-07-25 17:21:58',1,'2015-07-25 17:21:58');

/*Table structure for table `topic` */

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `topic_id` int(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `topic_content` mediumtext,
  `post_date` datetime DEFAULT NULL,
  `author` int(12) DEFAULT NULL,
  `no_views` int(12) DEFAULT '0',
  `last_accessed_date` date DEFAULT NULL,
  `category_id` int(12) DEFAULT NULL,
  `last_accessed_user` int(12) DEFAULT NULL,
  `answered_not` int(1) DEFAULT NULL,
  `topic_con` mediumtext,
  `reply_count` int(12) DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `FK_topic_category` (`category_id`),
  KEY `topic_user` (`author`),
  KEY `topic_last_user` (`last_accessed_user`),
  CONSTRAINT `FK_topic_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`cat_id`),
  CONSTRAINT `topic_last_user` FOREIGN KEY (`last_accessed_user`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `topic_user` FOREIGN KEY (`author`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `topic` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_id` int(10) NOT NULL,
  `district_id` int(10) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('ADMINISTRATOR','GUEST','MASTER_ADMIN','STUDENT','TEACHER','MONITOR') DEFAULT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(256) NOT NULL DEFAULT '',
  `mobile_number` varchar(10) DEFAULT NULL,
  `photo_capture_frequency_secs` int(5) NOT NULL DEFAULT '600',
  `institute_name` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `pincode` varchar(7) DEFAULT NULL,
  `created_from` enum('Web','Client','Meeting','API') NOT NULL DEFAULT 'Client' COMMENT 'to track the user creation which could be either from desktop (or) web based (or) api based or meeting based',
  `created_by_user_id` int(10) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT '1900-12-31 00:00:00',
  `modified_by_user_id` int(10) DEFAULT NULL,
  `modified_date` datetime NOT NULL DEFAULT '1900-12-31 00:00:00',
  `status_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `user_create_user` (`created_by_user_id`),
  KEY `user_modify_user` (`modified_by_user_id`),
  KEY `user_status` (`status_id`),
  KEY `user_institute` (`institute_id`),
  KEY `user_district` (`district_id`),
  CONSTRAINT `user_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_institute` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`institute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='User details.';

/*Data for the table `user` */
/* Default password for master administrator is administrator. You can change this if required. Passwords are 
   encrypted using SHA1 */
insert  into `user`(`user_id`,`institute_id`,`district_id`,`user_name`,`password`,`role`,`fname`,`lname`,`city`,`email`,`mobile_number`,`photo_capture_frequency_secs`,`institute_name`,`address`,`pincode`,`created_from`,`created_by_user_id`,`created_date`,`modified_by_user_id`,`modified_date`,`status_id`) values (1,1,271,'administrator',SHA1('administrator'),'MASTER_ADMIN','Master','Administrator','Cochin','dummy@dummyemail.com','1234567890',600,NULL,'gfghfh','756756','Client',1,'1900-12-31 00:00:00',1,'2013-06-20 11:28:49',1);

/*Table structure for table `user_action` */

DROP TABLE IF EXISTS `user_action`;

CREATE TABLE `user_action` (
  `user_action_id` int(10) NOT NULL AUTO_INCREMENT,
  `action_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL DEFAULT '1',
  `audit_user_login_id` int(10) DEFAULT NULL,
  `lecture_id` int(10) DEFAULT NULL,
  `attr1_value` varchar(1024) DEFAULT NULL,
  `attr2_value` varchar(1024) DEFAULT NULL,
  `attr3_value` varchar(1024) DEFAULT NULL,
  `audit_lecture_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_action_id`),
  KEY `user_action_id` (`action_id`),
  KEY `user_action_status` (`status_id`),
  KEY `user_action_create_user` (`created_by_user_id`),
  KEY `user_action_modify_user` (`modified_by_user_id`),
  KEY `login_id` (`audit_user_login_id`),
  KEY `user_action_lecture_id` (`lecture_id`),
  KEY `user_action_audit_lecture_id` (`audit_lecture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_action` */

/*Table structure for table `user_bugreport` */

DROP TABLE IF EXISTS `user_bugreport`;

CREATE TABLE `user_bugreport` (
  `user_bugreport_id` int(10) NOT NULL AUTO_INCREMENT,
  `issue_content` longtext NOT NULL,
  `upload_speed` varchar(40) NOT NULL,
  `download_speed` varchar(40) NOT NULL,
  `issue_status_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `operating_system` varchar(50) NOT NULL,
  `procssor_type` varchar(20) NOT NULL,
  `processor_speed` varchar(20) NOT NULL,
  PRIMARY KEY (`user_bugreport_id`),
  KEY `user_bugreport_user` (`user_id`),
  KEY `user_bugreport_create_user` (`created_by_user_id`),
  KEY `user_bugreport_modify_user` (`modified_by_user_id`),
  CONSTRAINT `user_bugreport_create_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_bugreport_modify_user` FOREIGN KEY (`modified_by_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_bugreport_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Master table for stroing the user bug reports.';

/*Data for the table `user_bugreport` */

/*Table structure for table `version` */

DROP TABLE IF EXISTS `version`;

CREATE TABLE `version` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of this table. Auto incremented.',
  `client_version` varchar(100) NOT NULL COMMENT 'Client Version numbers currently supported by this server',
  `supported` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Indicates whether the current version is supported or not. 1 for Supported, 0 for not supported',
  `latest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the current version is latest or not. 1 for Latest, 0 for not. Only one row should have 1.',
  `description` varchar(256) DEFAULT NULL COMMENT 'Comment or Description of the client version',
  `release_type` varchar(10) DEFAULT NULL COMMENT 'Type of the release. It can have values like QA, Public etc',
  PRIMARY KEY (`version_id`),
  UNIQUE KEY `client_version_unique` (`client_version`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 8192 kB';

/*Data for the table `version` */

insert  into `version`(`version_id`,`client_version`,`supported`,`latest`,`description`,`release_type`) values (1,'A-VIEW_Classroom-4.0.11511',1,0,'AVC 4.0',NULL);

/*Table structure for table `website_feedback` */

DROP TABLE IF EXISTS `website_feedback`;

CREATE TABLE `website_feedback` (
  `FID` bigint(20) NOT NULL AUTO_INCREMENT,
  `college` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `monthsused` varchar(50) DEFAULT NULL,
  `oftenused` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `supplement` varchar(50) DEFAULT NULL,
  `othertool` varchar(50) DEFAULT NULL,
  `tools_specify` text,
  `periodofteaching` varchar(50) DEFAULT NULL,
  `first_use` varbinary(50) DEFAULT NULL,
  `ease_use` varchar(50) DEFAULT NULL,
  `audio_quality` varchar(50) DEFAULT NULL,
  `video_quality` varchar(50) DEFAULT NULL,
  `functional` varchar(50) DEFAULT NULL,
  `overall` varchar(50) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `website_feedback` */

/*Table structure for table `working_course_institute` */

DROP TABLE IF EXISTS `working_course_institute`;

CREATE TABLE `working_course_institute` (
  `course_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(1000) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `working_course_institute` */

/*Table structure for table `working_user_institute` */

DROP TABLE IF EXISTS `working_user_institute`;

CREATE TABLE `working_user_institute` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(1000) NOT NULL,
  `fname_name` varchar(100) DEFAULT NULL,
  `lname_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `working_user_institute` */

/*Table structure for table `working_user_institute_download` */

DROP TABLE IF EXISTS `working_user_institute_download`;

CREATE TABLE `working_user_institute_download` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(1000) NOT NULL,
  `fname_name` varchar(100) DEFAULT NULL,
  `lname_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `working_user_institute_download` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
