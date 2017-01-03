<?php
// Technologies custom post type
$technologies = new PostType(array(
		'post_type_name' => 'technology',
		'singular' => __('Technology'),
		'plural' => __('Technologies'),
		'slug' => 'technology'
));

$technologies->register_taxonomy(array(
		'taxonomy_name' => 'area',
		'singular' => __('area'),
		'plural' => __('areas'),
		'slug' => 'area'
));

$technologies->columns()->add(array(
		'cb' => '<input type="checkbox" />',
		'title' => __('Name'),
		'font_icon' => __('Icon')
));

$technologies->populate_column('font_icon', function($column, $post) {
	echo "<i class='".get_field('icon')."'></i> ".get_field('icon');
});

$technologies->menu_icon("dashicons-awards");
