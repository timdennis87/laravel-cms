# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.12)
# Database: laravel_cms
# Generation Time: 2019-12-29 15:05:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_navigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_navigation`;

CREATE TABLE `admin_navigation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '''''' COMMENT 'Name of page',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL of the page',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Icon of page/link',
  `color` int(11) DEFAULT NULL COMMENT 'text color of link',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0 = backend 1 = frontend',
  `display_order` tinyint(2) NOT NULL COMMENT 'order of listed links',
  `display` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Display on menu',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `admin_navigation` WRITE;
/*!40000 ALTER TABLE `admin_navigation` DISABLE KEYS */;

INSERT INTO `admin_navigation` (`id`, `name`, `url`, `icon`, `color`, `type`, `display_order`, `display`)
VALUES
	(1,'Dashboard','/admin','<i class=\"fas fa-tachometer-alt fa-fw\"></i>',NULL,0,1,1),
	(2,'Pages','/admin/pages','<i class=\"far fa-file fa-fw\"></i>',NULL,0,2,1),
	(3,'Social Links','/admin/social-links','<i class=\"fas fa-hashtag\"></i>',NULL,0,3,1),
	(4,'Settings','/admin/settings','<i class=\"fas fa-cog\"></i>',NULL,0,5,1),
	(5,'Reviews','/admin/reviews','<i class=\"fas fa-star\"></i>',NULL,0,4,1);

/*!40000 ALTER TABLE `admin_navigation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table class_boxes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class_boxes`;

CREATE TABLE `class_boxes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'name/duartion of class',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'class information',
  `price` int(11) NOT NULL COMMENT 'price of class',
  `type` int(1) NOT NULL COMMENT 'type of class',
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `class_boxes` WRITE;
/*!40000 ALTER TABLE `class_boxes` DISABLE KEYS */;

INSERT INTO `class_boxes` (`id`, `name`, `description`, `price`, `type`, `class`, `color`)
VALUES
	(1,'name1','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, minima, quidem! Autem inventore, velit. Aspernatur assumenda aut autem eligendi fuga in libero nobis odit provident quas quasi quidem, similique velit?</p>',10,2,NULL,NULL),
	(2,'name2','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, minima, quidem! Autem inventore, velit. Aspernatur assumenda aut autem eligendi fuga in libero nobis odit provident quas quasi quidem, similique velit?</p>',20,1,'shadow border-success','#e0ffe7'),
	(3,'name3','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, minima, quidem! Autem inventore, velit. Aspernatur assumenda aut autem eligendi fuga in libero nobis odit provident quas quasi quidem, similique velit?</p>',30,1,NULL,NULL),
	(4,'name1','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, minima, quidem! Autem inventore, velit. Aspernatur assumenda aut autem eligendi fuga in libero nobis odit provident quas quasi quidem, similique velit?</p>',10,1,NULL,NULL),
	(5,'name2','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, minima, quidem! Autem inventore, velit. Aspernatur assumenda aut autem eligendi fuga in libero nobis odit provident quas quasi quidem, similique velit?</p>',20,2,'shadow border-success','#e0ffe7'),
	(6,'name3','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, minima, quidem! Autem inventore, velit. Aspernatur assumenda aut autem eligendi fuga in libero nobis odit provident quas quasi quidem, similique velit?</p>',30,2,NULL,NULL);

/*!40000 ALTER TABLE `class_boxes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table class_levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class_levels`;

CREATE TABLE `class_levels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `class_levels` WRITE;
/*!40000 ALTER TABLE `class_levels` DISABLE KEYS */;

INSERT INTO `class_levels` (`id`, `name`)
VALUES
	(1,'Beginner'),
	(2,'Intermediate'),
	(3,'Advanced');

/*!40000 ALTER TABLE `class_levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table class_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class_types`;

CREATE TABLE `class_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'name of class type',
  `background` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'background color',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `class_types` WRITE;
/*!40000 ALTER TABLE `class_types` DISABLE KEYS */;

INSERT INTO `class_types` (`id`, `class_type`, `background`)
VALUES
	(1,'Skype Classes','#fff'),
	(2,'Face To Face Classes','#eee');

/*!40000 ALTER TABLE `class_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''' COMMENT 'name of person sending',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''' COMMENT 'email of person sending',
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'phone number of person sending',
  `class_level` tinyint(1) DEFAULT NULL,
  `class_type` tinyint(1) DEFAULT NULL,
  `class_name` tinyint(1) DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'body of the message',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip address of the user''s current location',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table maintenance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `maintenance`;

CREATE TABLE `maintenance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `subtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `button` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;

INSERT INTO `maintenance` (`id`, `page_id`, `value`, `title`, `subtext`, `body`, `button`, `image`, `created_at`, `updated_at`)
VALUES
	(1,3,'about_me','About me Header',NULL,'<p>This is the about me section</p>',NULL,'','2019-12-29 14:26:10','2019-12-19 21:44:29'),
	(2,2,'section_2','Section for information',NULL,'This is a section you can write up about what you are about',NULL,'','2019-12-29 14:26:11','2019-12-19 08:48:51'),
	(3,2,'section_3','Section for more information',NULL,'<p>This is anothers section for more information</p>',NULL,'','2019-12-29 14:26:46','2019-12-19 09:20:52'),
	(4,4,'contact','Get In Contact',NULL,'<p>Please fill in the form and I will get right back to you!</p>',NULL,'','2019-12-14 10:00:38','2019-12-14 17:00:38'),
	(6,5,'join','Join heading','','<p>This is a section about why a customer would benifit joining</p>',NULL,NULL,'2019-12-29 14:27:56','2019-12-14 17:27:14'),
	(7,6,'services','Services header','','<p>A description of services you offer</p>',NULL,NULL,'2019-12-29 14:28:24','2019-12-07 22:25:52');

/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `button` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `value`, `email_subject`, `name`, `description`, `message`, `button`, `type`, `display`, `created_at`, `updated_at`)
VALUES
	(1,'promo_bar','Seaonal Promo','Deal!','This is the header for promo popup!\r\n','<p>This is the message area of a deal from popup</p>','promo popup',2,0,'2019-12-29 14:32:34','2019-12-24 20:06:31'),
	(2,'free_lesson','Free Lesson','Free Quotation','Would you like a free Quotation?','<p>This is the message area for a free quotation</p>\r\n<p>Thanks</p>','Free Quotation',2,1,'2019-12-29 14:32:39','2019-12-14 17:51:41'),
	(0,'join','New Client','Join Us','What makes Turkish Language House so unique is that we designed every inch of our program to help you speak like a local. Instead of memorizing grammar rules, you\'ll learn naturally so you can actually think in Turkish.','<p>This is the message area for join section</p>','Join Button',0,1,'2019-12-29 14:32:57','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table option_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `option_types`;

CREATE TABLE `option_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `option_types` WRITE;
/*!40000 ALTER TABLE `option_types` DISABLE KEYS */;

INSERT INTO `option_types` (`id`, `name`)
VALUES
	(1,'contact'),
	(2,'promo');

/*!40000 ALTER TABLE `option_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;

INSERT INTO `options` (`id`, `value`, `name`, `description`, `icon`, `class`, `type`, `display`, `created_at`, `updated_at`)
VALUES
	(1,'test_website','Go To Website','/',NULL,'btn btn-info m-2',0,1,'2019-11-16 04:43:10','2019-11-04 13:05:30'),
	(2,'logout','Log Out','/logout',NULL,'btn btn-danger m-2',0,1,'2019-11-16 04:43:11','2019-11-04 13:05:30'),
	(3,'site_name','Website Name','Empty CMS',NULL,NULL,0,1,'2019-12-29 14:33:35','2019-11-04 13:05:30'),
	(4,'main_email','Email','tim@pixlquick.com',NULL,'mailto',1,1,'2019-12-29 14:33:57','2019-12-14 17:56:54'),
	(5,'phone_number','Mobile Number','07932410231',NULL,'tel',1,1,'2019-12-29 14:34:08','2019-11-16 09:18:35'),
	(8,'work_number','Work Number','07932410231',NULL,'tel',1,1,'2019-12-29 14:34:09','2019-12-24 20:04:45');

/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '''''' COMMENT 'Name of page',
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'name of page for url string',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL of the page',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Icon of page/link',
  `color` int(11) DEFAULT NULL COMMENT 'text color of link',
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '0 = backend 1 = frontend',
  `display_order` tinyint(2) NOT NULL COMMENT 'order of listed links',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `name`, `value`, `url`, `icon`, `color`, `type`, `display_order`, `display`, `created_at`, `updated_at`)
VALUES
	(2,'Home','home','/',NULL,NULL,1,0,0,'2019-12-29 14:43:56','2019-12-29 14:43:56'),
	(3,'About Me','about-me','/about-me',NULL,NULL,1,5,0,'2019-12-29 14:35:01','2019-12-29 14:35:01'),
	(4,'Contact','contact','/contact',NULL,NULL,1,9,0,'2019-12-29 14:35:03','2019-12-29 14:35:03'),
	(5,'Join','join','/join?type=join&classType=&className=',NULL,NULL,1,2,0,'2019-12-29 14:35:05','2019-12-29 14:35:05'),
	(6,'Services','services','/services',NULL,NULL,1,4,0,'2019-12-29 14:35:07','2019-12-29 14:35:07');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`)
VALUES
	(2,'timdennis1987@gmail.com','dd8ea06bb0c441ebba704cfa9267e92b87ce82a3382bccda8ca6c81529369fa5','2019-10-15 19:14:01');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of the customer',
  `review` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'the review from the customer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`id`, `name`, `review`, `created_at`, `updated_at`)
VALUES
	(2,'Stephen Jones','This was great! Thank you.','2019-11-05 14:17:24','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table social_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `social_links`;

CREATE TABLE `social_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '''''' COMMENT 'Name of page',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '#' COMMENT 'URL of the page',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '''''' COMMENT 'Icon of page/link',
  `color` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'text color of link',
  `display_order` tinyint(2) DEFAULT NULL COMMENT 'order of listed links',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;

INSERT INTO `social_links` (`id`, `name`, `url`, `icon`, `color`, `display_order`, `display`, `created_at`, `updated_at`)
VALUES
	(1,'Facebook','https://www.facebook.com','<i class=\"fab fa-facebook-square fa-lg mx-2\"></i>','#3b5998',0,1,'2019-12-29 14:39:31','2019-11-01 02:12:11'),
	(2,'Instagram','https://www.instagram.com','<i class=\"fab fa-instagram fa-lg mx-2\"></i>','#833AB4',0,1,'2019-12-29 14:39:27','2019-11-01 02:12:11'),
	(5,'Twitter','https://www.twitter.com','<i class=\"fab fa-twitter fa-lg mx-2\"></i>','#0084b4',NULL,1,'2019-12-29 14:39:08','2019-12-29 14:30:00'),
	(4,'Linkedin','https://www.linkedin.com','<i class=\"fab fa-linkedin fa-lg mx-2\"></i>','#0e76a8',NULL,1,'2019-12-29 14:39:21','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Tim Dennis','timdennis1987@gmail.com','$2y$10$ClcmhhgagWdhqWJI8AmGfORhxght0ce4Uv2oYe6XbE/9URJ2lAs1C','4yvyaQOunXQIMJ8ghN1PljQUVrT1vf4CU1IA8J7kcH4lDjvpoSeJ2B3Bovrd','2019-11-22 07:29:27','2019-11-22 14:29:27');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
