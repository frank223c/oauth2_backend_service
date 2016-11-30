/*
SQLyog Community v11.31 (64 bit)
MySQL - 5.1.33-community : Database - upeu_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`upeu_db` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;

USE `upeu_db`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add cors model',6,'add_corsmodel'),(17,'Can change cors model',6,'change_corsmodel'),(18,'Can delete cors model',6,'delete_corsmodel'),(19,'Can add grant',7,'add_grant'),(20,'Can change grant',7,'change_grant'),(21,'Can delete grant',7,'delete_grant'),(22,'Can add access token',8,'add_accesstoken'),(23,'Can change access token',8,'change_accesstoken'),(24,'Can delete access token',8,'delete_accesstoken'),(25,'Can add application',9,'add_application'),(26,'Can change application',9,'change_application'),(27,'Can delete application',9,'delete_application'),(28,'Can add refresh token',10,'add_refreshtoken'),(29,'Can change refresh token',10,'change_refreshtoken'),(30,'Can delete refresh token',10,'delete_refreshtoken'),(31,'Can add Person',11,'add_person'),(32,'Can change Person',11,'change_person'),(33,'Can delete Person',11,'delete_person'),(34,'Can add menu',12,'add_menu'),(35,'Can change menu',12,'change_menu'),(36,'Can delete menu',12,'delete_menu'),(37,'Can list menu',12,'list_menu'),(38,'Can get menu',12,'get_menu'),(39,'Can add user hierarchy permission',13,'add_userhierarchypermission'),(40,'Can change user hierarchy permission',13,'change_userhierarchypermission'),(41,'Can delete user hierarchy permission',13,'delete_userhierarchypermission'),(42,'Can add hierarchy type',14,'add_hierarchytype'),(43,'Can change hierarchy type',14,'change_hierarchytype'),(44,'Can delete hierarchy type',14,'delete_hierarchytype'),(45,'Can list hierarchytype',14,'list_hierarchytype'),(46,'Can get hierarchytype',14,'get_hierarchytype'),(47,'Can add user hierarchy group',15,'add_userhierarchygroup'),(48,'Can change user hierarchy group',15,'change_userhierarchygroup'),(49,'Can delete user hierarchy group',15,'delete_userhierarchygroup'),(50,'Can add User',16,'add_user'),(51,'Can change User',16,'change_user'),(52,'Can delete User',16,'delete_user'),(53,'Can list user',16,'list_user'),(54,'Can get user',16,'get_user'),(55,'Can add hierarchy',17,'add_hierarchy'),(56,'Can change hierarchy',17,'change_hierarchy'),(57,'Can delete hierarchy',17,'delete_hierarchy'),(58,'Can list hierarchy',17,'list_hierarchy'),(59,'Can get hierarchy',17,'get_hierarchy'),(60,'Can add Categoria',18,'add_categoria'),(61,'Can change Categoria',18,'change_categoria'),(62,'Can delete Categoria',18,'delete_categoria'),(63,'Can list categoria',18,'list_categoria'),(64,'Can get categoria',18,'get_categoria'),(65,'Can add Ejemplar',19,'add_ejemplar'),(66,'Can change Ejemplar',19,'change_ejemplar'),(67,'Can delete Ejemplar',19,'delete_ejemplar'),(68,'Can list ejemplar',19,'list_ejemplar'),(69,'Can get ejemplar',19,'get_ejemplar'),(70,'Can add Libro',20,'add_libro'),(71,'Can change Libro',20,'change_libro'),(72,'Can delete Libro',20,'delete_libro'),(73,'Can list libro',20,'list_libro'),(74,'Can get libro',20,'get_libro'),(75,'Can add Autor',21,'add_autor'),(76,'Can change Autor',21,'change_autor'),(77,'Can delete Autor',21,'delete_autor'),(78,'Can list autor',21,'list_autor'),(79,'Can get autor',21,'get_autor');

/*Table structure for table `catalogo_autor` */

DROP TABLE IF EXISTS `catalogo_autor`;

CREATE TABLE `catalogo_autor` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` longtext COLLATE latin1_spanish_ci,
  `fecha_nac` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `catalogo_autor` */

insert  into `catalogo_autor`(`id`,`nombre`,`direccion`,`fecha_nac`,`created_at`,`updated_at`) values ('8bf2f16c62a942f2bfe4f850310b23fd','Angel','Chullunquiani','2016-11-02','2016-11-29 17:45:18','2016-11-29 17:45:18');

/*Table structure for table `catalogo_categoria` */

DROP TABLE IF EXISTS `catalogo_categoria`;

CREATE TABLE `catalogo_categoria` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `codigo` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `catalogo_categoria` */

insert  into `catalogo_categoria`(`id`,`nombre`,`codigo`,`estado`) values ('047ecb9710ca43649d37174d7441449f','Categoria 1','01',1);

/*Table structure for table `catalogo_ejemplar` */

DROP TABLE IF EXISTS `catalogo_ejemplar`;

CREATE TABLE `catalogo_ejemplar` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `codigo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `libro_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalogo_ejemplar_cc6a36ac` (`libro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `catalogo_ejemplar` */

/*Table structure for table `catalogo_libro` */

DROP TABLE IF EXISTS `catalogo_libro`;

CREATE TABLE `catalogo_libro` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `categoria_id` char(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalogo_libro_daf3833b` (`categoria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `catalogo_libro` */

/*Table structure for table `catalogo_libro_autors` */

DROP TABLE IF EXISTS `catalogo_libro_autors`;

CREATE TABLE `catalogo_libro_autors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libro_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `autor_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalogo_libro_autors_libro_id_684197f8_uniq` (`libro_id`,`autor_id`),
  KEY `catalogo_libro_autors_cc6a36ac` (`libro_id`),
  KEY `catalogo_libro_autors_52be3978` (`autor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `catalogo_libro_autors` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE latin1_spanish_ci,
  `object_repr` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE latin1_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'corsheaders','corsmodel'),(7,'oauth2_provider','grant'),(8,'oauth2_provider','accesstoken'),(9,'oauth2_provider','application'),(10,'oauth2_provider','refreshtoken'),(11,'oauth2_backend','person'),(12,'oauth2_backend','menu'),(13,'oauth2_backend','userhierarchypermission'),(14,'oauth2_backend','hierarchytype'),(15,'oauth2_backend','userhierarchygroup'),(16,'oauth2_backend','user'),(17,'oauth2_backend','hierarchy'),(18,'catalogo','categoria'),(19,'catalogo','ejemplar'),(20,'catalogo','libro'),(21,'catalogo','autor');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2016-11-29 16:24:45'),(2,'contenttypes','0002_remove_content_type_name','2016-11-29 16:24:45'),(3,'auth','0001_initial','2016-11-29 16:24:46'),(4,'auth','0002_alter_permission_name_max_length','2016-11-29 16:24:46'),(5,'auth','0003_alter_user_email_max_length','2016-11-29 16:24:46'),(6,'auth','0004_alter_user_username_opts','2016-11-29 16:24:46'),(7,'auth','0005_alter_user_last_login_null','2016-11-29 16:24:46'),(8,'auth','0006_require_contenttypes_0002','2016-11-29 16:24:46'),(9,'auth','0007_alter_validators_add_error_messages','2016-11-29 16:24:46'),(10,'auth','0008_alter_user_username_max_length','2016-11-29 16:24:46'),(11,'oauth2_backend','0001_initial','2016-11-29 16:24:50'),(12,'admin','0001_initial','2016-11-29 16:24:51'),(13,'admin','0002_logentry_remove_auto_add','2016-11-29 16:24:51'),(14,'oauth2_provider','0001_initial','2016-11-29 16:24:53'),(15,'oauth2_provider','0002_08_updates','2016-11-29 16:24:53'),(16,'sessions','0001_initial','2016-11-29 16:24:54'),(17,'catalogo','0001_initial','2016-11-29 16:26:52');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `session_data` longtext COLLATE latin1_spanish_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('asm0zgzidyvpvdfq11hod7191hhkhw6g','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 17:20:05'),('o47s1echpas3tu6vaf1hg4nd3vaqrxaf','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 17:21:09'),('yd8c17jnqcknfaiwpl9ay9iezt6v2avn','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 17:21:44'),('btoxf3p3t5ttvubdzn7n3xt04v8a1x14','ZjkxNjc5YzJlMDQ1MTBlYTU1Zjc2N2E3ZDA1OTBlNTRlMDVkMGQ0NTp7Il9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUiLCJfYXV0aF91c2VyX2hhc2giOiI5MzA3NGRiYjUxYmY4YjJlZmE3OWMzM2U4ODg3OWFiMTJmNDI3MjhkIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2016-12-13 17:48:46'),('58jm2suvt6zgj8j5shrb5a2p0ku35h1n','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 17:21:59'),('phphyxpgg36tmhdmu6qu6m9x9l4dmjj3','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 17:36:37'),('wmgfsjiwquishqlqb9f9yq4i81uomipl','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 17:49:29'),('2j66ynspao4lfhwxd57ds4w052h4f2sf','NzcwMjQyNzhkZTE3MDMxNGMxYWRjOWYwYzMwNWVlOWEwZmI3ZTEyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDc0ZGJiNTFiZjhiMmVmYTc5YzMzZTg4ODc5YWIxMmY0MjcyOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUifQ==','2016-12-13 20:48:25'),('z67fwse4605v5b3e7bbq2426pwewiu5g','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:43:58'),('p48nqgady176v2a2vny2rc3xmpp95wkw','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:44:02'),('qcoy095safibrtnr3142l30t7uxykf3f','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:44:08'),('rntyth5x7zdveszmehbrm3u0bo3qoarn','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:44:34'),('i1a7n5s1oj8vjhp5jr88sd9m1c1ht37r','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:44:46'),('unqvrnuy5n9q66gfaq3vi7bxd2fyjsu7','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:46:33'),('ed1kgedmmy8bbrghvmk8tthtdzdrdbr2','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:47:24'),('ufu4d2ww5bnovdex35fdxy6enkdj00wp','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:47:57'),('65xxxz1wui4s204bdzh903a9zo4xn2iz','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:48:57'),('qfmmjmjmxoi8mh9nh20p719c0uuxuric','NzcwMjQyNzhkZTE3MDMxNGMxYWRjOWYwYzMwNWVlOWEwZmI3ZTEyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDc0ZGJiNTFiZjhiMmVmYTc5YzMzZTg4ODc5YWIxMmY0MjcyOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUifQ==','2016-12-13 20:54:48'),('407nlf78gwhdmcuzpxw8jd468mq8y7am','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:56:25'),('l9wpcmz0uq6g23vovoj3xxihfiv8zjjs','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 20:56:29'),('mv2o9x94hyoxyhlv1l9glpi3xyeuy56n','ZjkxNjc5YzJlMDQ1MTBlYTU1Zjc2N2E3ZDA1OTBlNTRlMDVkMGQ0NTp7Il9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUiLCJfYXV0aF91c2VyX2hhc2giOiI5MzA3NGRiYjUxYmY4YjJlZmE3OWMzM2U4ODg3OWFiMTJmNDI3MjhkIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2016-12-13 23:24:37'),('osucw7g0qqn2msbdgevpd0eu51zkh7kd','NzcwMjQyNzhkZTE3MDMxNGMxYWRjOWYwYzMwNWVlOWEwZmI3ZTEyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDc0ZGJiNTFiZjhiMmVmYTc5YzMzZTg4ODc5YWIxMmY0MjcyOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUifQ==','2016-12-13 21:08:57'),('i2bv3t1ndnlz4esqxn3f0ra9c03a0rhy','NzcwMjQyNzhkZTE3MDMxNGMxYWRjOWYwYzMwNWVlOWEwZmI3ZTEyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDc0ZGJiNTFiZjhiMmVmYTc5YzMzZTg4ODc5YWIxMmY0MjcyOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUifQ==','2016-12-13 21:11:58'),('n7rdamztrhxzwkkkphvhhxbv499xtjuy','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:14:41'),('u18ympipo82iq1rk8vfbbdhol9ecx4ns','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:15:26'),('y2hylhenq1f8b8lilmlx8xvhn3c8zffu','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:15:52'),('twkd5fnv8vykpj4lsgve32p54oysf2dy','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:17:15'),('wtbfd86qb0dgqoy7rxsku1c00x1dwur3','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:17:25'),('rdldie1ttqkwejcdrpdntuk8zg2phn8n','NzcwMjQyNzhkZTE3MDMxNGMxYWRjOWYwYzMwNWVlOWEwZmI3ZTEyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDc0ZGJiNTFiZjhiMmVmYTc5YzMzZTg4ODc5YWIxMmY0MjcyOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUifQ==','2016-12-13 21:50:40'),('wsl1spk90jdc8x3wo58hrn8oitc8tycb','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:51:12'),('e74dy1csvubz364qre13kjbz7heveeq7','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:51:23'),('inzu40n51egnwvytdhj1wg7311pvuu5y','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:51:54'),('c8a43ap9ixud4mp248qmh8ml9daj8636','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:52:04'),('p7lhici8drqs440b6fdh4ohv4s0j2zna','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:52:13'),('l0e7yi4zqazsgubtg31a5qcl0wdap7hq','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 21:53:42'),('q53ju4aznybx1u715pwmglxh66gfyjk5','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 23:24:06'),('s58pi9hy3ud9bbrdsb3214gse0athvkm','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 23:24:44'),('4ed371t7yjgojkq6pvjkoma0eoqmdfod','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 23:25:09'),('xzo0m4rlhtjrc2u27fra1x1urueibrzf','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-29 23:26:45'),('5s0dl55aul393hvdt51pdlmrkkug1aq0','ZjkxNjc5YzJlMDQ1MTBlYTU1Zjc2N2E3ZDA1OTBlNTRlMDVkMGQ0NTp7Il9hdXRoX3VzZXJfaWQiOiI2ZTlmMTgzNC03NWExLTRhYmYtOWNkYS0wZmU5OGJhOTM1MzUiLCJfYXV0aF91c2VyX2hhc2giOiI5MzA3NGRiYjUxYmY4YjJlZmE3OWMzM2U4ODg3OWFiMTJmNDI3MjhkIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2016-12-14 00:40:19'),('bsf0619rqottba7dx0s450jb0gdck33n','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:27:18'),('x6szyx6mxfuz77zq2izj2n4ttobzar8m','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:28:19'),('dekbo86p4ocj8c0piaks2gtbrhefhaa4','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:28:51'),('ip5yq36di2luiaedms9cjlawjbwwpail','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:29:04'),('8krsmhudow7gxwv152uuhxo4pjml2uga','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:33:42'),('wy4fjogor8umw0mtinbs6l5ig1rnjnjv','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:33:56'),('5gy8z5esunrhsjrodzaat6zesgnk0oyo','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:34:17'),('5mvi4z0s78cyl9436vbibp2hh94o5czj','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:34:42'),('5g7wh7toz1psdcz2oqactui7hyerrhg7','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:39:23'),('4ot4rz2ccelm6mb5v1wbr2jjvr72ipt9','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:39:50'),('u1de63nflb4v0w7fxagtxu20h0g6gxkt','NTFlOTk3MThkODI0ZjJkYjBmYTFiZjk0Zjg4NTdjZTViZDA1MGQxZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzB9','2016-11-30 00:40:51');

/*Table structure for table `oauth2_backend_hierarchy` */

DROP TABLE IF EXISTS `oauth2_backend_hierarchy`;

CREATE TABLE `oauth2_backend_hierarchy` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `logo` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `code` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `name` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `name_short` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fiscal_creation_date` date DEFAULT NULL,
  `fiscal_address` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  `hierarchy_type_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `immediate_parent_id` char(32) COLLATE latin1_spanish_ci,
  `parent_id` char(32) COLLATE latin1_spanish_ci,
  PRIMARY KEY (`id`),
  KEY `oauth2_backend_hierarchy_0715f6d9` (`hierarchy_type_id`),
  KEY `oauth2_backend_hierarchy_0c27bbde` (`immediate_parent_id`),
  KEY `oauth2_backend_hierarchy_6be37982` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_hierarchy` */

/*Table structure for table `oauth2_backend_hierarchy_type` */

DROP TABLE IF EXISTS `oauth2_backend_hierarchy_type`;

CREATE TABLE `oauth2_backend_hierarchy_type` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `hierarchy_type` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `level` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_hierarchy_type` */

/*Table structure for table `oauth2_backend_menu` */

DROP TABLE IF EXISTS `oauth2_backend_menu`;

CREATE TABLE `oauth2_backend_menu` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `module` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `state` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `title` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `url` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `template_url` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `icon` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `description` longtext COLLATE latin1_spanish_ci,
  `router_json` longtext COLLATE latin1_spanish_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  `parent_id` char(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_backend_menu_6be37982` (`parent_id`),
  KEY `oauth2_backend_menu_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_menu` */

/*Table structure for table `oauth2_backend_person` */

DROP TABLE IF EXISTS `oauth2_backend_person`;

CREATE TABLE `oauth2_backend_person` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `national_id_doc` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `other_names` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `mother_last_name` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `photo` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_person` */

/*Table structure for table `oauth2_backend_user` */

DROP TABLE IF EXISTS `oauth2_backend_user`;

CREATE TABLE `oauth2_backend_user` (
  `password` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `last_name` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `last_hierarchy_id` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `last_module_id` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  `person_id` char(32) COLLATE latin1_spanish_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `person_id` (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_user` */

insert  into `oauth2_backend_user`(`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`,`id`,`last_hierarchy_id`,`last_module_id`,`updated_at`,`registered_by`,`person_id`) values ('pbkdf2_sha256$30000$zYrbiTrUbrTb$5y2CGP+N6O34JAC1/aRPIT8uLu5c4FOVlwqgxHB96D4=','2016-11-30 00:40:19',1,'admin','','','',1,1,'2016-11-29 16:31:31','6e9f183475a14abf9cda0fe98ba93535',NULL,NULL,'2016-11-29 16:31:31',NULL,NULL);

/*Table structure for table `oauth2_backend_user_groups` */

DROP TABLE IF EXISTS `oauth2_backend_user_groups`;

CREATE TABLE `oauth2_backend_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_backend_user_groups_user_id_211b7981_uniq` (`user_id`,`group_id`),
  KEY `oauth2_backend_user_groups_e8701ad4` (`user_id`),
  KEY `oauth2_backend_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_user_groups` */

/*Table structure for table `oauth2_backend_user_hierarchy_group` */

DROP TABLE IF EXISTS `oauth2_backend_user_hierarchy_group`;

CREATE TABLE `oauth2_backend_user_hierarchy_group` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `access_info` longtext COLLATE latin1_spanish_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  `group_id` int(11) NOT NULL,
  `hierarchy_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_backend_user_hierarchy_group_0e939a4f` (`group_id`),
  KEY `oauth2_backend_user_hierarchy_group_ee12029a` (`hierarchy_id`),
  KEY `oauth2_backend_user_hierarchy_group_e8701ad4` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_user_hierarchy_group` */

/*Table structure for table `oauth2_backend_user_hierarchy_permission` */

DROP TABLE IF EXISTS `oauth2_backend_user_hierarchy_permission`;

CREATE TABLE `oauth2_backend_user_hierarchy_permission` (
  `id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `access_info` longtext COLLATE latin1_spanish_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_by` longtext COLLATE latin1_spanish_ci,
  `hierarchy_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_backend_user_hierarchy_permission_ee12029a` (`hierarchy_id`),
  KEY `oauth2_backend_user_hierarchy_permission_8373b171` (`permission_id`),
  KEY `oauth2_backend_user_hierarchy_permission_e8701ad4` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_user_hierarchy_permission` */

/*Table structure for table `oauth2_backend_user_user_permissions` */

DROP TABLE IF EXISTS `oauth2_backend_user_user_permissions`;

CREATE TABLE `oauth2_backend_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_backend_user_user_permissions_user_id_b32bf6dc_uniq` (`user_id`,`permission_id`),
  KEY `oauth2_backend_user_user_permissions_e8701ad4` (`user_id`),
  KEY `oauth2_backend_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_backend_user_user_permissions` */

/*Table structure for table `oauth2_provider_accesstoken` */

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;

CREATE TABLE `oauth2_provider_accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `expires` datetime NOT NULL,
  `scope` longtext COLLATE latin1_spanish_ci NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_provider_accesstoken_94a08da1` (`token`),
  KEY `oauth2_provider_accesstoken_6bc0a4eb` (`application_id`),
  KEY `oauth2_provider_accesstoken_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_provider_accesstoken` */

insert  into `oauth2_provider_accesstoken`(`id`,`token`,`expires`,`scope`,`application_id`,`user_id`) values (1,'t159IWEFEPU3HIxYkAkUiV8kwVfOos','2016-11-30 03:19:30','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(2,'vXVFFV6SQTYDP6XKOlhn2IJV7gShCv','2016-11-30 03:20:34','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(3,'cW0L75cDJcS4JS4gzfQHzDC67zaYH6','2016-11-30 03:21:09','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(4,'KEqrIEf2aeNrkoshQMEmKZtil72rTW','2016-11-30 03:21:24','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(5,'xsY5xeEJxIb8sFXqsx0icPL8ZtMl60','2016-11-30 03:27:32','read write',2,'6e9f183475a14abf9cda0fe98ba93535'),(6,'Cz6mRjjx9jCyt1b8TtxMb795usSY27','2016-11-30 03:28:09','read write',2,'6e9f183475a14abf9cda0fe98ba93535'),(7,'rHmAYpJ6vrHdkbxaXAa63P5pcdpqhx','2016-11-30 03:36:02','read write',2,'6e9f183475a14abf9cda0fe98ba93535'),(8,'RozRRF6mdPv7r1PYHsVA3PRnFqBm8P','2016-11-30 03:48:54','write read',2,'6e9f183475a14abf9cda0fe98ba93535'),(9,'5I78hkZfNQGkXBzpkVYaSHm329EiJv','2016-11-30 06:44:04','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(10,'PFra3XZP69vn6rW2Eycctr7TUU47LX','2016-11-30 06:44:15','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(11,'OO2FID9CibSdv3GV9BS2v3QOTJvetW','2016-11-30 06:46:03','read write',2,'6e9f183475a14abf9cda0fe98ba93535'),(12,'f6Sdj0eiDBqktbRAQw9I2h8qSL0BPy','2016-11-30 06:46:54','read write',2,'6e9f183475a14abf9cda0fe98ba93535'),(13,'eWPxt3N95FZaGh73kiK7afnLLKedMZ','2016-11-30 06:47:26','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(14,'wg04KG53rgJalIox8dWMj2GkC0MvV2','2016-11-30 06:48:26','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(15,'BAwB8g8r9Zjp5KZgeWI6mK5R03eAVZ','2016-11-30 07:14:10','read write',2,'6e9f183475a14abf9cda0fe98ba93535'),(16,'JGtuIiVddOrzdkLqmVs2cuX6cfgzpj','2016-11-30 07:14:55','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(17,'R0yUUeytrOLgaLo5Gpn9rmm1Ng0MDx','2016-11-30 07:15:21','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(18,'OGmZDOEDpOPEKp9HHPpfFPQHFUOm2Y','2016-11-30 07:16:45','read write',1,'6e9f183475a14abf9cda0fe98ba93535'),(19,'kEZDQUdaTjzhsUltbV0bmtqK7EgHB9','2016-11-30 07:50:42','write read',1,'6e9f183475a14abf9cda0fe98ba93535'),(20,'uH2bGBZ7zVShJgX5AIc9uzGW1PwvMM','2016-11-30 07:50:52','write read',2,'6e9f183475a14abf9cda0fe98ba93535'),(21,'8jxrszI0BnBjCBjkJ9lrvo1LWkEReu','2016-11-30 07:51:34','write read',2,'6e9f183475a14abf9cda0fe98ba93535'),(22,'cQYwtBqfcqmevJ2lWle8GBQf4sJUsH','2016-11-30 07:51:43','write read',2,'6e9f183475a14abf9cda0fe98ba93535'),(23,'VCksxAbpdGoReG1ENHhQbiLjf62RbS','2016-11-30 07:53:11','write read',2,'6e9f183475a14abf9cda0fe98ba93535'),(24,'Vg73jGJY55vrhK7kAtpppnr1GX2jJS','2016-11-30 09:24:14','backend read openid write admision catalogo',1,'6e9f183475a14abf9cda0fe98ba93535'),(25,'ecNpftLVyIvV2YM5jJgT3xomPX4KLs','2016-11-30 09:24:39','backend read openid write admision catalogo',2,'6e9f183475a14abf9cda0fe98ba93535'),(26,'UB3pAONkX3RTh8iycypcmKdoj2qXGX','2016-11-30 10:26:47','catalogo',1,'6e9f183475a14abf9cda0fe98ba93535'),(27,'JA9tIegRsX684JADGVRwRBQEdGRYiL','2016-11-30 10:27:49','catalogo',2,'6e9f183475a14abf9cda0fe98ba93535'),(28,'QYaMau3bKfXbuxI5oq5Yoq2bODiVNX','2016-11-30 10:28:34','catalogo',2,'6e9f183475a14abf9cda0fe98ba93535'),(29,'x0WBXgCj2DteNe0KTCWXej7bnUHiwv','2016-11-30 10:33:25','home',1,'6e9f183475a14abf9cda0fe98ba93535'),(30,'8O16iDDGuR1mCP71PyqJ0RMkveSjlq','2016-11-30 10:33:46','home',1,'6e9f183475a14abf9cda0fe98ba93535'),(31,'x2JGhs1GgZXrMPsuO5sGCP6oYg6rip','2016-11-30 10:34:11','catalogo',2,'6e9f183475a14abf9cda0fe98ba93535'),(32,'8nWqDSM1uK9dJhZuIlj3Qp0r4gznUO','2016-11-30 10:40:20','home',1,'6e9f183475a14abf9cda0fe98ba93535');

/*Table structure for table `oauth2_provider_application` */

DROP TABLE IF EXISTS `oauth2_provider_application`;

CREATE TABLE `oauth2_provider_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `redirect_uris` longtext COLLATE latin1_spanish_ci NOT NULL,
  `client_type` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `client_secret` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_9d667c2b` (`client_secret`),
  KEY `oauth2_provider_application_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_provider_application` */

insert  into `oauth2_provider_application`(`id`,`client_id`,`redirect_uris`,`client_type`,`authorization_grant_type`,`client_secret`,`name`,`user_id`,`skip_authorization`) values (1,'o5W31ZGx7XrCp4B4f6Mr0HMryYyUMuswMpL0LLi4','http://localhost:9001','confidential','implicit','KjlgoUqTYAh7NPuHwLbDszJrjHraTexEWXCsCKlexA0WaYj12kJNgknt2rZDE4iVuYPIRHsV8cbnSQUy0FZJXsipA5Xy1FQSyWt2BryfkaBA6CisW5wNHlDKXEMGBe46','Home Web','6e9f183475a14abf9cda0fe98ba93535',0),(2,'RBzvAoW3dtySxnPob5TuQgINV3yITSVE5bevdosI','http://localhost:9003','confidential','implicit','O9S76GxHgHV37Oc65fEmPyWKkSQfsUgXdZ2qDyqyJCzNjzGkoXByrrjF7a2RRlkRZocg4MSsBqN3eogvIPli3aDUSiqu06zcS971rwLhTZRDe5YMitSAuXCj7VADzNkE','Catálogo Web','6e9f183475a14abf9cda0fe98ba93535',0);

/*Table structure for table `oauth2_provider_grant` */

DROP TABLE IF EXISTS `oauth2_provider_grant`;

CREATE TABLE `oauth2_provider_grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `expires` datetime NOT NULL,
  `redirect_uri` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `scope` longtext COLLATE latin1_spanish_ci NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_provider_grant_c1336794` (`code`),
  KEY `oauth2_provider_grant_6bc0a4eb` (`application_id`),
  KEY `oauth2_provider_grant_e8701ad4` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_provider_grant` */

/*Table structure for table `oauth2_provider_refreshtoken` */

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;

CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `access_token_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` char(32) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  KEY `oauth2_provider_refreshtoken_94a08da1` (`token`),
  KEY `oauth2_provider_refreshtoken_6bc0a4eb` (`application_id`),
  KEY `oauth2_provider_refreshtoken_e8701ad4` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `oauth2_provider_refreshtoken` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
