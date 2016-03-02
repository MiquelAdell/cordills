# WordPress MySQL database migration
#
# Generated: Wednesday 2. March 2016 14:18 UTC
# Hostname: localhost
# Database: `example_dev`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http:/local.wordpress.dev/wp', 'yes'),
(2, 'home', 'http:/local.wordpress.dev/wp', 'yes'),
(3, 'blogname', 'Miquel Adell', 'yes'),
(4, 'blogdescription', 'Programador freelance: Creo pàgines amb WordPress, pico PHP, commitejo Gits, administro servidors, faig coses al núvol', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'miquel@miqueladell.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:9:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:37:"advanced-excerpt/advanced-excerpt.php";i:2;s:19:"akismet/akismet.php";i:3;s:54:"kau-boys-backend-localization/backend_localization.php";i:4;s:41:"post-type-switcher/post-type-switcher.php";i:5;s:33:"posts-to-posts/posts-to-posts.php";i:6;s:13:"soil/soil.php";i:7;s:31:"wp-migrate-db/wp-migrate-db.php";i:8;s:39:"wp-stage-switcher/wp-stage-switcher.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'cordills', 'yes'),
(40, 'stylesheet', 'cordills', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:33:"posts-to-posts/posts-to-posts.php";a:2:{i:0;s:11:"P2P_Storage";i:1;s:9:"uninstall";}}', 'no'),
(81, 'timezone_string', 'Europe/Madrid', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '2', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";N;s:13:"array_version";i:3;}', 'yes'),
(100, 'bedrock_autoloader', 'a:2:{s:7:"plugins";a:0:{}s:5:"count";i:0;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1456963740;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1457007841;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1457012128;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'auth_key', 'o#) .Nty.Yo^T1j9-cSyst~|$w Et:3GNjh6-b5)DLZ>t]V%{y8Wpb7!xqfD[LVO', 'yes'),
(114, 'auth_salt', 'gi)&edO&M>eC_!4]%ZF.XoVYwl&2||)vThw!Ca2QD*ZAU0<:=<A?2^99#4Z=b6Gw', 'yes'),
(115, 'logged_in_key', 'v% vd&zo8RgB_q4ybQ3^DrH`|a*,A}]v6Viy6C=.$O+R]hj0t?@@,=]YXC?=1DOj', 'yes'),
(116, 'logged_in_salt', 'YVnz#zF?^x~,3zw@IFxi|bQh;z@ DB5o][x27m0J:L7W`TaPvZq{:K51t~D a4=C', 'yes'),
(117, 'nonce_key', 'P<=:k@n^8K!va;Oy@H^(FbRel}*?`1%UE@Ag6MbCoo?k0qCu>Z_3U6JSLqj8B,Y(', 'yes'),
(118, 'nonce_salt', '+LOaA#p+eU83RleBy$DRcK+y2uvD7H)tzL&vSHsbQ5Zaz?0o=J(>BYVaV^+8)CjR', 'yes'),
(121, 'can_compress_scripts', '0', 'yes'),
(139, 'recently_activated', 'a:1:{s:41:"password-protected/password-protected.php";i:1456495676;}', 'yes'),
(142, 'theme_mods_sage', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454072630;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(143, 'current_theme', 'Sage Starter Theme', 'yes'),
(144, 'theme_mods_cordills', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:3;}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(155, 'acf_version', '4.4.5', 'yes'),
(222, 'widget_p2p', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(223, 'p2p_storage', '4', 'yes'),
(226, 'category_children', 'a:0:{}', 'yes'),
(240, 'WPLANG', '', 'yes'),
(248, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'rewrite_rules', 'a:144:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:32:"area/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"area/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"area/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"area/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"area/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"area/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"area/([^/]+)/embed/?$";s:37:"index.php?area=$matches[1]&embed=true";s:25:"area/([^/]+)/trackback/?$";s:31:"index.php?area=$matches[1]&tb=1";s:33:"area/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?area=$matches[1]&paged=$matches[2]";s:40:"area/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?area=$matches[1]&cpage=$matches[2]";s:29:"area/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?area=$matches[1]&page=$matches[2]";s:21:"area/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"area/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"area/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"area/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"area/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"area/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"project/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"project/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"project/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"project/([^/]+)/embed/?$";s:40:"index.php?project=$matches[1]&embed=true";s:28:"project/([^/]+)/trackback/?$";s:34:"index.php?project=$matches[1]&tb=1";s:36:"project/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&paged=$matches[2]";s:43:"project/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&cpage=$matches[2]";s:32:"project/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?project=$matches[1]&page=$matches[2]";s:24:"project/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"project/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"project/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"technology/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"technology/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"technology/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"technology/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"technology/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"technology/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"technology/([^/]+)/embed/?$";s:43:"index.php?technology=$matches[1]&embed=true";s:31:"technology/([^/]+)/trackback/?$";s:37:"index.php?technology=$matches[1]&tb=1";s:39:"technology/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?technology=$matches[1]&paged=$matches[2]";s:46:"technology/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?technology=$matches[1]&cpage=$matches[2]";s:35:"technology/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?technology=$matches[1]&page=$matches[2]";s:27:"technology/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"technology/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"technology/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"technology/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"technology/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"technology/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"testimonial/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"testimonial/([^/]+)/embed/?$";s:44:"index.php?testimonial=$matches[1]&embed=true";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:36:"testimonial/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"testimonial/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(299, 'advanced_excerpt', 'a:14:{s:6:"length";i:40;s:11:"length_type";s:5:"words";s:9:"no_custom";i:1;s:12:"no_shortcode";i:1;s:6:"finish";s:5:"exact";s:8:"ellipsis";s:8:"&hellip;";s:9:"read_more";s:13:"Read the rest";s:8:"add_link";i:0;s:12:"allowed_tags";a:0:{}s:11:"the_excerpt";i:1;s:11:"the_content";i:1;s:20:"the_content_no_break";i:0;s:13:"exclude_pages";a:0:{}s:19:"allowed_tags_option";s:15:"dont_remove_any";}', 'yes'),
(303, 'password_protected_version', '2.0.2', 'yes'),
(318, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(349, 'area_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_p2p`
#

DROP TABLE IF EXISTS `wp_p2p`;


#
# Table structure of table `wp_p2p`
#

CREATE TABLE `wp_p2p` (
  `p2p_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `p2p_from` bigint(20) unsigned NOT NULL,
  `p2p_to` bigint(20) unsigned NOT NULL,
  `p2p_type` varchar(44) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`p2p_id`),
  KEY `p2p_from` (`p2p_from`),
  KEY `p2p_to` (`p2p_to`),
  KEY `p2p_type` (`p2p_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_p2p`
#
INSERT INTO `wp_p2p` ( `p2p_id`, `p2p_from`, `p2p_to`, `p2p_type`) VALUES
(2, 57, 5, 'highlighted_project'),
(3, 40, 38, 'testimonied_project'),
(4, 38, 40, 'testimonied_project'),
(5, 57, 53, 'testimonied_project') ;

#
# End of data contents of table `wp_p2p`
# --------------------------------------------------------



#
# Delete any existing table `wp_p2pmeta`
#

DROP TABLE IF EXISTS `wp_p2pmeta`;


#
# Table structure of table `wp_p2pmeta`
#

CREATE TABLE `wp_p2pmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `p2p_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `p2p_id` (`p2p_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_p2pmeta`
#

#
# End of data contents of table `wp_p2pmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1456923242:1'),
(3, 2, '_edit_last', '1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1456499839:1'),
(6, 5, '_wp_page_template', 'default'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1456412066:1'),
(9, 7, '_wp_page_template', 'default'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1456411654:1'),
(12, 9, '_wp_page_template', 'default'),
(16, 16, '_edit_last', '1'),
(17, 16, '_edit_lock', '1456331342:1'),
(18, 16, '_wp_page_template', 'default'),
(24, 24, '_edit_last', '1'),
(25, 24, '_edit_lock', '1456479496:1'),
(26, 24, '_wp_page_template', 'default'),
(27, 23, '_edit_last', '1'),
(30, 23, 'position', 'normal'),
(31, 23, 'layout', 'default'),
(32, 23, 'hide_on_screen', ''),
(33, 23, '_edit_lock', '1456482842:1'),
(35, 23, 'field_56bca82d40146', 'a:14:{s:3:"key";s:19:"field_56bca82d40146";s:5:"label";s:11:"Company URL";s:4:"name";s:11:"company_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(42, 23, 'field_56bca91826729', 'a:14:{s:3:"key";s:19:"field_56bca91826729";s:5:"label";s:12:"Company Name";s:4:"name";s:12:"company_name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(45, 27, '_wp_attached_file', '2016/02/AAEAAQAAAAAAAAbHAAAAJGU2ODg1OTNhLTI5MWYtNGEzZC04ZDA2LTM5OWE4YzRmM2M0OQ.jpg'),
(46, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:306;s:4:"file";s:82:"2016/02/AAEAAQAAAAAAAAbHAAAAJGU2ODg1OTNhLTI5MWYtNGEzZC04ZDA2LTM5OWE4YzRmM2M0OQ.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:82:"AAEAAQAAAAAAAAbHAAAAJGU2ODg1OTNhLTI5MWYtNGEzZC04ZDA2LTM5OWE4YzRmM2M0OQ-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:82:"AAEAAQAAAAAAAAbHAAAAJGU2ODg1OTNhLTI5MWYtNGEzZC04ZDA2LTM5OWE4YzRmM2M0OQ-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 24, '_thumbnail_id', '27'),
(48, 28, 'company_name', 'RSB Media'),
(49, 28, '_company_name', 'field_56bca91826729'),
(50, 28, 'company_url', 'http://www.rsbmedia.com/'),
(51, 28, '_company_url', 'field_56bca82d40146'),
(52, 28, 'project_name', ''),
(53, 28, '_project_name', 'field_56bca858058db'),
(54, 28, 'project_url', ''),
(55, 28, '_project_url', 'field_56bca8d5058dc'),
(56, 24, 'company_name', 'RSB Media'),
(57, 24, '_company_name', 'field_56bca91826729'),
(58, 24, 'company_url', 'http://www.rsbmedia.com/'),
(59, 24, '_company_url', 'field_56bca82d40146'),
(60, 24, 'project_name', ''),
(61, 24, '_project_name', 'field_56bca858058db'),
(62, 24, 'project_url', ''),
(63, 24, '_project_url', 'field_56bca8d5058dc'),
(64, 29, '_edit_last', '1'),
(65, 29, '_edit_lock', '1456241295:1'),
(66, 29, '_wp_page_template', 'default'),
(67, 30, 'company_name', 'Vasava'),
(68, 30, '_company_name', 'field_56bca91826729'),
(69, 30, 'company_url', 'http://www.vasava.es/'),
(70, 30, '_company_url', 'field_56bca82d40146'),
(71, 30, 'project_name', ''),
(72, 30, '_project_name', 'field_56bca858058db'),
(73, 30, 'project_url', ''),
(74, 30, '_project_url', 'field_56bca8d5058dc'),
(75, 29, 'company_name', 'Vasava'),
(76, 29, '_company_name', 'field_56bca91826729'),
(77, 29, 'company_url', 'http://www.vasava.es/'),
(78, 29, '_company_url', 'field_56bca82d40146'),
(79, 29, 'project_name', ''),
(80, 29, '_project_name', 'field_56bca858058db'),
(81, 29, 'project_url', ''),
(82, 29, '_project_url', 'field_56bca8d5058dc'),
(83, 31, '_edit_last', '1'),
(84, 31, '_edit_lock', '1456241287:1'),
(85, 31, '_wp_page_template', 'default'),
(86, 32, 'company_name', 'Around Pixels'),
(87, 32, '_company_name', 'field_56bca91826729'),
(88, 32, 'company_url', ''),
(89, 32, '_company_url', 'field_56bca82d40146'),
(90, 32, 'project_name', ''),
(91, 32, '_project_name', 'field_56bca858058db'),
(92, 32, 'project_url', ''),
(93, 32, '_project_url', 'field_56bca8d5058dc'),
(94, 31, 'company_name', 'Around Pixels'),
(95, 31, '_company_name', 'field_56bca91826729'),
(96, 31, 'company_url', ''),
(97, 31, '_company_url', 'field_56bca82d40146'),
(98, 31, 'project_name', ''),
(99, 31, '_project_name', 'field_56bca858058db'),
(100, 31, 'project_url', ''),
(101, 31, '_project_url', 'field_56bca8d5058dc'),
(102, 33, '_wp_attached_file', '2016/02/27c787d.jpg'),
(103, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:337;s:6:"height";i:337;s:4:"file";s:19:"2016/02/27c787d.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"27c787d-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"27c787d-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 31, '_thumbnail_id', '33'),
(105, 34, '_wp_attached_file', '2016/02/2805412.jpg'),
(106, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:337;s:6:"height";i:337;s:4:"file";s:19:"2016/02/2805412.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"2805412-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"2805412-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 29, '_thumbnail_id', '34'),
(115, 38, '_edit_last', '1'),
(116, 38, '_edit_lock', '1456485586:1'),
(119, 40, '_edit_last', '1'),
(120, 40, '_edit_lock', '1456489751:1'),
(121, 41, '_wp_attached_file', '2016/02/01f0ac4.jpg'),
(122, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:308;s:6:"height";i:308;s:4:"file";s:19:"2016/02/01f0ac4.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"01f0ac4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"01f0ac4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 40, '_thumbnail_id', '41'),
(124, 40, '_wp_page_template', 'default'),
(125, 42, 'company_name', 'JIPI'),
(126, 42, '_company_name', 'field_56bca91826729'),
(127, 42, 'company_url', 'http://www.ub.edu/jipi/index_ang.html'),
(128, 42, '_company_url', 'field_56bca82d40146') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(129, 42, 'project_name', 'Web JIPI'),
(130, 42, '_project_name', 'field_56bca858058db'),
(131, 42, 'project_url', 'http:/local.wordpress.dev/jipi/'),
(132, 42, '_project_url', 'field_56bca8d5058dc'),
(133, 40, 'company_name', 'JIPI'),
(134, 40, '_company_name', 'field_56bca91826729'),
(135, 40, 'company_url', 'http://www.ub.edu/jipi/index_ang.html'),
(136, 40, '_company_url', 'field_56bca82d40146'),
(137, 40, 'project_name', 'Web JIPI'),
(138, 40, '_project_name', 'field_56bca858058db'),
(139, 40, 'project_url', 'http:/local.wordpress.dev/jipi/'),
(140, 40, '_project_url', 'field_56bca8d5058dc'),
(142, 53, '_edit_last', '1'),
(143, 53, '_edit_lock', '1456490821:1'),
(144, 53, 'company_name', 'Uombo'),
(145, 53, '_company_name', 'field_56bca91826729'),
(146, 53, 'company_url', 'http://uombo.com/'),
(147, 53, '_company_url', 'field_56bca82d40146'),
(148, 53, 'project_name', ''),
(149, 53, '_project_name', 'field_56bca858058db'),
(150, 53, 'project_url', ''),
(151, 53, '_project_url', 'field_56bca8d5058dc'),
(152, 54, '_edit_last', '1'),
(153, 54, 'field_56c1bd2a10bbc', 'a:11:{s:3:"key";s:19:"field_56c1bd2a10bbc";s:5:"label";s:11:"Full mockup";s:4:"name";s:11:"full_mockup";s:4:"type";s:5:"image";s:12:"instructions";s:27:"Mockup with all the devices";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(155, 54, 'position', 'acf_after_title'),
(156, 54, 'layout', 'no_box'),
(157, 54, 'hide_on_screen', ''),
(158, 54, '_edit_lock', '1456240148:1'),
(163, 54, 'field_56c1bff8dc1a0', 'a:14:{s:3:"key";s:19:"field_56c1bff8dc1a0";s:5:"label";s:3:"URL";s:4:"name";s:3:"url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(165, 57, '_edit_last', '1'),
(166, 57, 'full_mockup', '73'),
(167, 57, '_full_mockup', 'field_56c1bd2a10bbc'),
(168, 57, 'url', 'http://giralesquerra.cat/'),
(169, 57, '_url', 'field_56c1bff8dc1a0'),
(170, 57, '_edit_lock', '1456332563:1'),
(171, 57, '_wp_old_slug', '57'),
(172, 54, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"project";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(182, 61, '_edit_last', '1'),
(183, 61, '_edit_lock', '1455805506:1'),
(184, 62, '_edit_last', '1'),
(185, 62, '_edit_lock', '1455805520:1'),
(186, 63, '_edit_last', '1'),
(187, 63, '_edit_lock', '1456325985:1'),
(188, 64, '_edit_last', '1'),
(189, 64, '_edit_lock', '1456325910:1'),
(190, 65, '_edit_last', '1'),
(191, 65, '_edit_lock', '1456325905:1'),
(192, 67, '_wp_attached_file', '2016/02/020f5d7.jpg'),
(193, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:19:"2016/02/020f5d7.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"020f5d7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(194, 53, '_wp_old_slug', 'test-title'),
(195, 69, '_edit_last', '1'),
(196, 69, 'field_56c5d8aad4dcf', 'a:11:{s:3:"key";s:19:"field_56c5d8aad4dcf";s:5:"label";s:4:"Text";s:4:"name";s:19:"call_to_action_text";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:38:"Content to show after the main content";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(199, 69, 'position', 'normal'),
(200, 69, 'layout', 'no_box'),
(201, 69, 'hide_on_screen', 'a:12:{i:0;s:7:"excerpt";i:1;s:13:"custom_fields";i:2;s:10:"discussion";i:3;s:8:"comments";i:4;s:9:"revisions";i:5;s:4:"slug";i:6;s:6:"author";i:7;s:6:"format";i:8;s:14:"featured_image";i:9;s:10:"categories";i:10;s:4:"tags";i:11;s:15:"send-trackbacks";}'),
(202, 69, '_edit_lock', '1456483404:1'),
(210, 71, 'call_to_action', '&lt;div class="lead"&gt;Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.&lt;/div&gt;\r\n\r\n&lt;button type="button" class="btn btn-primary"&gt;Contacta\'m&lt;/button&gt;'),
(211, 71, '_call_to_action', 'field_56c5d8aad4dcf'),
(212, 5, 'call_to_action', '<div class="lead">Si necessites una pàgina web no dubtis en contactar-me</div>\r\n<button class="btn btn-primary" type="button">Contacta\'m</button>'),
(213, 5, '_call_to_action', 'field_56c5d8aad4dcf'),
(214, 72, 'call_to_action', '&lt;div class="lead"&gt;Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.&lt;/div&gt;\r\n\r\n&lt;button type="button" class="btn btn-primary"&gt;Contacta\'m&lt;/button&gt;'),
(215, 72, '_call_to_action', 'field_56c5d8aad4dcf'),
(220, 73, '_wp_attached_file', '2016/02/gir-a-lesquerra-mockup-transparent-e1455809872576.png'),
(221, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:789;s:4:"file";s:61:"2016/02/gir-a-lesquerra-mockup-transparent-e1455809872576.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"gir-a-lesquerra-mockup-transparent-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:46:"gir-a-lesquerra-mockup-transparent-300x197.png";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"gir-a-lesquerra-mockup-transparent-768x505.png";s:5:"width";i:768;s:6:"height";i:505;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:47:"gir-a-lesquerra-mockup-transparent-1024x673.png";s:5:"width";i:1024;s:6:"height";i:673;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(222, 73, '_wp_attachment_image_alt', 'Gira a l\'esquerra en diferents dispositius'),
(223, 73, '_edit_lock', '1455809860:1'),
(224, 73, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:3500;s:6:"height";i:2300;s:4:"file";s:38:"gir-a-lesquerra-mockup-transparent.png";}}'),
(225, 73, '_edit_last', '1'),
(226, 57, '_wp_old_slug', 'gira-lesquerra'),
(227, 74, '_menu_item_type', 'post_type'),
(228, 74, '_menu_item_menu_item_parent', '0'),
(229, 74, '_menu_item_object_id', '2'),
(230, 74, '_menu_item_object', 'page'),
(231, 74, '_menu_item_target', ''),
(232, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 74, '_menu_item_xfn', ''),
(234, 74, '_menu_item_url', ''),
(235, 74, '_menu_item_orphaned', '1456146036'),
(236, 75, '_menu_item_type', 'post_type'),
(237, 75, '_menu_item_menu_item_parent', '0'),
(238, 75, '_menu_item_object_id', '7'),
(239, 75, '_menu_item_object', 'page'),
(240, 75, '_menu_item_target', ''),
(241, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(242, 75, '_menu_item_xfn', ''),
(243, 75, '_menu_item_url', ''),
(245, 76, '_menu_item_type', 'post_type'),
(246, 76, '_menu_item_menu_item_parent', '0'),
(247, 76, '_menu_item_object_id', '9'),
(248, 76, '_menu_item_object', 'page'),
(249, 76, '_menu_item_target', ''),
(250, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 76, '_menu_item_xfn', ''),
(252, 76, '_menu_item_url', ''),
(254, 77, '_menu_item_type', 'post_type'),
(255, 77, '_menu_item_menu_item_parent', '0'),
(256, 77, '_menu_item_object_id', '16'),
(257, 77, '_menu_item_object', 'page'),
(258, 77, '_menu_item_target', ''),
(259, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(260, 77, '_menu_item_xfn', ''),
(261, 77, '_menu_item_url', ''),
(263, 78, '_menu_item_type', 'post_type'),
(264, 78, '_menu_item_menu_item_parent', '0'),
(265, 78, '_menu_item_object_id', '2'),
(266, 78, '_menu_item_object', 'page'),
(267, 78, '_menu_item_target', ''),
(268, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 78, '_menu_item_xfn', ''),
(270, 78, '_menu_item_url', ''),
(271, 78, '_menu_item_orphaned', '1456146036'),
(272, 79, '_menu_item_type', 'post_type'),
(273, 79, '_menu_item_menu_item_parent', '0'),
(274, 79, '_menu_item_object_id', '5'),
(275, 79, '_menu_item_object', 'page'),
(276, 79, '_menu_item_target', ''),
(277, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 79, '_menu_item_xfn', ''),
(279, 79, '_menu_item_url', ''),
(286, 23, 'field_56cc7aaf89f82', 'a:11:{s:3:"key";s:19:"field_56cc7aaf89f82";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(288, 67, '_edit_lock', '1456241250:1'),
(289, 53, 'image', '67'),
(290, 53, '_image', 'field_56cc7aaf89f82'),
(291, 40, 'image', '41'),
(292, 40, '_image', 'field_56cc7aaf89f82'),
(293, 31, 'image', '33'),
(294, 31, '_image', 'field_56cc7aaf89f82'),
(295, 29, 'image', '34'),
(296, 29, '_image', 'field_56cc7aaf89f82'),
(297, 24, 'image', '27'),
(298, 24, '_image', 'field_56cc7aaf89f82'),
(299, 82, 'call_to_action', '<div class="lead">Si necessites una pàgina web</div>\r\n<button class="btn btn-primary" type="button">Contacta\'m</button>'),
(300, 82, '_call_to_action', 'field_56c5d8aad4dcf'),
(301, 83, 'call_to_action', '<div class="lead">Si necessites una pàgina web no dubtis en contactar-me</div>\r\n<button class="btn btn-primary" type="button">Contacta\'m</button>'),
(302, 83, '_call_to_action', 'field_56c5d8aad4dcf'),
(305, 88, '_edit_last', '1'),
(307, 88, 'position', 'normal'),
(308, 88, 'layout', 'no_box'),
(309, 88, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}'),
(310, 88, '_edit_lock', '1456411765:1'),
(312, 88, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(313, 90, '_edit_last', '1'),
(314, 90, '_edit_lock', '1456318203:1'),
(315, 90, '_wp_old_slug', 'design'),
(316, 92, '_edit_last', '1'),
(317, 92, '_edit_lock', '1456318244:1'),
(318, 92, '_wp_old_slug', 'design'),
(319, 95, '_edit_last', '1'),
(320, 95, '_edit_lock', '1456324397:1'),
(321, 96, '_edit_last', '1'),
(322, 96, '_edit_lock', '1456318226:1'),
(323, 97, '_edit_last', '1'),
(324, 97, '_edit_lock', '1456327219:1'),
(325, 98, '_edit_last', '1'),
(326, 98, '_edit_lock', '1456325883:1'),
(327, 99, '_edit_last', '1'),
(328, 99, '_edit_lock', '1456325870:1'),
(329, 100, '_edit_last', '1'),
(330, 100, '_edit_lock', '1456327244:1'),
(331, 101, '_edit_last', '1'),
(332, 101, '_edit_lock', '1456325954:1'),
(333, 102, '_edit_last', '1'),
(334, 102, '_edit_lock', '1456307214:1'),
(335, 102, '_wp_trash_meta_status', 'publish'),
(336, 102, '_wp_trash_meta_time', '1456307361'),
(337, 104, '_edit_last', '1'),
(338, 104, 'field_56cd98f8013f6', 'a:14:{s:3:"key";s:19:"field_56cd98f8013f6";s:5:"label";s:4:"Icon";s:4:"name";s:4:"icon";s:4:"type";s:4:"text";s:12:"instructions";s:103:"full class to apply the icon.\r\nF.ex. fa fa-lighbulb or glyphicon glyphicon-lightbulb NOT just lightbulb";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(341, 104, 'position', 'normal'),
(342, 104, 'layout', 'no_box'),
(343, 104, 'hide_on_screen', 'a:8:{i:0;s:10:"discussion";i:1;s:8:"comments";i:2;s:9:"revisions";i:3;s:4:"slug";i:4;s:6:"author";i:5;s:6:"format";i:6;s:14:"featured_image";i:7;s:15:"send-trackbacks";}'),
(344, 104, '_edit_lock', '1456317788:1'),
(346, 90, 'icon', 'fa fa-lightbulb-o'),
(347, 90, '_icon', 'field_56cd98f8013f6'),
(348, 90, '_', 'field_56cd9930013f7'),
(349, 92, 'icon', 'fa fa-paint-brush'),
(350, 92, '_icon', 'field_56cd98f8013f6'),
(351, 92, '_', 'field_56cd9930013f7'),
(354, 95, 'icon', 'fa fa-wrench'),
(355, 95, '_icon', 'field_56cd98f8013f6'),
(356, 95, '_', 'field_56cd9930013f7'),
(357, 96, 'icon', 'fa fa-refresh'),
(358, 96, '_icon', 'field_56cd98f8013f6'),
(359, 96, '_', 'field_56cd9930013f7'),
(362, 105, '_edit_last', '1'),
(363, 105, 'field_56cda7974fc80', 'a:14:{s:3:"key";s:19:"field_56cda7974fc80";s:5:"label";s:4:"Icon";s:4:"name";s:4:"icon";s:4:"type";s:4:"text";s:12:"instructions";s:103:"full class to apply the icon.\r\nF.ex. fa fa-lighbulb or glyphicon glyphicon-lightbulb NOT just lightbulb";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(365, 105, 'position', 'normal'),
(366, 105, 'layout', 'no_box'),
(367, 105, 'hide_on_screen', 'a:8:{i:0;s:10:"discussion";i:1;s:8:"comments";i:2;s:9:"revisions";i:3;s:4:"slug";i:4;s:6:"author";i:5;s:6:"format";i:6;s:14:"featured_image";i:7;s:15:"send-trackbacks";}'),
(368, 105, '_edit_lock', '1456323267:1'),
(370, 104, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"stage";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(371, 105, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"technology";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(372, 99, 'icon', 'icon-javascript'),
(373, 99, '_icon', 'field_56cda7974fc80'),
(374, 100, 'icon', 'fa fa-linux'),
(375, 100, '_icon', 'field_56cda7974fc80'),
(376, 98, 'icon', 'icon-css'),
(377, 98, '_icon', 'field_56cda7974fc80'),
(378, 97, 'icon', 'icon-css'),
(379, 97, '_icon', 'field_56cda7974fc80'),
(380, 65, 'icon', 'fa fa-wordpress') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(381, 65, '_icon', 'field_56cda7974fc80'),
(382, 64, 'icon', 'icon-mysql'),
(383, 64, '_icon', 'field_56cda7974fc80'),
(384, 63, 'icon', 'icon-php'),
(385, 63, '_icon', 'field_56cda7974fc80'),
(386, 101, 'icon', 'fa fa-twitter'),
(387, 101, '_icon', 'field_56cda7974fc80'),
(388, 100, '_wp_old_slug', 'laravel'),
(389, 107, '_edit_last', '1'),
(390, 107, '_edit_lock', '1456325953:1'),
(391, 101, '_wp_old_slug', 'social-networking-integration'),
(392, 108, '_edit_last', '1'),
(393, 108, '_edit_lock', '1456325900:1'),
(394, 108, 'icon', 'icon-css'),
(395, 108, '_icon', 'field_56cda7974fc80'),
(396, 109, '_edit_last', '1'),
(397, 109, '_edit_lock', '1456325975:1'),
(398, 107, 'icon', 'fa fa-facebook'),
(399, 107, '_icon', 'field_56cda7974fc80'),
(400, 109, 'icon', 'icon-mariadb'),
(401, 109, '_icon', 'field_56cda7974fc80'),
(402, 100, '_wp_old_slug', 'gestio-de-servidors'),
(403, 110, '_edit_last', '1'),
(404, 110, '_edit_lock', '1456327757:1'),
(405, 110, 'icon', 'icon-javascript'),
(406, 110, '_icon', 'field_56cda7974fc80'),
(411, 69, 'field_56cdde46aae0e', 'a:14:{s:3:"key";s:19:"field_56cdde46aae0e";s:5:"label";s:11:"Button text";s:4:"name";s:26:"call_to_action_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(412, 69, 'field_56cdde97aae0f', 'a:11:{s:3:"key";s:19:"field_56cdde97aae0f";s:5:"label";s:6:"Target";s:4:"name";s:21:"call_to_action_target";s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(417, 114, '_edit_last', '1'),
(418, 114, '_edit_lock', '1456734440:1'),
(419, 115, '_wp_attached_file', '2016/02/DSC_3586-2.jpg'),
(420, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1412;s:6:"height";i:942;s:4:"file";s:22:"2016/02/DSC_3586-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"DSC_3586-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"DSC_3586-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"DSC_3586-2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"DSC_3586-2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(421, 114, '_thumbnail_id', '115'),
(422, 114, '_wp_page_template', 'template-custom.php'),
(423, 69, 'field_56cddf2036f97', 'a:8:{s:3:"key";s:19:"field_56cddf2036f97";s:5:"label";s:14:"Call to action";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(428, 118, 'text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(429, 118, '_text', 'field_56c5d8aad4dcf'),
(430, 118, 'button_text', 'contacta\'m'),
(431, 118, '_button_text', 'field_56cdde46aae0e'),
(432, 118, 'target', '114'),
(433, 118, '_target', 'field_56cdde97aae0f'),
(434, 5, 'text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(435, 5, '_text', 'field_56c5d8aad4dcf'),
(436, 5, 'button_text', 'contacta\'m'),
(437, 5, '_button_text', 'field_56cdde46aae0e'),
(438, 5, 'target', '114'),
(439, 5, '_target', 'field_56cdde97aae0f'),
(444, 119, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(445, 119, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(446, 119, 'button_text', 'contacta\'m'),
(447, 119, '_button_text', 'field_56cdde46aae0e'),
(448, 119, 'target', '114'),
(449, 119, '_target', 'field_56cdde97aae0f'),
(450, 5, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(451, 5, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(452, 69, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(453, 69, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"7";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(454, 69, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"9";s:8:"order_no";i:0;s:8:"group_no";i:2;}'),
(455, 69, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"16";s:8:"order_no";i:0;s:8:"group_no";i:3;}'),
(456, 120, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(457, 120, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(458, 120, 'call_to_action_button_text', 'Contacta\'m'),
(459, 120, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(460, 120, 'call_to_action_target', '114'),
(461, 120, '_call_to_action_target', 'field_56cdde97aae0f'),
(462, 5, 'call_to_action_button_text', 'Contacta\'m'),
(463, 5, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(464, 5, 'call_to_action_target', '114'),
(465, 5, '_call_to_action_target', 'field_56cdde97aae0f'),
(466, 121, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(467, 121, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(468, 121, 'call_to_action_button_text', 'Contacta\'m'),
(469, 121, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(470, 121, 'call_to_action_target', '114'),
(471, 121, '_call_to_action_target', 'field_56cdde97aae0f'),
(472, 7, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(473, 7, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(474, 7, 'call_to_action_button_text', 'Contacta\'m'),
(475, 7, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(476, 7, 'call_to_action_target', '114'),
(477, 7, '_call_to_action_target', 'field_56cdde97aae0f'),
(478, 122, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(479, 122, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(480, 122, 'call_to_action_button_text', 'Contacta\'m'),
(481, 122, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(482, 122, 'call_to_action_target', '114'),
(483, 122, '_call_to_action_target', 'field_56cdde97aae0f'),
(484, 9, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(485, 9, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(486, 9, 'call_to_action_button_text', 'Contacta\'m'),
(487, 9, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(488, 9, 'call_to_action_target', '114'),
(489, 9, '_call_to_action_target', 'field_56cdde97aae0f'),
(490, 23, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"testimonial";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(491, 125, 'call_to_action_text', 'Si necessites una pàgina web no dubtis en contactar-me'),
(492, 125, '_call_to_action_text', 'field_56c5d8aad4dcf'),
(493, 125, 'call_to_action_button_text', 'Contacta\'m'),
(494, 125, '_call_to_action_button_text', 'field_56cdde46aae0e'),
(495, 125, 'call_to_action_target', '114'),
(496, 125, '_call_to_action_target', 'field_56cdde97aae0f') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-01-29 12:08:58', '2016-01-29 12:08:58', '', 'Home', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-02-24 10:21:46', '2016-02-24 09:21:46', '', 0, 'http:/local.wordpress.dev/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-01-29 13:35:05', '2016-01-29 13:35:05', '', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-29 13:35:05', '2016-01-29 13:35:05', '', 2, 'http:/local.wordpress.dev/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-01-29 13:35:53', '2016-01-29 13:35:53', '<span class=\'lead\'>Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'publish', 'closed', 'closed', '', 'presentacio', '', '', '2016-02-26 16:16:49', '2016-02-26 15:16:49', '', 0, 'http:/local.wordpress.dev/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-01-29 13:35:53', '2016-01-29 13:35:53', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\nConversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra. Homini aequalis fulgura rudis cesserunt frigore. Fontes vesper secrevit umentia. Flamma obsistitur supplex membra densior fulgura convexi umentia terris. Conversa turba coeptis semina os tanta congestaque nisi.', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-01-29 13:35:53', '2016-01-29 13:35:53', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-01-29 13:36:07', '2016-01-29 13:36:07', 'El procés de creació d\'una pàgina web està format per moltes parts. De la mateixa manera que ho està fer una cervesa. No cal que les coneixis totes per a tenir una pàgina web. Faig servir els meus anys d\'experiència desenvolupant webs per construir webs tenint en compte totes les parts del procés.', 'Procés', '', 'publish', 'closed', 'closed', '', 'proces', '', '', '2016-02-24 18:01:24', '2016-02-24 17:01:24', '', 0, 'http:/local.wordpress.dev/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-01-29 13:36:07', '2016-01-29 13:36:07', 'Ad nubes erat acervo ensis lumina onerosior. Fuit vultus postquam matutinis iners terrae nubes. Possedit mixtam limitibus. Vis aethera. Derecti sine. Proxima quoque onerosior habitandae siccis densior pendebat orbe finxit. Nullaque pulsant nubibus ita. Principio siccis habitabilis nabataeaque tanta onus dedit rectumque glomeravit.\r\n\r\nNuper ipsa orbe auroram iussit caesa spisso vos. Videre circumfuso erant? Erant pendebat hunc. Ad erant phoebe vix onus densior acervo. Sinistra crescendo matutinis eodem! Evolvit quisque legebantur. Locavit effervescere faecis stagna est. Modo levius animus igni orba illas invasit tollere aliis qui.\r\n\r\nAstra diu praecipites omni certis habitabilis elementaque premuntur cinxit. Quin extendi ripis triones os super melior perpetuum pondus? Praeter est. Nabataeaque nubes liberioris levius. Fuerat totidemque levitate tum possedit sunt moles feras! Di elementaque. Dextra sorbentur sunt reparabat militis illis ventis caecoque aquae!', 'Desenvolupament', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-01-29 13:36:07', '2016-01-29 13:36:07', '', 7, 'http:/local.wordpress.dev/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-01-29 13:36:24', '2016-01-29 13:36:24', '<span style="font-weight: 400;">Aquestes són algunes de les tecnologies que faig servir per crear pàgines web.</span>', 'Tecnologies', '', 'publish', 'closed', 'closed', '', 'tecnologies', '', '', '2016-02-25 15:49:55', '2016-02-25 14:49:55', '', 0, 'http:/local.wordpress.dev/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-01-29 13:36:24', '2016-01-29 13:36:24', 'Locis zephyro naturae animus ne levitate subsidere. Iudicis instabilis sorbentur fontes caeca. Onerosior animalibus homo aetas ubi lege litem montibus animal! Tellus opifex. Septemque pendebat summaque. Eodem terras. Aberant quanto nitidis sorbentur! Madescit nebulas. Diverso opifex subdita solum boreas habitandae diu vos pontus?\r\n\r\nDiu fuerant habitabilis recessit. Congestaque carmen rerum terram fidem tempora. Caelo natura cura. Frigore locoque. Nix quoque sic aliis arce inminet adsiduis mortales. Sinistra pugnabant. Addidit ensis rudis longo. Boreas orbis orbe. Tellure tepescunt frigore passim utque boreas. Subdita matutinis numero spectent pugnabant.\r\n\r\nNabataeaque tegit carmen cepit. Congestaque seductaque undas pro usu mutastis mollia postquam mentes. Legebantur natus dominari natura. Igni quae quem melioris mentisque natus stagna vis duris. Quisquis motura altae? Illi animal. Extendi homini figuras iudicis mortales habitandae tenent habitabilis circumfluus. Secuit locum crescendo.', 'Eines', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-29 13:36:24', '2016-01-29 13:36:24', '', 9, 'http:/local.wordpress.dev/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-02-03 09:40:16', '2016-02-03 09:40:16', 'La base de tot és l\'experiència i això és el que algunes persones tenen a dir de la nostra experiència conjunta', 'Fonaments', '', 'publish', 'closed', 'closed', '', 'fonaments', '', '', '2016-02-24 17:31:17', '2016-02-24 16:31:17', '', 0, 'http:/local.wordpress.dev/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-02-03 09:40:16', '2016-02-03 09:40:16', 'wheat wheat wheat', 'Fonaments', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-02-03 09:40:16', '2016-02-03 09:40:16', '', 16, 'http:/local.wordpress.dev/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-02-03 12:52:05', '2016-02-03 12:52:05', 'barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley ', 'Fonaments', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-02-03 12:52:05', '2016-02-03 12:52:05', '', 16, 'http:/local.wordpress.dev/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-02-03 12:52:18', '2016-02-03 12:52:18', 'barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley barley ', 'Fonaments', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-02-03 12:52:18', '2016-02-03 12:52:18', '', 16, 'http:/local.wordpress.dev/16-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-02-11 15:25:26', '2016-02-11 15:25:26', '', 'Testimonial', '', 'publish', 'closed', 'closed', '', 'acf_testimonial', '', '', '2016-02-26 11:36:22', '2016-02-26 10:36:22', '', 0, 'http:/local.wordpress.dev/?post_type=acf&#038;p=23', 1, 'acf', '', 0),
(24, 1, '2016-02-11 15:23:01', '2016-02-11 15:23:01', '&nbsp;\r\n\r\nThis testimonial is very short and has not excerpt. It ends here.', 'Jordi Jiménez', '', 'publish', 'closed', 'closed', '', 'jordi-jimenez', '', '', '2016-02-26 09:49:07', '2016-02-26 08:49:07', '', 12, 'http:/local.wordpress.dev/?page_id=24', 0, 'testimonial', '', 0),
(25, 1, '2016-02-11 15:23:01', '2016-02-11 15:23:01', '', 'Jordi Jiménez', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-02-11 15:23:01', '2016-02-11 15:23:01', '', 24, 'http:/local.wordpress.dev/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-02-11 15:33:35', '2016-02-11 15:33:35', 'Aequalis litem auroram deorum locum ad erat:. Fecit usu cesserunt flamina quicquam innabilis.\n\nTonitrua cinxit extendi. Derecti nuper timebat ensis magni nam in aere. Poena totidem aer duas his. Vos mentisque aliis flexi! Tegi liquidas addidit principio orba pendebat zephyro sidera homini aethera.\n\nPhoebe possedit fulminibus effigiem dicere terrae fuerat diverso diversa. Ardentior caeca ripis ipsa pontus campos quae terrarum descenderat. Inposuit aliud phoebe dissaepserat coercuit est descenderat? Pressa qui frigida cognati tanta meis rudis unus. Vultus otia humanas limitibus pressa obliquis aer alto triones terrarum.', 'Jordi Jiménez', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2016-02-11 15:33:35', '2016-02-11 15:33:35', '', 24, 'http:/local.wordpress.dev/24-autosave-v1/', 0, 'revision', '', 0),
(27, 1, '2016-02-11 15:34:14', '2016-02-11 15:34:14', '', 'AAEAAQAAAAAAAAbHAAAAJGU2ODg1OTNhLTI5MWYtNGEzZC04ZDA2LTM5OWE4YzRmM2M0OQ', '', 'inherit', 'open', 'closed', '', 'aaeaaqaaaaaaaabhaaaajgu2odg1otnhlti5mwytngezzc04zda2ltm5owe4yzrmm2m0oq', '', '', '2016-02-11 15:34:14', '2016-02-11 15:34:14', '', 24, 'http:/local.wordpress.dev/app/uploads/2016/02/AAEAAQAAAAAAAAbHAAAAJGU2ODg1OTNhLTI5MWYtNGEzZC04ZDA2LTM5OWE4YzRmM2M0OQ.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-02-11 15:34:25', '2016-02-11 15:34:25', 'Aequalis litem auroram deorum locum ad erat:. Fecit usu cesserunt flamina quicquam innabilis.<!--more-->\r\n\r\nTonitrua cinxit extendi. Derecti nuper timebat ensis magni nam in aere. Poena totidem aer duas his. Vos mentisque aliis flexi! Tegi liquidas addidit principio orba pendebat zephyro sidera homini aethera.\r\n\r\nPhoebe possedit fulminibus effigiem dicere terrae fuerat diverso diversa. Ardentior caeca ripis ipsa pontus campos quae terrarum descenderat. Inposuit aliud phoebe dissaepserat coercuit est descenderat? Pressa qui frigida cognati tanta meis rudis unus. Vultus otia humanas limitibus pressa obliquis aer alto triones terrarum.', 'Jordi Jiménez', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-02-11 15:34:25', '2016-02-11 15:34:25', '', 24, 'http:/local.wordpress.dev/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-02-11 15:36:06', '2016-02-11 15:36:06', 'Matutinis quia fulminibus viseret origine fecit meis. Fert vindice fidem dissociata fluminaque exemit.\r\n\r\n<!--more-->\r\n\r\nLocavit spectent totidem locoque. Sunt campoque terris aera mollia. Orbe ignotas unus sine quia. Nullo cognati fidem omnia foret obliquis. Sublime sidera quem nam sidera usu quod convexi obliquis astra.', 'Enric Godes Maté', '', 'publish', 'closed', 'closed', '', 'enric-godes-mate', '', '', '2016-02-23 16:30:38', '2016-02-23 15:30:38', '', 12, 'http:/local.wordpress.dev/?page_id=29', 0, 'testimonial', '', 0),
(30, 1, '2016-02-11 15:36:06', '2016-02-11 15:36:06', 'Matutinis quia fulminibus viseret origine fecit meis. Fert vindice fidem dissociata fluminaque exemit.\r\n\r\n<!--more-->\r\n\r\nLocavit spectent totidem locoque. Sunt campoque terris aera mollia. Orbe ignotas unus sine quia. Nullo cognati fidem omnia foret obliquis. Sublime sidera quem nam sidera usu quod convexi obliquis astra.', 'Enric Godes Maté', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-02-11 15:36:06', '2016-02-11 15:36:06', '', 29, 'http:/local.wordpress.dev/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-02-11 15:37:41', '2016-02-11 15:37:41', 'Stagna locum opifex fidem proximus ultima flexi iussit illic. Natus spectent litora zonae sublime auroram sidera bracchia ignotas. Sanctius habitabilis reparabat. Elementaque caligine nix sata inmensa erat.', 'Rubén López Bello', '', 'publish', 'closed', 'closed', '', 'ruben-lopez-bello', '', '', '2016-02-23 16:30:30', '2016-02-23 15:30:30', '', 12, 'http:/local.wordpress.dev/?page_id=31', 0, 'testimonial', '', 0),
(32, 1, '2016-02-11 15:37:41', '2016-02-11 15:37:41', 'Stagna locum opifex fidem proximus ultima flexi iussit illic. Natus spectent litora zonae sublime auroram sidera bracchia ignotas. Sanctius habitabilis reparabat. Elementaque caligine nix sata inmensa erat.', 'Rubén López Bello', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-02-11 15:37:41', '2016-02-11 15:37:41', '', 31, 'http:/local.wordpress.dev/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-02-11 15:40:13', '2016-02-11 15:40:13', '', '27c787d', '', 'inherit', 'open', 'closed', '', '27c787d', '', '', '2016-02-11 15:40:13', '2016-02-11 15:40:13', '', 31, 'http:/local.wordpress.dev/app/uploads/2016/02/27c787d.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-02-11 15:40:29', '2016-02-11 15:40:29', '', '2805412', '', 'inherit', 'open', 'closed', '', '2805412', '', '', '2016-02-11 15:40:29', '2016-02-11 15:40:29', '', 29, 'http:/local.wordpress.dev/app/uploads/2016/02/2805412.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-02-11 15:42:09', '2016-02-11 15:42:09', '', 'JIPI', '', 'publish', 'open', 'open', '', 'jipi', '', '', '2016-02-18 15:26:21', '2016-02-18 14:26:21', '', 0, 'http:/local.wordpress.dev/?p=38', 0, 'project', '', 0),
(39, 1, '2016-02-11 15:42:09', '2016-02-11 15:42:09', '', 'JIPI', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-02-11 15:42:09', '2016-02-11 15:42:09', '', 38, 'http:/local.wordpress.dev/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-02-11 15:44:04', '2016-02-11 15:44:04', 'Crescendo sibi agitabilis caeli aliis deorum sive. <strong>Lumina sponte</strong> animalibus terrarum obsistitur calidis mentisque adsiduis. Corpore dissaepserat fixo amphitrite terras haec unda descenderat. Origine manebat ventos opifex? Frigore tollere.<!--more-->\r\n\r\nHanc pendebat tonitrua quisque. Tonitrua septemque ab supplex aeris mea ligavit: nabataeaque possedit tanto. Corpora totidem solum onus fuerat. Quinta terrae. Totidem rectumque eodem. Duas fidem exemit.<strong> Non fluminaque nova sidera</strong>. Deerat sine exemit mutatas ventos horrifer ensis duris ad! Subdita diremit sponte obliquis corpore spectent. Militis reparabat zonae. Litora mentisque effervescere vis umor igni facientes deerat.', 'Alba Hierro', '', 'publish', 'closed', 'closed', '', 'alba-hierro', '', '', '2016-02-26 12:31:28', '2016-02-26 11:31:28', '', 12, 'http:/local.wordpress.dev/?page_id=40', 0, 'testimonial', '', 0),
(41, 1, '2016-02-11 15:43:32', '2016-02-11 15:43:32', '', '01f0ac4', '', 'inherit', 'open', 'closed', '', '01f0ac4', '', '', '2016-02-11 15:43:32', '2016-02-11 15:43:32', '', 40, 'http:/local.wordpress.dev/app/uploads/2016/02/01f0ac4.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-02-11 15:44:04', '2016-02-11 15:44:04', 'Crescendo sibi agitabilis caeli aliis deorum sive. Lumina sponte animalibus terrarum obsistitur calidis mentisque adsiduis. Corpore dissaepserat fixo amphitrite terras haec unda descenderat. Origine manebat ventos opifex? Frigore tollere. Hanc pendebat tonitrua quisque. Tonitrua septemque ab supplex aeris mea ligavit: nabataeaque possedit tanto.<!--more-->\r\n\r\nCorpora totidem solum onus fuerat. Quinta terrae. Totidem rectumque eodem. Duas fidem exemit.<strong> Non fluminaque nova sidera</strong>. Deerat sine exemit mutatas ventos horrifer ensis duris ad! Subdita diremit sponte obliquis corpore spectent. Militis reparabat zonae. Litora mentisque effervescere vis umor igni facientes deerat.', 'Alba Hierro', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2016-02-11 15:44:04', '2016-02-11 15:44:04', '', 40, 'http:/local.wordpress.dev/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-02-12 09:02:08', '2016-02-12 09:02:08', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="well>Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-12 09:02:08', '2016-02-12 09:02:08', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-02-24 09:37:02', '2016-02-24 08:37:02', '', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2016-02-24 09:37:02', '2016-02-24 08:37:02', '', 5, 'http:/local.wordpress.dev/5-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2016-02-12 09:02:39', '2016-02-12 09:02:39', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="well">Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-12 09:02:39', '2016-02-12 09:02:39', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-02-12 09:03:59', '2016-02-12 09:03:59', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="well well-lg">Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>\r\n\r\n<input type="button" class="btn	btn-default">Contacta\'m</input>', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-12 09:03:59', '2016-02-12 09:03:59', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-02-12 09:04:27', '2016-02-12 09:04:27', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="well well-lg">Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>\r\n\r\n<button type="button" class="btn btn-primary">Contacta\'m</button>\r\n', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-12 09:04:27', '2016-02-12 09:04:27', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-02-12 15:01:15', '2016-02-12 15:01:15', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="lead">Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>\r\n\r\n<button type="button" class="btn btn-primary">Contacta\'m</button>\r\n', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-12 15:01:15', '2016-02-12 15:01:15', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-02-15 11:57:26', '2016-02-15 10:57:26', 'this is a very short testimonial with a related project. End.', 'Oscar Marí', '', 'publish', 'closed', 'closed', '', 'oscar-mari', '', '', '2016-02-26 13:32:52', '2016-02-26 12:32:52', '', 0, 'http:/local.wordpress.dev/?post_type=testimonial&#038;p=53', 0, 'testimonial', '', 0),
(54, 1, '2016-02-15 12:49:31', '2016-02-15 11:49:31', '', 'Project', '', 'publish', 'closed', 'closed', '', 'acf_project', '', '', '2016-02-15 13:01:39', '2016-02-15 12:01:39', '', 0, 'http:/local.wordpress.dev/?post_type=acf&#038;p=54', 0, 'acf', '', 0),
(57, 1, '2016-02-15 13:01:15', '2016-02-15 12:01:15', 'Crescendo sibi agitabilis caeli aliis deorum sive. Lumina sponte animalibus terrarum obsistitur calidis mentisque adsiduis. Corpore dissaepserat fixo amphitrite terras haec unda descenderat. Origine manebat ventos opifex? Frigore tollere. Hanc pendebat tonitrua quisque. Tonitrua septemque ab supplex aeris mea ligavit: nabataeaque possedit tanto.<!--more-->\r\n\r\nCorpora totidem solum onus fuerat. Quinta terrae. Totidem rectumque eodem. Duas fidem exemit. Non fluminaque nova sidera. Deerat sine exemit mutatas ventos horrifer ensis duris ad! Subdita diremit sponte obliquis corpore spectent. Militis reparabat zonae. Litora mentisque effervescere vis umor igni facientes deerat.\r\n\r\nRetinebat caligine pondus fronde cetera hominum. Lucis mutatas recessit caesa invasit sanctius iapeto tepescunt. Lacusque cetera aere ignea cum. Viseret consistere obliquis tellus nunc calidis sine? Qui carentem non coeptis flexi neu praecipites. Semine habitabilis quarum hunc temperiemque montibus matutinis ab partim mortales.', 'Gir a l\'esquerra', '', 'publish', 'closed', 'closed', '', 'gir-a-lesquerra', '', '', '2016-02-18 17:14:02', '2016-02-18 16:14:02', '', 0, 'http:/local.wordpress.dev/?post_type=project&#038;p=57', 0, 'project', '', 0),
(61, 1, '2016-02-18 15:27:28', '2016-02-18 14:27:28', '', 'Maquetació', '', 'publish', 'closed', 'closed', '', 'maquetacio', '', '', '2016-02-18 15:27:28', '2016-02-18 14:27:28', '', 0, 'http:/local.wordpress.dev/?post_type=area&#038;p=61', 0, 'area', '', 0),
(62, 1, '2016-02-18 15:27:39', '2016-02-18 14:27:39', '', 'Estudi', '', 'publish', 'closed', 'closed', '', 'estudi', '', '', '2016-02-18 15:27:39', '2016-02-18 14:27:39', '', 0, 'http:/local.wordpress.dev/?post_type=area&#038;p=62', 0, 'area', '', 0),
(63, 1, '2016-02-18 15:27:52', '2016-02-18 14:27:52', '', 'PHP', '', 'publish', 'closed', 'closed', '', 'php', '', '', '2016-02-24 15:57:42', '2016-02-24 14:57:42', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=63', 0, 'technology', '', 0),
(64, 1, '2016-02-18 15:28:15', '2016-02-18 14:28:15', '', 'MySQL', '', 'publish', 'closed', 'closed', '', 'mysql', '', '', '2016-02-24 15:57:42', '2016-02-24 14:57:42', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=64', 0, 'technology', '', 0),
(65, 1, '2016-02-18 15:28:22', '2016-02-18 14:28:22', '', 'WordPress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2016-02-24 16:00:48', '2016-02-24 15:00:48', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=65', 0, 'technology', '', 0),
(66, 1, '2016-02-18 15:29:41', '2016-02-18 14:29:41', 'Crescendo sibi agitabilis caeli aliis deorum sive. Lumina sponte animalibus terrarum obsistitur calidis mentisque adsiduis.\n<!--more-->\nCorpore dissaepserat fixo amphitrite terras haec unda descenderat. Origine manebat ventos opifex? Frigore tollere. Hanc pendebat tonitrua quisque. Tonitrua septemque ab supplex aeris mea ligavit: nabataeaque possedit tanto', 'Oscar Marí', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2016-02-18 15:29:41', '2016-02-18 14:29:41', '', 53, 'http:/local.wordpress.dev/53-autosave-v1/', 0, 'revision', '', 0),
(67, 1, '2016-02-18 15:29:59', '2016-02-18 14:29:59', '', 'Oscar Marí', '', 'inherit', 'open', 'closed', '', '020f5d7', '', '', '2016-02-23 16:29:46', '2016-02-23 15:29:46', '', 53, 'http:/local.wordpress.dev/app/uploads/2016/02/020f5d7.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2016-02-18 15:38:38', '2016-02-18 14:38:38', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.<!--more-->\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="lead">Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>\r\n\r\n<button type="button" class="btn btn-primary">Contacta\'m</button>\r\n', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-18 15:38:38', '2016-02-18 14:38:38', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-02-18 15:45:08', '2016-02-18 14:45:08', '', 'Call to action', '', 'publish', 'closed', 'closed', '', 'acf_call-to-action', '', '', '2016-02-24 17:59:34', '2016-02-24 16:59:34', '', 0, 'http:/local.wordpress.dev/?post_type=acf&#038;p=69', 0, 'acf', '', 0),
(70, 1, '2016-02-18 15:43:39', '2016-02-18 14:43:39', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.\r\n\r\n<div class="lead">Conversa instabilis proximus nova illic oppida habentia. Lege carentem diu mentes neu illic horrifer praebebat dextra.</div>\r\n\r\n<button type="button" class="btn btn-primary">Contacta\'m</button>\r\n', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-18 15:43:39', '2016-02-18 14:43:39', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-02-18 15:48:59', '2016-02-18 14:48:59', 'Mixtam montibus mundi cornua ensis fratrum duas. Divino habentia posset: amphitrite porrexerat matutinis congestaque alto perpetuum. Figuras campoque hunc aere summaque postquam. Conversa capacius. Erat bene tegi silvas adspirate. Mortales margine alto fuerat. Pinus cuncta pulsant reparabat quem poena lacusque levitate habitabilis terra.\r\n\r\nTuti freta instabilis ignea. Aetas humanas auroram figuras calidis regat obstabatque! Mundi otia semine? Illic melioris congeriem securae aberant lapidosos. Convexi triones pinus. Umentia diu volucres origo? Praebebat in motura ut usu! Abscidit siccis est manebat effervescere. Quinta sata habitandae viseret et solidumque.', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-18 15:48:59', '2016-02-18 14:48:59', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-02-18 15:50:46', '2016-02-18 14:50:46', 'Desenvolupo pàgines web.\r\n\r\nOfereixo solucions a mesura per a les teves neessitats.\r\n\r\nPots veure una pàgina web destacada de les que he realitzat a continuació.', 'Presentació', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-18 15:50:46', '2016-02-18 14:50:46', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-02-18 16:37:13', '2016-02-18 15:37:13', 'Gira a l\'esquerra en diferents dispositius', 'Gira a l\'esquerra en diferents dispositius', '', 'inherit', 'open', 'closed', '', 'gir-a-lesquerra-mockup-transparent', '', '', '2016-02-18 16:37:54', '2016-02-18 15:37:54', '', 57, 'http:/local.wordpress.dev/app/uploads/2016/02/gir-a-lesquerra-mockup-transparent.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2016-02-22 14:00:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-22 14:00:36', '0000-00-00 00:00:00', '', 0, 'http:/local.wordpress.dev/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2016-02-22 14:01:21', '2016-02-22 13:01:21', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2016-02-22 14:01:27', '2016-02-22 13:01:27', '', 0, 'http:/local.wordpress.dev/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2016-02-22 14:01:21', '2016-02-22 13:01:21', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2016-02-22 14:01:27', '2016-02-22 13:01:27', '', 0, 'http:/local.wordpress.dev/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2016-02-22 14:01:21', '2016-02-22 13:01:21', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2016-02-22 14:01:27', '2016-02-22 13:01:27', '', 0, 'http:/local.wordpress.dev/?p=77', 4, 'nav_menu_item', '', 0),
(78, 1, '2016-02-22 14:00:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-22 14:00:36', '0000-00-00 00:00:00', '', 0, 'http:/local.wordpress.dev/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2016-02-22 14:01:21', '2016-02-22 13:01:21', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-02-22 14:01:27', '2016-02-22 13:01:27', '', 0, 'http:/local.wordpress.dev/?p=79', 1, 'nav_menu_item', '', 0),
(82, 1, '2016-02-24 09:57:15', '2016-02-24 08:57:15', '<span style="font-weight: 400;">Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-24 09:57:15', '2016-02-24 08:57:15', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-02-24 09:57:27', '2016-02-24 08:57:27', '<span style="font-weight: 400;">Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-24 09:57:27', '2016-02-24 08:57:27', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-02-24 10:06:18', '2016-02-24 09:06:18', '&nbsp;\n\n<span style="font-weight: 400;">El procés de creació d\'una pàgina web està format per moltes parts. De la mateixa manera que ho està fer una cervesa. No cal que les coneixis totes per a tenir una pàgina web. Faig servir els meus anys d\'experiència desenvolupant webs per construir webs tenint en compte totes les parts del procés.</span>', 'Procés', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2016-02-24 10:06:18', '2016-02-24 09:06:18', '', 7, 'http:/local.wordpress.dev/7-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2016-02-24 10:03:16', '2016-02-24 09:03:16', '&nbsp;\r\n\r\n<span style="font-weight: 400;">El procés de creació d\'una pàgina web està format per moltes parts. De la mateixa manera que ho està fer una cervesa. No cal que les coneixis totes per a tenir una pàgina web. Jo et puc assessorar en qualsevol d\'elles</span>', 'Procés', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-24 10:03:16', '2016-02-24 09:03:16', '', 7, 'http:/local.wordpress.dev/7-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-02-24 10:19:47', '2016-02-24 09:19:47', 'El procés de creació d\'una pàgina web està format per moltes parts. De la mateixa manera que ho està fer una cervesa. No cal que les coneixis totes per a tenir una pàgina web. Faig servir els meus anys d\'experiència desenvolupant webs per construir webs tenint en compte totes les parts del procés.', 'Procés', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-24 10:19:47', '2016-02-24 09:19:47', '', 7, 'http:/local.wordpress.dev/7-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2016-02-24 10:20:51', '2016-02-24 09:20:51', '', 'home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-24 10:20:51', '2016-02-24 09:20:51', '', 2, 'http:/local.wordpress.dev/2-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-02-24 10:21:29', '2016-02-24 09:21:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'acf_home', '', '', '2016-02-24 10:22:05', '2016-02-24 09:22:05', '', 0, 'http:/local.wordpress.dev/?post_type=acf&#038;p=88', 0, 'acf', '', 0),
(89, 1, '2016-02-24 10:21:46', '2016-02-24 09:21:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-24 10:21:46', '2016-02-24 09:21:46', '', 2, 'http:/local.wordpress.dev/2-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2016-02-24 10:27:21', '2016-02-24 09:27:21', 'Per què necessites una pàgina web? Quins problemes es pot resoldre amb un pàgina web? Què ha de tenir la meva pàgina web? Com hauria de ser?\r\n\r\nPlantejar-se aquestes preguntes és el primer pas per al desenvolupament d\'una pàgina web i puc ajudar-te a respondre-les.', 'Idea', '', 'publish', 'closed', 'closed', '', 'idea', '', '', '2016-02-24 13:52:22', '2016-02-24 12:52:22', '', 0, 'http:/local.wordpress.dev/?post_type=stage&#038;p=90', 0, 'stage', '', 0),
(91, 1, '2016-02-24 10:32:54', '2016-02-24 09:32:54', 'Per què necessites una pàgina web? Quins problemes es pot resoldre amb un pàgina web? Què ha de tenir la meva pàgina web? Com hauria de ser?\n\nPlantejar-s', 'Idea', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2016-02-24 10:32:54', '2016-02-24 09:32:54', '', 90, 'http:/local.wordpress.dev/90-autosave-v1/', 0, 'revision', '', 0),
(92, 1, '2016-02-24 10:31:47', '2016-02-24 09:31:47', 'Jo puc ajudar a trobar a un dissenyador o avaluar la viabilitat d\'un disseny que ja té per complir amb una idea per a un lloc web', 'Disseny', '', 'publish', 'closed', 'closed', '', 'disseny', '', '', '2016-02-24 13:52:38', '2016-02-24 12:52:38', '', 0, 'http:/local.wordpress.dev/?post_type=stage&#038;p=92', 0, 'stage', '', 0),
(93, 1, '2016-02-24 10:34:28', '2016-02-24 09:34:28', 'Jo puc ajudar a trobar a un dissenyador o avaluar la viabilitat d\'un disseny que ja té per complir amb una idea per a un lloc web', 'Disseny', '', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2016-02-24 10:34:28', '2016-02-24 09:34:28', '', 92, 'http:/local.wordpress.dev/92-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2016-02-24 10:41:04', '2016-02-24 09:41:04', 'Puc encarregar-me de tota la part de la programació d\'una pàgina web des de la maquetació fins a la gestió del servidor passant per la gestió de la base de dades o la programació interna de la web', 'Desenvolupament', '', 'publish', 'closed', 'closed', '', 'desenvolupament', '', '', '2016-02-24 15:35:18', '2016-02-24 14:35:18', '', 0, 'http:/local.wordpress.dev/?post_type=stage&#038;p=95', 0, 'stage', '', 0),
(96, 1, '2016-02-24 10:42:04', '2016-02-24 09:42:04', 'Puc mirar-me una pàgina web ja existent per buscar possibles millores', 'Evaluació', '', 'publish', 'closed', 'closed', '', 'evaluacio', '', '', '2016-02-24 13:52:48', '2016-02-24 12:52:48', '', 0, 'http:/local.wordpress.dev/?post_type=stage&#038;p=96', 0, 'stage', '', 0),
(97, 1, '2016-02-24 10:42:30', '2016-02-24 09:42:30', '', 'Bootstrap', '', 'publish', 'closed', 'closed', '', 'bootstrapp', '', '', '2016-02-24 15:57:42', '2016-02-24 14:57:42', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=97', 0, 'technology', '', 0),
(98, 1, '2016-02-24 10:42:37', '2016-02-24 09:42:37', '', 'Sass', '', 'publish', 'closed', 'closed', '', 'sass', '', '', '2016-02-24 16:00:24', '2016-02-24 15:00:24', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=98', 0, 'technology', '', 0),
(99, 1, '2016-02-24 10:45:17', '2016-02-24 09:45:17', '', 'JavaScript', '', 'publish', 'closed', 'closed', '', 'javascript', '', '', '2016-02-24 16:00:13', '2016-02-24 15:00:13', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=99', 0, 'technology', '', 0),
(100, 1, '2016-02-24 10:47:17', '2016-02-24 09:47:17', '', 'Linux', '', 'publish', 'closed', 'closed', '', 'linux', '', '', '2016-02-24 16:23:07', '2016-02-24 15:23:07', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=100', 0, 'technology', '', 0),
(101, 1, '2016-02-24 10:48:21', '2016-02-24 09:48:21', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2016-02-24 16:00:00', '2016-02-24 15:00:00', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=101', 0, 'technology', '', 0),
(102, 1, '2016-02-24 10:49:03', '2016-02-24 09:49:03', '', 'GIT', '', 'trash', 'closed', 'closed', '', 'git', '', '', '2016-02-24 10:49:21', '2016-02-24 09:49:21', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=102', 0, 'technology', '', 0),
(104, 1, '2016-02-24 12:42:40', '2016-02-24 11:42:40', '', 'Stage', '', 'publish', 'closed', 'closed', '', 'acf_stage', '', '', '2016-02-24 13:45:18', '2016-02-24 12:45:18', '', 0, 'http:/local.wordpress.dev/?post_type=acf&#038;p=104', 0, 'acf', '', 0),
(105, 1, '2016-02-24 13:44:48', '2016-02-24 12:44:48', '', 'Technology', '', 'publish', 'closed', 'closed', '', 'acf_technology', '', '', '2016-02-24 13:45:44', '2016-02-24 12:45:44', '', 0, 'http:/local.wordpress.dev/?post_type=acf&#038;p=105', 0, 'acf', '', 0),
(106, 1, '2016-02-24 13:55:38', '2016-02-24 12:55:38', '', 'Bootstrap', '', 'inherit', 'closed', 'closed', '', '97-autosave-v1', '', '', '2016-02-24 13:55:38', '2016-02-24 12:55:38', '', 97, 'http:/local.wordpress.dev/97-autosave-v1/', 0, 'revision', '', 0),
(107, 1, '2016-02-24 16:01:22', '2016-02-24 15:01:22', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2016-02-24 16:01:34', '2016-02-24 15:01:34', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=107', 0, 'technology', '', 0),
(108, 1, '2016-02-24 16:00:42', '2016-02-24 15:00:42', '', 'CSS', '', 'publish', 'closed', 'closed', '', 'css', '', '', '2016-02-24 16:00:42', '2016-02-24 15:00:42', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=108', 0, 'technology', '', 0),
(109, 1, '2016-02-24 16:01:57', '2016-02-24 15:01:57', '', 'MariaDB', '', 'publish', 'closed', 'closed', '', 'mariadb', '', '', '2016-02-24 16:01:57', '2016-02-24 15:01:57', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=109', 0, 'technology', '', 0),
(110, 1, '2016-02-24 16:24:49', '2016-02-24 15:24:49', '', 'jQuery', '', 'publish', 'closed', 'closed', '', 'jquery', '', '', '2016-02-24 16:26:23', '2016-02-24 15:26:23', '', 0, 'http:/local.wordpress.dev/?post_type=technology&#038;p=110', 0, 'technology', '', 0),
(111, 1, '2016-02-24 17:31:17', '2016-02-24 16:31:17', 'La base de tot és l\'experiència i això és el que algunes persones tenen a dir de la nostra experiència conjunta', 'Fonaments', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-02-24 17:31:17', '2016-02-24 16:31:17', '', 16, 'http:/local.wordpress.dev/16-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2016-02-24 17:32:37', '2016-02-24 16:32:37', 'Locis zephyro naturae animus ne levitate subsidere. Iudicis instabilis sorbentur fontes caeca. Onerosior animalibus homo aetas ubi lege litem montibus animal! Tellus opifex. Septemque pendebat summaque. Eodem terras. Aberant quanto nitidis sorbentur! Madescit nebulas. Diverso opifex subdita solum boreas habitandae diu vos pontus?\n\nDiu fuerant habitabilis recessit. Congestaque carmen rerum terram fidem tempora. Caelo natura cura. Frigore locoque. Nix quoque sic aliis arce inminet adsiduis mortales. Sinistra pugnabant. Addidit ensis rudis longo. Boreas orbis orbe. Tellure tepescunt frigore passim utque boreas. Subdita matutinis numero spectent pugnabant.\n\nNabataeaque tegit carmen cepit. Congestaque seductaque undas pro usu mutastis mollia postquam mentes. Legebantur natus dominari natura. Igni quae quem melioris mentisque natus stagna vis duris. Quisquis motura altae? Illi animal. Extendi homini figuras iudicis mortales habitandae tenent habitabilis circumfluus. Secuit locum crescendo.', 'Tecnologies', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2016-02-24 17:32:37', '2016-02-24 16:32:37', '', 9, 'http:/local.wordpress.dev/9-autosave-v1/', 0, 'revision', '', 0),
(113, 1, '2016-02-24 17:43:43', '2016-02-24 16:43:43', '<span style="font-weight: 400;">Aquestes són algunes de les tecnologies que faig servir per crear pàgines web.</span>', 'Tecnologies', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-02-24 17:43:43', '2016-02-24 16:43:43', '', 9, 'http:/local.wordpress.dev/9-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2016-02-24 17:48:40', '2016-02-24 16:48:40', '<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Correu</div>\r\n<div class="panel-body"><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span></div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Altres formes de contacte</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-skype"></i> miquel.adell</li>\r\n	<li><i class="fa fa-fw fa-phone"></i> +34 620 015 860</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Xarxes socials</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Contacte', '', 'publish', 'closed', 'closed', '', 'contacte', '', '', '2016-02-26 16:46:19', '2016-02-26 15:46:19', '', 0, 'http:/local.wordpress.dev/?page_id=114', 0, 'page', '', 0),
(115, 1, '2016-02-24 17:48:29', '2016-02-24 16:48:29', '', 'DSC_3586-2', '', 'inherit', 'open', 'closed', '', 'dsc_3586-2', '', '', '2016-02-24 17:48:29', '2016-02-24 16:48:29', '', 114, 'http:/local.wordpress.dev/app/uploads/2016/02/DSC_3586-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2016-02-24 17:48:40', '2016-02-24 16:48:40', '', 'Contacta\'m', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-24 17:48:40', '2016-02-24 16:48:40', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2016-02-24 17:49:00', '2016-02-24 16:49:00', '', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-24 17:49:00', '2016-02-24 16:49:00', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2016-02-24 17:50:57', '2016-02-24 16:50:57', '<span style="font-weight: 400;">Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-24 17:50:57', '2016-02-24 16:50:57', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2016-02-24 17:54:50', '2016-02-24 16:54:50', '<span style="font-weight: 400;">Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-24 17:54:50', '2016-02-24 16:54:50', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2016-02-24 17:59:48', '2016-02-24 16:59:48', '<span style="font-weight: 400;">Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-24 17:59:48', '2016-02-24 16:59:48', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2016-02-24 18:01:24', '2016-02-24 17:01:24', 'El procés de creació d\'una pàgina web està format per moltes parts. De la mateixa manera que ho està fer una cervesa. No cal que les coneixis totes per a tenir una pàgina web. Faig servir els meus anys d\'experiència desenvolupant webs per construir webs tenint en compte totes les parts del procés.', 'Procés', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-24 18:01:24', '2016-02-24 17:01:24', '', 7, 'http:/local.wordpress.dev/7-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2016-02-25 15:49:55', '2016-02-25 14:49:55', '<span style="font-weight: 400;">Aquestes són algunes de les tecnologies que faig servir per crear pàgines web.</span>', 'Tecnologies', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-02-25 15:49:55', '2016-02-25 14:49:55', '', 9, 'http:/local.wordpress.dev/9-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2016-02-26 15:07:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-26 15:07:45', '0000-00-00 00:00:00', '', 0, 'http:/local.wordpress.dev/?p=124', 0, 'post', '', 0),
(125, 1, '2016-02-26 16:16:49', '2016-02-26 15:16:49', '<span class=\'lead\'>Acompanyo clients en el procés de creació d’una pàgina web per trobar la solució ideal als seus problemes online</span>', 'Miquel Adell', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-26 16:16:49', '2016-02-26 15:16:49', '', 5, 'http:/local.wordpress.dev/5-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(126, 1, '2016-02-26 16:45:18', '2016-02-26 15:45:18', '<div class="row">\n<div class="col-xs-12 col-sm-3">\n<div class="panel panel-default">\n<div class="panel-heading">Correu</div>\n<div class="panel-body"><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span></div>\n</div>\n</div>\n<div class="col-xs-12 col-sm-3">\n<div class="panel panel-default">\n<div class="panel-heading">Altres formes de contacte</div>\n<div class="panel-body">\n<ul class="list-unstyled">\n	<li><i class="fa fa-fw fa-skype"></i> miquel.adell</li>\n	<li><i class="fa fa-fw fa-phone"></i> +34 620 015 860</li>\n</ul>\n</div>\n</div>\n</div>\n<div class="col-xs-12 col-sm-3">\n<div class="panel panel-default">\n<div class="panel-heading">Xarxes socials</div>\n<div class="panel-body">També em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\n<ul class="list-unstyled">\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\n</ul>\n</div>\n</div>\n</div>\n</div>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-autosave-v1', '', '', '2016-02-26 16:45:18', '2016-02-26 15:45:18', '', 114, 'http:/local.wordpress.dev/114-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2016-02-26 16:27:05', '2016-02-26 15:27:05', '<span class=\'lead\'>Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\nNo dubtis en enviar-me un correu, per qualsevol dubte. \r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul>\r\n	<li><a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow"><i class="fa fa-linkedin"></i>\r\n LinkedIn</a></li>\r\n	<li><a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow"><i class="fa fa-github"></i>\r\n GitHub</a></li>\r\n	<li><a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-stack-overflow"></i>\r\n Stack Overflow</a></li>\r\n	<li><a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-twitter"></i>\r\n Twitter</a></li>\r\n	<li><a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow"><i class="fa fa-facebook"></i>\r\n Facebook</a></li>\r\n</ul>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:27:05', '2016-02-26 15:27:05', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(128, 1, '2016-02-26 16:27:27', '2016-02-26 15:27:27', '<span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\nNo dubtis en enviar-me un correu, per qualsevol dubte.\r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul class=\'no-style\'>\r\n	<li><a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow"><i class="fa fa-linkedin"></i>\r\nLinkedIn</a></li>\r\n	<li><a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow"><i class="fa fa-github"></i>\r\nGitHub</a></li>\r\n	<li><a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-stack-overflow"></i>\r\nStack Overflow</a></li>\r\n	<li><a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-twitter"></i>\r\nTwitter</a></li>\r\n	<li><a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow"><i class="fa fa-facebook"></i>\r\nFacebook</a></li>\r\n</ul>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:27:27', '2016-02-26 15:27:27', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2016-02-26 16:28:20', '2016-02-26 15:28:20', '<span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\nNo dubtis en enviar-me un correu, per qualsevol dubte.\r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul class="list-unstyled">\r\n	<li><a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow"><i class="fa fa-linkedin"></i>\r\nLinkedIn</a></li>\r\n	<li><a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow"><i class="fa fa-github"></i>\r\nGitHub</a></li>\r\n	<li><a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-stack-overflow"></i>\r\nStack Overflow</a></li>\r\n	<li><a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-twitter"></i>\r\nTwitter</a></li>\r\n	<li><a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow"><i class="fa fa-facebook"></i>\r\nFacebook</a></li>\r\n</ul>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:28:20', '2016-02-26 15:28:20', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2016-02-26 16:30:16', '2016-02-26 15:30:16', '<span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\nNo dubtis en enviar-me un correu, per qualsevol dubte.\r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul class="list-unstyled">\r\n	<li><a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow"><i class="fa fa-linkedin"></i> LinkedIn</a></li>\r\n	<li><a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow"><i class="fa fa-github"></i> GitHub</a></li>\r\n	<li><a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-stack-overflow"></i> Stack Overflow</a></li>\r\n	<li><a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow"><i class="fa fa-twitter"></i> Twitter</a></li>\r\n	<li><a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow"><i class="fa fa-facebook"></i> Facebook</a></li>\r\n</ul>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:30:16', '2016-02-26 15:30:16', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2016-02-26 16:32:40', '2016-02-26 15:32:40', '<span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:32:40', '2016-02-26 15:32:40', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2016-02-26 16:33:32', '2016-02-26 15:33:32', '<span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\nNo dubtis en enviar-me un correu, per qualsevol dubte.\r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:33:32', '2016-02-26 15:33:32', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-02-26 16:35:55', '2016-02-26 15:35:55', '<div class=\'row\'>\r\n    <p><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span></p>\r\n\r\n\r\n    <div class=\'col-xs-6\'>\r\n        <p>També em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:<p>\r\n    </div>\r\n    <div class=\'col-xs-6\'>\r\n        <ul class="list-unstyled">\r\n        	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n        	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n        	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n        	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n        	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n        </ul>\r\n    </div>\r\n</div>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:35:55', '2016-02-26 15:35:55', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2016-02-26 16:38:12', '2016-02-26 15:38:12', '<div class="row">\r\n<div class="col-xs-12 col-sm-5 .col-sm-offset-1">\r\n\r\n<span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span>\r\n\r\n</div>\r\n<div class="col-xs-12 col-sm-2">\r\n\r\nTambé em pots trobar-me a múltiples pàgines web i en algunes s\'hi pot veure part de la meva feina:\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>\r\n</div>\r\n</div>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:38:12', '2016-02-26 15:38:12', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2016-02-26 16:45:48', '2016-02-26 15:45:48', '<div class="row">\r\n<div class="col-xs-12 col-sm-3">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Correu</div>\r\n<div class="panel-body"><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span></div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-3">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Altres formes de contacte</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-skype"></i> miquel.adell</li>\r\n	<li><i class="fa fa-fw fa-phone"></i> +34 620 015 860</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-3">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Xarxes socials</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:45:48', '2016-02-26 15:45:48', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2016-02-26 16:46:03', '2016-02-26 15:46:03', '<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Correu</div>\r\n<div class="panel-body"><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span></div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-3">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Altres formes de contacte</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-skype"></i> miquel.adell</li>\r\n	<li><i class="fa fa-fw fa-phone"></i> +34 620 015 860</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-2">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Xarxes socials</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:46:03', '2016-02-26 15:46:03', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2016-02-26 16:46:19', '2016-02-26 15:46:19', '<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Correu</div>\r\n<div class="panel-body"><span class="lead">Pots enviar-me un correu a <a href="mailto:miquel@miqueladell.com">miquel@miqueladell.com</a></span></div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Altres formes de contacte</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-skype"></i> miquel.adell</li>\r\n	<li><i class="fa fa-fw fa-phone"></i> +34 620 015 860</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="panel panel-default">\r\n<div class="panel-heading">Xarxes socials</div>\r\n<div class="panel-body">\r\n<ul class="list-unstyled">\r\n	<li><i class="fa fa-fw fa-linkedin"></i> <a title="LinkedIn" href="http://es.linkedin.com/in/MiquelAdellBorras" target="_blank" rel="me nofollow">LinkedIn</a></li>\r\n	<li><i class="fa fa-fw fa-github"></i> <a title="GitHub" href="https://github.com/MiquelAdell" target="_blank" rel="me nofollow">GitHub</a></li>\r\n	<li><i class="fa fa-fw fa-stack-overflow"></i> <a title="Stack Overflow" href="http://stackoverflow.com/users/704097/miqueladell" target="_blank" rel="me nofollow">Stack Overflow</a></li>\r\n	<li><i class="fa fa-fw fa-twitter"></i> <a title="Twitter" href="http://twitter.com/miqueladell" target="_blank" rel="me nofollow">Twitter</a></li>\r\n	<li><i class="fa fa-fw fa-facebook"></i> <a title="Facebook" href="http://www.facebook.com/miquel.adell.borras" target="_blank" rel="me nofollow">Facebook</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Contacte', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2016-02-26 16:46:19', '2016-02-26 15:46:19', '', 114, 'http:/local.wordpress.dev/114-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(38, 2, 0),
(63, 6, 0),
(64, 6, 0),
(65, 8, 0),
(75, 3, 0),
(76, 3, 0),
(77, 3, 0),
(79, 3, 0),
(97, 5, 0),
(98, 5, 0),
(99, 5, 0),
(100, 6, 0),
(101, 10, 0),
(107, 10, 0),
(108, 5, 0),
(109, 6, 0),
(110, 5, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(5, 5, 'area', '', 0, 5),
(6, 6, 'area', '', 0, 4),
(8, 8, 'area', '', 0, 1),
(10, 10, 'area', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'projects', 'projects', 0),
(3, 'Main menu', 'main-menu', 0),
(5, 'Front end', 'front-end', 0),
(6, 'Back end', 'back-end', 0),
(8, 'CMS', 'content-management-system', 0),
(10, 'APIs', 'apis', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&hidetb=1&editor=html&urlbutton=none&imgsize=large&editor_expand=on'),
(16, 1, 'wp_user-settings-time', '1456501544'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '124'),
(18, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:6:"acf_23";s:4:"side";s:58:"submitdiv,pageparentdiv,p2p-to-posts_to_pages,postimagediv";s:6:"normal";s:57:"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(19, 1, 'screen_layout_page', '2'),
(20, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:"postcustom";}'),
(21, 1, 'metaboxhidden_page', 'a:4:{i:0;s:6:"acf_54";i:1;s:6:"acf_23";i:2;s:16:"commentstatusdiv";i:3;s:9:"authordiv";}'),
(22, 1, 'closedpostboxes_post', 'a:1:{i:0;s:23:"p2p-from-posts_to_pages";}'),
(23, 1, 'metaboxhidden_post', 'a:7:{i:0;s:6:"acf_23";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(24, 1, 'session_tokens', 'a:3:{s:64:"d97968fb48e04749f34f46f7c27947a0a23a0971866e6e37f6dfe6c160a8e34a";a:4:{s:10:"expiration";i:1457103876;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36";s:5:"login";i:1455894276;}s:64:"805198af9bc71b6f2a9a870969ce84672b600ba607a2d321ec0d4b850da530d9";a:4:{s:10:"expiration";i:1457355403;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36";s:5:"login";i:1456145803;}s:64:"41a9c6cf33fb0e99a9ecf0c4ca51750c81a1ee954783e4237dd53331cd0ee0a4";a:4:{s:10:"expiration";i:1457440978;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1456231378;}}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:18:"add-post-type-area";i:1;s:21:"add-post-type-project";i:2;s:24:"add-post-type-technology";i:3;s:25:"add-post-type-testimonial";i:4;s:12:"add-post_tag";i:5;s:15:"add-post_format";}'),
(27, 1, 'closedpostboxes_testimonial', 'a:0:{}'),
(28, 1, 'metaboxhidden_testimonial', 'a:3:{i:0;s:6:"acf_54";i:1;s:6:"acf_69";i:2;s:7:"slugdiv";}'),
(29, 1, 'meta-box-order_testimonial', 'a:4:{s:15:"acf_after_title";s:13:"acf_54,acf_23";s:4:"side";s:9:"submitdiv";s:6:"normal";s:14:"acf_69,slugdiv";s:8:"advanced";s:0:"";}'),
(30, 1, 'screen_layout_testimonial', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjUeWxqCFNrEpBXuiLHnhhelh5QwIB/', 'admin', 'miquel@miqueladell.com', '', '2016-01-29 12:08:58', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

