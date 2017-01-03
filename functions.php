<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once __DIR__ . '/vendor/autoload.php';
use PostTypes\PostType;

require_once('CPT/project.php');
require_once('CPT/stage.php');
require_once('CPT/technology.php');
require_once('CPT/testimonial.php');


/**
 * Sage includes
 *
 * The $sage_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/sage/pull/1042
 */
$sage_includes = [
	'lib/assets.php',		// Scripts and stylesheets
	'lib/extras.php',		// Custom functions
	'lib/setup.php',		 // Theme setup
	'lib/titles.php',		// Page titles
	'lib/wrapper.php',	 // Theme wrapper class
	'lib/customizer.php' // Theme customizer
];

foreach ($sage_includes as $file) {
	if (!$filepath = locate_template($file)) {
		trigger_error(sprintf(__('Error locating %s for inclusion', 'sage'), $file), E_USER_ERROR);
	}

	require_once $filepath;
}
unset($file, $filepath);

function my_connection_types() {
		p2p_register_connection_type( array(
				'name' => 'highlighted_project',
				'from' => 'project',
				'to' => 'page'
		) );

		p2p_register_connection_type( array(
				'name' => 'testimonied_project',
				'from' => 'project',
				'to' => 'testimonial'
		) );
}
add_action( 'p2p_init', 'my_connection_types' );

function text_with_link($text, $link = null) {
	if($link){
		return "<a href='".$link."'>".$text."</a>";
	}
	else {
		return $text;
	}
}

function the_main_menu(){
	ob_start();
	?>
	<li class="menu-item"><a class="spi-link" data-target="#projecte-destacat" href="/projecte-destacat">Inici</a></li>
	<li class="menu-item"><a class="spi-link" data-target="#proces" href="/proces">Procés</a></li>
	<li class="menu-item"><a class="spi-link" data-target="#tecnologies" href="/tecnologies">Tecnologies</a></li>
	<li class="menu-item"><a class="spi-link" data-target="#fonaments" href="/fonaments">Fonaments</a></li>
	<li class="menu-item"><a href="/contacte/">Contacte</a></li>
	<?php
	$the_main_menu = ob_get_contents();
	ob_end_clean();
	return $the_main_menu;
}


/**
* Define a constant path to our single template folder
*/
define('SINGLE_PATH', get_template_directory().'/templates/single');

/**
* Filter the single_template with our custom function
*/
add_filter('single_template', 'my_single_template');

/**
* Single template function which will choose our template
*/
function my_single_template($single) {
	global $wp_query, $post;


	/**
	* Checks for single template by ID
	*/
	if(file_exists(SINGLE_PATH . '/single-' . $post->ID . '.php'))
	return SINGLE_PATH . '/single-' . $post->ID . '.php';
	/**
	* Checks for single template by post name
	*/
	if(file_exists(SINGLE_PATH . '/single-' . $post->post_name . '.php'))
	return SINGLE_PATH . '/single-' . $post->post_name . '.php';
	/**
	* Checks for single template by category
	* Check by category slug and ID
	*/
	foreach((array)get_the_category() as $cat) :
		if(file_exists(SINGLE_PATH . '/single-cat-' . $cat->slug . '.php'))
		return SINGLE_PATH . '/single-cat-' . $cat->slug . '.php';

		elseif(file_exists(SINGLE_PATH . '/single-cat-' . $cat->term_id . '.php'))
		return SINGLE_PATH . '/single-cat-' . $cat->term_id . '.php';

	endforeach;

	/**
	* Checks for single template by tag
	* Check by tag slug and ID
	*/
	$wp_query->in_the_loop = true;
	foreach((array)get_the_tags() as $tag) :
		if($tag){

			if(file_exists(SINGLE_PATH . '/single-tag-' . $tag->slug . '.php'))
			return SINGLE_PATH . '/single-tag-' . $tag->slug . '.php';

			elseif(file_exists(SINGLE_PATH . '/single-tag-' . $tag->term_id . '.php'))
			return SINGLE_PATH . '/single-tag-' . $tag->term_id . '.php';
		}

	endforeach;
	$wp_query->in_the_loop = false;

	/**
	* Checks for single template by author
	* Check by user nicename and ID
	*/
	$curauth = get_userdata($wp_query->post->post_author);

	if(file_exists(SINGLE_PATH . '/single-author-' . $curauth->user_nicename . '.php'))
	return SINGLE_PATH . '/single-author-' . $curauth->user_nicename . '.php';

	elseif(file_exists(SINGLE_PATH . '/single-author-' . $curauth->ID . '.php'))
	return SINGLE_PATH  . '/single-author-' . $curauth->ID . '.php';

	/**
	* Checks for default single post files within the single folder
	*/
	if(file_exists(SINGLE_PATH . '/single.php'))
	return SINGLE_PATH . '/single.php';

	elseif(file_exists(SINGLE_PATH . '/default.php'))
	return SINGLE_PATH . '/default.php';
	return $single;
}


function web_title(){
	?>
	<a href="<?= esc_url(home_url('/')); ?>">
		<div class="text"><span>Miquel</span> <span>Adell</span></div>
		<div class="logo"></div>
	</a>
	<h2 class="slogan">Programació web sense complexes</h2>
	<?php
}


function languages_list(){
    $languages = icl_get_languages('skip_missing=0&orderby=code');
    if(!empty($languages)){
        echo '<div class="language_list"><ul>';
        foreach($languages as $l){
            echo '<li>';
            if(!$l['active']) echo '<a href="'.$l['url'].'">';
            echo icl_disp_language($l['native_name']);
            if(!$l['active']) echo '</a>';
            echo '</li>';
        }
        echo '</ul></div>';
    }
}


$is_front_page = is_front_page();
$is_home = is_home();
$is_root = $_SERVER["REQUEST_URI"] == '/';
// var_dump($is_front_page,$is_home,$is_root); die();
