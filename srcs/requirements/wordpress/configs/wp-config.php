<?php
2	/*
3	 * The base configuration for WordPress
4	 *
5	 * The wp-config.php creation script uses this file during the installation.
6	 * You don't have to use the website, you can copy this file to "wp-config.php"
7	 * and fill in the values.
8	 *
9	 * This file contains the following configurations:
10	 *
11	 * * Database settings
12	 * * Secret keys
13	 * * Database table prefix
14	 * * ABSPATH
15	 *
16	 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
17	 *
18	 * @package WordPress
19	 */
20	
21	// ** Database settings - You can get this info from your web host ** //
22	/** The name of the database for WordPress */
23	define( 'DB_NAME', 'database_name_here' );
24	
25	/** Database username */
26	define( 'DB_USER', 'username_here' );
27	
28	/** Database password */
29	define( 'DB_PASSWORD', 'password_here' );
30	
31	/** Database hostname */
32	define( 'DB_HOST', 'localhost' );
33	
34	/** Database charset to use in creating database tables. */
35	define( 'DB_CHARSET', 'utf8' );
36	
37	/** The database collate type. Don't change this if in doubt. */
38	define( 'DB_COLLATE', '' );
39	
40	/**#@+
41	 * Authentication unique keys and salts.
42	 *
43	 * Change these to different unique phrases! You can generate these using
44	 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
45	 *
46	 * You can change these at any point in time to invalidate all existing cookies.
47	 * This will force all users to have to log in again.
48	 *
49	 * @since 2.6.0
50	 */
51	define( 'AUTH_KEY',         'put your unique phrase here' );
52	define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
53	define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
54	define( 'NONCE_KEY',        'put your unique phrase here' );
55	define( 'AUTH_SALT',        'put your unique phrase here' );
56	define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
57	define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
58	define( 'NONCE_SALT',       'put your unique phrase here' );
59	
60	/**#@-*/
61	
62	/*
63	 * WordPress database table prefix.
64	 *
65	 * You can have multiple installations in one database if you give each
66	 * a unique prefix. Only numbers, letters, and underscores please!
67	 *
68	 * At the installation time, database tables are created with the specified prefix.
69	 * Changing this value after WordPress is installed will make your site think
70	 * it has not been installed.
71	 *
72	 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
73	 */
74	$table_prefix = 'wp_';
75	
76	/*
77	 * For developers: WordPress debugging mode.
78	 *
79	 * Change this to true to enable the display of notices during development.
80	 * It is strongly recommended that plugin and theme developers use WP_DEBUG
81	 * in their development environments.
82	 *
83	 * For information on other constants that can be used for debugging,
84	 * visit the documentation.
85	 *
86	 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
87	 */
88	define( 'WP_DEBUG', false );
89	
90	/* Add any custom values between this line and the "stop editing" line. */
91	
92	
93	
94	/* That's all, stop editing! Happy publishing. */
95	
96	/** Absolute path to the WordPress directory. */
97	if ( ! defined( 'ABSPATH' ) ) {
98	        define( 'ABSPATH', __DIR__ . '/' );
99	}
100	
101	/** Sets up WordPress vars and included files. */
102	require_once ABSPATH . 'wp-settings.php';