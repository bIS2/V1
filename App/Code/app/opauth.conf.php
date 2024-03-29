<?php
/**
 * Opauth configuration file template for advanced user
 * ====================================================
 * To use: rename to opauth.conf.php and tweak as you like
 * For quick and easy set up, refer to opauth.conf.php.default
 */

$config['opauth'] = array(
/**
 * Path where Opauth is accessed.
 * 
 * Begins and ends with /
 * eg. if Opauth is reached via http://example.org/auth/, path is '/auth/'
 * if Opauth is reached via http://auth.example.org/, path is '/'
 */
	'path' => '/auth/',

/**
 * Uncomment if you would like to view debug messages
 */
	'debug' => true,
	
/**
 * Callback URL: redirected to after authentication, successful or otherwise
 */
	'callback_url' => '{path}callback',

/**
 * Callback transport, for sending of $auth response
 * 
 * 'session': Default. Works best unless callback_url is on a different domain than Opauth
 * 'post'   : Works cross-domain, but relies on availability of client-side JavaScript.
 * 'get'    : Works cross-domain, but may be limited or corrupted by browser URL length limit 
 *            (eg. IE8/IE9 has 2083-char limit)
 */
	//'callback_transport' => 'session',

/**
 * A random string used for signing of $auth response.
 */
	'security_salt' => 'LDFmiilYf8Fyw5W10prx4W1KsSoTopBzzpTBWA5vJidQKDx8pMJbmw28R1C4m',
	
/**
 * Higher value, better security, slower hashing;
 * Lower value, lower security, faster hashing.
 */
	//'security_iteration' => 300,	
	
/**
 * Time limit for valid $auth response, starting from $auth response generation to validation.
 */
	//'security_timeout' => '2 minutes',

/**
 * Directory where Opauth strategies reside
 */
	'strategy_dir' => 'vendor/opauth',
		
/**
 * Strategy
 * Refer to individual strategy's documentation on configuration requirements.
 * 
 * eg.
 * 'Strategy' => array(
 * 
 *   'Facebook' => array(
 *      'app_id' => 'APP ID',
 *      'app_secret' => 'APP_SECRET'
 *    ),
 * 
 * )
 *
 */
	'Strategy' => array(
		'Twitter' => array(
		    'key' 				=> 'DxyTV8vES1QKW9tHKoM3w',
		    'secret' 			=> 'gG5W5G497UBrjb08WzQyFUpYELykNy00G3RLCx4m2ZA',
		    //'user_token' 		=> '15981009-CBaAO1E6aCe0TPXgKMdOAkKsWxPbJcQaZHnentIol',
		    //'user_secret' 		=> 'KG9MAMUA89SiEFv3PNsXlTgvYQiZIi5G9jkLMzXs',
		    'curl_proxy'		=> '192.168.100.1:8080',
		    'curl_proxyuserpwd' => 'damian:damian'
		),
        'Facebook' => array(
            'app_id'        => 'YOUR APP ID',
            'app_secret'    => 'YOUR APP SECRET'
        ),
		'GitHub' => array(
		    'client_id' 	=> '7c135c1cad6d637d391c',
		    'client_secret' => 'cdcff8492ac8ed094a98e8dfcbee605a263a2e1d'
		),
		'OpenId' => array()
	),
);