<?php
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
