<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'rowmarinews24');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'jD}zJYO>G&+JaUM][zMmNR3}DxA[u@l@+qp{(ACUrf~l(NVvt#kCEEXyG?qf=dnt');
define('SECURE_AUTH_KEY',  '15aJpJSGi+:c}%0r9I!=h@d$e_8_}owZNKl2+78i|Cd7)rOrTUsV)r#~~rjo5B=9');
define('LOGGED_IN_KEY',    'G`*GsV+3*w/siKa7FrBxTtSO:Oc&sYme+>LK-l8H,2 =MNeM#?6o3cGPnv.M`W.]');
define('NONCE_KEY',        'r92Y-8Sr$9mnAm^h&$y?`AobA^9Xb d?kg7y/{Ot*tncd7hh-a5]3>1_bxqzqVB7');
define('AUTH_SALT',        '8Ywc,}tSB)DXhQyt!*u%Acdvd}n:%Ir 6L8:=a~.|F3briUP~<QY;v$vlw`*(d8d');
define('SECURE_AUTH_SALT', 'JK%Oj{BX|?pVM]vz@U5DS>RO=)p.i-7+&p3N,dGU)jvq&~}2$^|(2q,f1NQ+@M:8');
define('LOGGED_IN_SALT',   'Fw{GCX2.WjiHr5Hk-sUFf~<?A`/YP$ _8/4TP6+s(TMNlic$N1<0GKCKV;<d>8 D');
define('NONCE_SALT',       '`AsS=B8YG; 6NHt~WW5Iu>3*0&eOL5,5rx>x3SeAMfo6WDHp4~#Kv.3.$CrI@*+l');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
