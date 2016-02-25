-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2015 at 09:11 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rowmarinews24`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2015-05-27 19:34:29', '2015-05-27 19:34:29', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'blogname', 'RowmariNews24.com', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'ppharun@yahoo.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'twentytwelve', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1433014260;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1433014474;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1433014572;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1433059651;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.8.1";s:12:"last_checked";i:1432972820;}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1432972820;}', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1432974695;}', 'yes'),
(112, 'can_compress_scripts', '1', 'yes'),
(114, '_transient_twentyfourteen_category_count', '1', 'yes'),
(116, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1432755389;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, 'current_theme', 'Twenty Twelve', 'yes'),
(118, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(119, 'theme_switched', '', 'yes'),
(124, '_transient_timeout_plugin_slugs', '1433053392', 'no'),
(125, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(126, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1433010192', 'no'),
(127, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(135, 'category_children', 'a:0:{}', 'yes'),
(136, '_site_transient_timeout_theme_roots', '1432976495', 'yes'),
(137, '_site_transient_theme_roots', 'a:3:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(149, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1432973219:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1432973293:1'),
(7, 6, '_wp_page_template', 'default'),
(8, 8, '_edit_last', '1'),
(9, 8, '_wp_page_template', 'default'),
(10, 8, '_edit_lock', '1432973347:1'),
(11, 12, '_menu_item_type', 'custom'),
(12, 12, '_menu_item_menu_item_parent', '0'),
(13, 12, '_menu_item_object_id', '12'),
(14, 12, '_menu_item_object', 'custom'),
(15, 12, '_menu_item_target', ''),
(16, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 12, '_menu_item_xfn', ''),
(18, 12, '_menu_item_url', 'http://localhost/'),
(19, 12, '_menu_item_orphaned', '1432974714'),
(20, 13, '_menu_item_type', 'post_type'),
(21, 13, '_menu_item_menu_item_parent', '0'),
(22, 13, '_menu_item_object_id', '2'),
(23, 13, '_menu_item_object', 'page'),
(24, 13, '_menu_item_target', ''),
(25, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 13, '_menu_item_xfn', ''),
(27, 13, '_menu_item_url', ''),
(28, 13, '_menu_item_orphaned', '1432974715'),
(29, 14, '_menu_item_type', 'post_type'),
(30, 14, '_menu_item_menu_item_parent', '0'),
(31, 14, '_menu_item_object_id', '8'),
(32, 14, '_menu_item_object', 'page'),
(33, 14, '_menu_item_target', ''),
(34, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 14, '_menu_item_xfn', ''),
(36, 14, '_menu_item_url', ''),
(37, 14, '_menu_item_orphaned', '1432974715'),
(38, 15, '_menu_item_type', 'post_type'),
(39, 15, '_menu_item_menu_item_parent', '0'),
(40, 15, '_menu_item_object_id', '6'),
(41, 15, '_menu_item_object', 'page'),
(42, 15, '_menu_item_target', ''),
(43, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 15, '_menu_item_xfn', ''),
(45, 15, '_menu_item_url', ''),
(46, 15, '_menu_item_orphaned', '1432974716'),
(47, 16, '_menu_item_type', 'post_type'),
(48, 16, '_menu_item_menu_item_parent', '0'),
(49, 16, '_menu_item_object_id', '4'),
(50, 16, '_menu_item_object', 'page'),
(51, 16, '_menu_item_target', ''),
(52, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 16, '_menu_item_xfn', ''),
(54, 16, '_menu_item_url', ''),
(55, 16, '_menu_item_orphaned', '1432974716'),
(56, 17, '_menu_item_type', 'post_type'),
(57, 17, '_menu_item_menu_item_parent', '0'),
(58, 17, '_menu_item_object_id', '8'),
(59, 17, '_menu_item_object', 'page'),
(60, 17, '_menu_item_target', ''),
(61, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 17, '_menu_item_xfn', ''),
(63, 17, '_menu_item_url', ''),
(64, 17, '_menu_item_orphaned', '1432974789'),
(65, 18, '_menu_item_type', 'post_type'),
(66, 18, '_menu_item_menu_item_parent', '0'),
(67, 18, '_menu_item_object_id', '6'),
(68, 18, '_menu_item_object', 'page'),
(69, 18, '_menu_item_target', ''),
(70, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 18, '_menu_item_xfn', ''),
(72, 18, '_menu_item_url', ''),
(73, 18, '_menu_item_orphaned', '1432974789'),
(74, 19, '_menu_item_type', 'post_type'),
(75, 19, '_menu_item_menu_item_parent', '0'),
(76, 19, '_menu_item_object_id', '4'),
(77, 19, '_menu_item_object', 'page'),
(78, 19, '_menu_item_target', ''),
(79, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 19, '_menu_item_xfn', ''),
(81, 19, '_menu_item_url', ''),
(82, 19, '_menu_item_orphaned', '1432974789'),
(83, 20, '_menu_item_type', 'post_type'),
(84, 20, '_menu_item_menu_item_parent', '0'),
(85, 20, '_menu_item_object_id', '2'),
(86, 20, '_menu_item_object', 'page'),
(87, 20, '_menu_item_target', ''),
(88, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 20, '_menu_item_xfn', ''),
(90, 20, '_menu_item_url', ''),
(91, 20, '_menu_item_orphaned', '1432974790'),
(92, 21, '_edit_last', '1'),
(93, 21, '_wp_page_template', 'default'),
(94, 21, '_edit_lock', '1432974955:1'),
(95, 25, '_edit_last', '1'),
(96, 25, '_wp_page_template', 'default'),
(97, 25, '_edit_lock', '1432974986:1'),
(98, 27, '_edit_last', '1'),
(99, 27, '_wp_page_template', 'default'),
(100, 27, '_edit_lock', '1432975017:1'),
(101, 29, '_edit_last', '1'),
(102, 29, '_wp_page_template', 'default'),
(103, 29, '_edit_lock', '1432975063:1'),
(104, 31, '_edit_last', '1'),
(105, 31, '_wp_page_template', 'default'),
(106, 31, '_edit_lock', '1432975102:1'),
(107, 33, '_edit_last', '1'),
(108, 33, '_wp_page_template', 'default'),
(109, 33, '_edit_lock', '1432975131:1'),
(110, 35, '_edit_last', '1'),
(111, 35, '_edit_lock', '1432975211:1'),
(112, 35, '_wp_page_template', 'default'),
(113, 37, '_edit_last', '1'),
(114, 37, '_edit_lock', '1432975245:1'),
(115, 37, '_wp_page_template', 'default'),
(116, 39, '_edit_last', '1'),
(117, 39, '_wp_page_template', 'default'),
(118, 39, '_edit_lock', '1432975261:1'),
(119, 41, '_edit_last', '1'),
(120, 41, '_wp_page_template', 'default'),
(121, 41, '_edit_lock', '1432975307:1'),
(122, 43, '_edit_last', '1'),
(123, 43, '_wp_page_template', 'default'),
(124, 43, '_edit_lock', '1432975490:1'),
(125, 45, '_edit_last', '1'),
(126, 45, '_wp_page_template', 'default'),
(127, 45, '_edit_lock', '1432975512:1'),
(128, 47, '_edit_last', '1'),
(129, 47, '_wp_page_template', 'default'),
(130, 47, '_edit_lock', '1432975536:1'),
(131, 49, '_edit_last', '1'),
(132, 49, '_edit_lock', '1432975691:1'),
(133, 49, '_wp_page_template', 'default'),
(134, 2, '_edit_lock', '1432976197:1'),
(135, 51, '_menu_item_type', 'post_type'),
(136, 51, '_menu_item_menu_item_parent', '0'),
(137, 51, '_menu_item_object_id', '2'),
(138, 51, '_menu_item_object', 'page'),
(139, 51, '_menu_item_target', ''),
(140, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 51, '_menu_item_xfn', ''),
(142, 51, '_menu_item_url', ''),
(143, 51, '_menu_item_orphaned', '1432976335'),
(153, 53, '_menu_item_type', 'post_type'),
(154, 53, '_menu_item_menu_item_parent', '0'),
(155, 53, '_menu_item_object_id', '25'),
(156, 53, '_menu_item_object', 'page'),
(157, 53, '_menu_item_target', ''),
(158, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 53, '_menu_item_xfn', ''),
(160, 53, '_menu_item_url', ''),
(162, 54, '_menu_item_type', 'post_type'),
(163, 54, '_menu_item_menu_item_parent', '0'),
(164, 54, '_menu_item_object_id', '47'),
(165, 54, '_menu_item_object', 'page'),
(166, 54, '_menu_item_target', ''),
(167, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 54, '_menu_item_xfn', ''),
(169, 54, '_menu_item_url', ''),
(171, 55, '_menu_item_type', 'post_type'),
(172, 55, '_menu_item_menu_item_parent', '0'),
(173, 55, '_menu_item_object_id', '41'),
(174, 55, '_menu_item_object', 'page'),
(175, 55, '_menu_item_target', ''),
(176, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 55, '_menu_item_xfn', ''),
(178, 55, '_menu_item_url', ''),
(180, 56, '_menu_item_type', 'post_type'),
(181, 56, '_menu_item_menu_item_parent', '0'),
(182, 56, '_menu_item_object_id', '33'),
(183, 56, '_menu_item_object', 'page'),
(184, 56, '_menu_item_target', ''),
(185, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 56, '_menu_item_xfn', ''),
(187, 56, '_menu_item_url', ''),
(189, 57, '_menu_item_type', 'post_type'),
(190, 57, '_menu_item_menu_item_parent', '0'),
(191, 57, '_menu_item_object_id', '49'),
(192, 57, '_menu_item_object', 'page'),
(193, 57, '_menu_item_target', ''),
(194, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 57, '_menu_item_xfn', ''),
(196, 57, '_menu_item_url', ''),
(198, 58, '_menu_item_type', 'post_type'),
(199, 58, '_menu_item_menu_item_parent', '0'),
(200, 58, '_menu_item_object_id', '39'),
(201, 58, '_menu_item_object', 'page'),
(202, 58, '_menu_item_target', ''),
(203, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(204, 58, '_menu_item_xfn', ''),
(205, 58, '_menu_item_url', ''),
(207, 59, '_menu_item_type', 'post_type'),
(208, 59, '_menu_item_menu_item_parent', '0'),
(209, 59, '_menu_item_object_id', '8'),
(210, 59, '_menu_item_object', 'page'),
(211, 59, '_menu_item_target', ''),
(212, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(213, 59, '_menu_item_xfn', ''),
(214, 59, '_menu_item_url', ''),
(216, 60, '_menu_item_type', 'post_type'),
(217, 60, '_menu_item_menu_item_parent', '0'),
(218, 60, '_menu_item_object_id', '31'),
(219, 60, '_menu_item_object', 'page'),
(220, 60, '_menu_item_target', ''),
(221, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(222, 60, '_menu_item_xfn', ''),
(223, 60, '_menu_item_url', ''),
(225, 61, '_menu_item_type', 'post_type'),
(226, 61, '_menu_item_menu_item_parent', '0'),
(227, 61, '_menu_item_object_id', '21'),
(228, 61, '_menu_item_object', 'page'),
(229, 61, '_menu_item_target', ''),
(230, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(231, 61, '_menu_item_xfn', ''),
(232, 61, '_menu_item_url', ''),
(234, 62, '_menu_item_type', 'post_type'),
(235, 62, '_menu_item_menu_item_parent', '0'),
(236, 62, '_menu_item_object_id', '27'),
(237, 62, '_menu_item_object', 'page'),
(238, 62, '_menu_item_target', ''),
(239, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(240, 62, '_menu_item_xfn', ''),
(241, 62, '_menu_item_url', ''),
(243, 63, '_menu_item_type', 'post_type'),
(244, 63, '_menu_item_menu_item_parent', '0'),
(245, 63, '_menu_item_object_id', '37'),
(246, 63, '_menu_item_object', 'page'),
(247, 63, '_menu_item_target', ''),
(248, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(249, 63, '_menu_item_xfn', ''),
(250, 63, '_menu_item_url', ''),
(252, 64, '_menu_item_type', 'post_type'),
(253, 64, '_menu_item_menu_item_parent', '0'),
(254, 64, '_menu_item_object_id', '35'),
(255, 64, '_menu_item_object', 'page'),
(256, 64, '_menu_item_target', ''),
(257, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(258, 64, '_menu_item_xfn', ''),
(259, 64, '_menu_item_url', ''),
(261, 65, '_menu_item_type', 'post_type'),
(262, 65, '_menu_item_menu_item_parent', '0'),
(263, 65, '_menu_item_object_id', '6'),
(264, 65, '_menu_item_object', 'page'),
(265, 65, '_menu_item_target', ''),
(266, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(267, 65, '_menu_item_xfn', ''),
(268, 65, '_menu_item_url', ''),
(270, 66, '_menu_item_type', 'post_type'),
(271, 66, '_menu_item_menu_item_parent', '0'),
(272, 66, '_menu_item_object_id', '29'),
(273, 66, '_menu_item_object', 'page'),
(274, 66, '_menu_item_target', ''),
(275, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(276, 66, '_menu_item_xfn', ''),
(277, 66, '_menu_item_url', ''),
(279, 67, '_menu_item_type', 'post_type'),
(280, 67, '_menu_item_menu_item_parent', '0'),
(281, 67, '_menu_item_object_id', '45'),
(282, 67, '_menu_item_object', 'page'),
(283, 67, '_menu_item_target', ''),
(284, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(285, 67, '_menu_item_xfn', ''),
(286, 67, '_menu_item_url', ''),
(288, 68, '_menu_item_type', 'post_type'),
(289, 68, '_menu_item_menu_item_parent', '0'),
(290, 68, '_menu_item_object_id', '43'),
(291, 68, '_menu_item_object', 'page'),
(292, 68, '_menu_item_target', ''),
(293, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(294, 68, '_menu_item_xfn', ''),
(295, 68, '_menu_item_url', ''),
(297, 69, '_menu_item_type', 'post_type'),
(298, 69, '_menu_item_menu_item_parent', '0'),
(299, 69, '_menu_item_object_id', '4'),
(300, 69, '_menu_item_object', 'page'),
(301, 69, '_menu_item_target', ''),
(302, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(303, 69, '_menu_item_xfn', ''),
(304, 69, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-05-27 19:34:29', '2015-05-27 19:34:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-05-27 19:34:29', '2015-05-27 19:34:29', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2015-05-27 19:34:29', '2015-05-27 19:34:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-05-27 19:34:29', '2015-05-27 19:34:29', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-05-27 19:34:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-27 19:34:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0),
(4, 1, '2015-05-30 08:08:18', '2015-05-30 08:08:18', '', 'হোম', '', 'publish', 'open', 'open', '', '%e0%a6%b9%e0%a7%8b%e0%a6%ae', '', '', '2015-05-30 08:08:18', '2015-05-30 08:08:18', '', 0, 'http://localhost/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-05-30 08:08:18', '2015-05-30 08:08:18', '', 'হোম', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-05-30 08:08:18', '2015-05-30 08:08:18', '', 4, 'http://localhost/?p=5', 0, 'revision', '', 0),
(6, 1, '2015-05-30 08:09:58', '2015-05-30 08:09:58', '', 'রৌমারী', '', 'publish', 'open', 'open', '', '%e0%a6%b0%e0%a7%8c%e0%a6%ae%e0%a6%be%e0%a6%b0%e0%a7%80', '', '', '2015-05-30 08:09:58', '2015-05-30 08:09:58', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-05-30 08:09:58', '2015-05-30 08:09:58', '', 'রৌমারী', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-05-30 08:09:58', '2015-05-30 08:09:58', '', 6, 'http://localhost/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-05-30 08:10:55', '2015-05-30 08:10:55', '', 'প্রযুক্তি', '', 'publish', 'open', 'open', '', '%e0%a6%aa%e0%a7%8d%e0%a6%b0%e0%a6%af%e0%a7%81%e0%a6%95%e0%a7%8d%e0%a6%a4%e0%a6%bf', '', '', '2015-05-30 08:10:55', '2015-05-30 08:10:55', '', 0, 'http://localhost/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-05-30 08:10:55', '2015-05-30 08:10:55', '', 'প্রযুক্তি', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-05-30 08:10:55', '2015-05-30 08:10:55', '', 8, 'http://localhost/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-05-30 08:11:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-30 08:11:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-05-30 08:12:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-30 08:12:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-05-30 08:31:54', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:31:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2015-05-30 08:31:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:31:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2015-05-30 08:31:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:31:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2015-05-30 08:31:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:31:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2015-05-30 08:31:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:31:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2015-05-30 08:33:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:33:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2015-05-30 08:33:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:33:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2015-05-30 08:33:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:33:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2015-05-30 08:33:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:33:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2015-05-30 08:35:51', '2015-05-30 08:35:51', '', 'বাণিজ্য', '', 'publish', 'open', 'open', '', '%e0%a6%ac%e0%a6%bf%e0%a6%9c%e0%a7%8d%e0%a6%9e%e0%a6%be%e0%a6%a8', '', '', '2015-05-30 08:37:28', '2015-05-30 08:37:28', '', 0, 'http://localhost/?page_id=21', 0, 'page', '', 0),
(22, 1, '2015-05-30 08:35:51', '2015-05-30 08:35:51', '', 'বিজ্ঞান', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-05-30 08:35:51', '2015-05-30 08:35:51', '', 21, 'http://localhost/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-05-30 08:36:40', '2015-05-30 08:36:40', '', 'রাজনীতি', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-05-30 08:36:40', '2015-05-30 08:36:40', '', 21, 'http://localhost/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-05-30 08:37:28', '2015-05-30 08:37:28', '', 'বাণিজ্য', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-05-30 08:37:28', '2015-05-30 08:37:28', '', 21, 'http://localhost/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-05-30 08:38:11', '2015-05-30 08:38:11', '', 'অর্থনীতি', '', 'publish', 'open', 'open', '', '%e0%a6%85%e0%a6%b0%e0%a7%8d%e0%a6%a5%e0%a6%a8%e0%a7%80%e0%a6%a4%e0%a6%bf', '', '', '2015-05-30 08:38:11', '2015-05-30 08:38:11', '', 0, 'http://localhost/?page_id=25', 0, 'page', '', 0),
(26, 1, '2015-05-30 08:38:11', '2015-05-30 08:38:11', '', 'অর্থনীতি', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-30 08:38:11', '2015-05-30 08:38:11', '', 25, 'http://localhost/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-05-30 08:38:41', '2015-05-30 08:38:41', '', 'বিনোদন', '', 'publish', 'open', 'open', '', '%e0%a6%ac%e0%a6%bf%e0%a6%a8%e0%a7%8b%e0%a6%a6%e0%a6%a8', '', '', '2015-05-30 08:38:41', '2015-05-30 08:38:41', '', 0, 'http://localhost/?page_id=27', 0, 'page', '', 0),
(28, 1, '2015-05-30 08:38:41', '2015-05-30 08:38:41', '', 'বিনোদন', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-05-30 08:38:41', '2015-05-30 08:38:41', '', 27, 'http://localhost/?p=28', 0, 'revision', '', 0),
(29, 1, '2015-05-30 08:39:25', '2015-05-30 08:39:25', '', 'লাইফস্টাইল', '', 'publish', 'open', 'open', '', '%e0%a6%b2%e0%a6%be%e0%a6%87%e0%a6%ab%e0%a6%b8%e0%a7%8d%e0%a6%9f%e0%a6%be%e0%a6%87%e0%a6%b2', '', '', '2015-05-30 08:39:25', '2015-05-30 08:39:25', '', 0, 'http://localhost/?page_id=29', 0, 'page', '', 0),
(30, 1, '2015-05-30 08:39:25', '2015-05-30 08:39:25', '', 'লাইফস্টাইল', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-30 08:39:25', '2015-05-30 08:39:25', '', 29, 'http://localhost/?p=30', 0, 'revision', '', 0),
(31, 1, '2015-05-30 08:39:59', '2015-05-30 08:39:59', '', 'ফুটবল', '', 'publish', 'open', 'open', '', '%e0%a6%ab%e0%a7%81%e0%a6%9f%e0%a6%ac%e0%a6%b2', '', '', '2015-05-30 08:39:59', '2015-05-30 08:39:59', '', 0, 'http://localhost/?page_id=31', 0, 'page', '', 0),
(32, 1, '2015-05-30 08:39:59', '2015-05-30 08:39:59', '', 'ফুটবল', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-05-30 08:39:59', '2015-05-30 08:39:59', '', 31, 'http://localhost/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-05-30 08:40:26', '2015-05-30 08:40:26', '', 'ক্রিকেট', '', 'publish', 'open', 'open', '', '%e0%a6%95%e0%a7%8d%e0%a6%b0%e0%a6%bf%e0%a6%95%e0%a7%87%e0%a6%9f', '', '', '2015-05-30 08:40:26', '2015-05-30 08:40:26', '', 0, 'http://localhost/?page_id=33', 0, 'page', '', 0),
(34, 1, '2015-05-30 08:40:26', '2015-05-30 08:40:26', '', 'ক্রিকেট', '', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2015-05-30 08:40:26', '2015-05-30 08:40:26', '', 33, 'http://localhost/?p=34', 0, 'revision', '', 0),
(35, 1, '2015-05-30 08:41:44', '2015-05-30 08:41:44', '', 'মতামত-বিশ্লেষণ', '', 'publish', 'open', 'open', '', '%e0%a6%ae%e0%a6%a4%e0%a6%be%e0%a6%ae%e0%a6%a4-%e0%a6%ac%e0%a6%bf%e0%a6%b6%e0%a7%8d%e0%a6%b2%e0%a7%87%e0%a6%b7%e0%a6%a3', '', '', '2015-05-30 08:41:44', '2015-05-30 08:41:44', '', 0, 'http://localhost/?page_id=35', 0, 'page', '', 0),
(36, 1, '2015-05-30 08:41:44', '2015-05-30 08:41:44', '', 'মতামত-বিশ্লেষণ', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-05-30 08:41:44', '2015-05-30 08:41:44', '', 35, 'http://localhost/?p=36', 0, 'revision', '', 0),
(37, 1, '2015-05-30 08:42:20', '2015-05-30 08:42:20', '', 'ব্লগ', '', 'publish', 'open', 'open', '', '%e0%a6%ac%e0%a7%8d%e0%a6%b2%e0%a6%97', '', '', '2015-05-30 08:42:20', '2015-05-30 08:42:20', '', 0, 'http://localhost/?page_id=37', 0, 'page', '', 0),
(38, 1, '2015-05-30 08:42:20', '2015-05-30 08:42:20', '', 'ব্লগ', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2015-05-30 08:42:20', '2015-05-30 08:42:20', '', 37, 'http://localhost/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-05-30 08:42:50', '2015-05-30 08:42:50', '', 'পরিবেশ', '', 'publish', 'open', 'open', '', '%e0%a6%aa%e0%a6%b0%e0%a6%bf%e0%a6%ac%e0%a7%87%e0%a6%b6', '', '', '2015-05-30 08:42:50', '2015-05-30 08:42:50', '', 0, 'http://localhost/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-05-30 08:42:50', '2015-05-30 08:42:50', '', 'পরিবেশ', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-05-30 08:42:50', '2015-05-30 08:42:50', '', 39, 'http://localhost/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-05-30 08:43:12', '2015-05-30 08:43:12', '', 'কিডজ', '', 'publish', 'open', 'open', '', '%e0%a6%95%e0%a6%bf%e0%a6%a1%e0%a6%9c', '', '', '2015-05-30 08:43:12', '2015-05-30 08:43:12', '', 0, 'http://localhost/?page_id=41', 0, 'page', '', 0),
(42, 1, '2015-05-30 08:43:12', '2015-05-30 08:43:12', '', 'কিডজ', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2015-05-30 08:43:12', '2015-05-30 08:43:12', '', 41, 'http://localhost/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-05-30 08:43:58', '2015-05-30 08:43:58', '', 'স্বাস্থ্য', '', 'publish', 'open', 'open', '', '%e0%a6%b8%e0%a7%8d%e0%a6%ac%e0%a6%be%e0%a6%b8%e0%a7%8d%e0%a6%a5%e0%a7%8d%e0%a6%af', '', '', '2015-05-30 08:43:58', '2015-05-30 08:43:58', '', 0, 'http://localhost/?page_id=43', 0, 'page', '', 0),
(44, 1, '2015-05-30 08:43:58', '2015-05-30 08:43:58', '', 'স্বাস্থ্য', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2015-05-30 08:43:58', '2015-05-30 08:43:58', '', 43, 'http://localhost/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-05-30 08:47:01', '2015-05-30 08:47:01', '', 'সাহিত্য', '', 'publish', 'open', 'open', '', '%e0%a6%b8%e0%a6%be%e0%a6%b9%e0%a6%bf%e0%a6%a4%e0%a7%8d%e0%a6%af', '', '', '2015-05-30 08:47:01', '2015-05-30 08:47:01', '', 0, 'http://localhost/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-05-30 08:47:01', '2015-05-30 08:47:01', '', 'সাহিত্য', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-05-30 08:47:01', '2015-05-30 08:47:01', '', 45, 'http://localhost/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-05-30 08:47:20', '2015-05-30 08:47:20', '', 'কলাম', '', 'publish', 'open', 'open', '', '%e0%a6%95%e0%a6%b2%e0%a6%be%e0%a6%ae', '', '', '2015-05-30 08:47:20', '2015-05-30 08:47:20', '', 0, 'http://localhost/?page_id=47', 0, 'page', '', 0),
(48, 1, '2015-05-30 08:47:20', '2015-05-30 08:47:20', '', 'কলাম', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-30 08:47:20', '2015-05-30 08:47:20', '', 47, 'http://localhost/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-05-30 08:47:51', '2015-05-30 08:47:51', '', 'তারুণ্য', '', 'publish', 'open', 'open', '', '%e0%a6%a4%e0%a6%be%e0%a6%b0%e0%a7%81%e0%a6%a3%e0%a7%8d%e0%a6%af', '', '', '2015-05-30 08:47:51', '2015-05-30 08:47:51', '', 0, 'http://localhost/?page_id=49', 0, 'page', '', 0),
(50, 1, '2015-05-30 08:47:51', '2015-05-30 08:47:51', '', 'তারুণ্য', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-05-30 08:47:51', '2015-05-30 08:47:51', '', 49, 'http://localhost/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-05-30 08:58:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-30 08:58:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=51', 1, 'nav_menu_item', '', 0),
(53, 1, '2015-05-30 09:01:33', '2015-05-30 09:01:33', ' ', '', '', 'publish', 'open', 'open', '', '53', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2015-05-30 09:01:34', '2015-05-30 09:01:34', ' ', '', '', 'publish', 'open', 'open', '', '54', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=54', 6, 'nav_menu_item', '', 0),
(55, 1, '2015-05-30 09:01:35', '2015-05-30 09:01:35', ' ', '', '', 'publish', 'open', 'open', '', '55', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=55', 14, 'nav_menu_item', '', 0),
(56, 1, '2015-05-30 09:01:35', '2015-05-30 09:01:35', ' ', '', '', 'publish', 'open', 'open', '', '56', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=56', 12, 'nav_menu_item', '', 0),
(57, 1, '2015-05-30 09:01:35', '2015-05-30 09:01:35', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=57', 13, 'nav_menu_item', '', 0),
(58, 1, '2015-05-30 09:01:34', '2015-05-30 09:01:34', ' ', '', '', 'publish', 'open', 'open', '', '58', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=58', 10, 'nav_menu_item', '', 0),
(59, 1, '2015-05-30 09:01:33', '2015-05-30 09:01:33', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2015-05-30 09:01:35', '2015-05-30 09:01:35', ' ', '', '', 'publish', 'open', 'open', '', '60', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=60', 11, 'nav_menu_item', '', 0),
(61, 1, '2015-05-30 09:01:34', '2015-05-30 09:01:34', ' ', '', '', 'publish', 'open', 'open', '', '61', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=61', 5, 'nav_menu_item', '', 0),
(62, 1, '2015-05-30 09:01:34', '2015-05-30 09:01:34', ' ', '', '', 'publish', 'open', 'open', '', '62', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=62', 8, 'nav_menu_item', '', 0),
(63, 1, '2015-05-30 09:01:35', '2015-05-30 09:01:35', ' ', '', '', 'publish', 'open', 'open', '', '63', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=63', 15, 'nav_menu_item', '', 0),
(64, 1, '2015-05-30 09:01:34', '2015-05-30 09:01:34', ' ', '', '', 'publish', 'open', 'open', '', '64', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=64', 7, 'nav_menu_item', '', 0),
(65, 1, '2015-05-30 09:01:33', '2015-05-30 09:01:33', ' ', '', '', 'publish', 'open', 'open', '', '65', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2015-05-30 09:01:34', '2015-05-30 09:01:34', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=66', 9, 'nav_menu_item', '', 0),
(67, 1, '2015-05-30 09:01:36', '2015-05-30 09:01:36', ' ', '', '', 'publish', 'open', 'open', '', '67', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=67', 16, 'nav_menu_item', '', 0),
(68, 1, '2015-05-30 09:01:36', '2015-05-30 09:01:36', ' ', '', '', 'publish', 'open', 'open', '', '68', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=68', 17, 'nav_menu_item', '', 0),
(69, 1, '2015-05-30 09:01:33', '2015-05-30 09:01:33', ' ', '', '', 'publish', 'open', 'open', '', '69', '', '', '2015-05-30 09:03:19', '2015-05-30 09:03:19', '', 0, 'http://localhost/?p=69', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(53, 2, 0),
(54, 2, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(62, 2, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(69, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'rowmarinews24'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'manageedit-pagecolumnshidden', 'a:1:{i:0;s:0:"";}'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'rowmarinews24', '$P$BJw4j4wVPHGky465EF3hgbXDzhAg7W.', 'rowmarinews24', 'ppharun@yahoo.com', '', '2015-05-27 19:34:28', '', 0, 'rowmarinews24');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
