<?php
// Stages in the process custom post type
$stages = new PostType(array(
		'post_type_name' => 'stage',
		'singular' => __('Stages in the process'),
		'plural' => __('Parts of the process'),
		'slug' => 'stage'
));

$stages->columns()->add(array(
		'cb' => '<input type="checkbox" />',
		'title' => __('Name'),
		'font_icon' => __('Icon')
));

$stages->populate_column('font_icon', function($column, $post) {
	echo "<i class='".get_field('icon')."'></i> ".get_field('icon');
});

$stages->menu_icon("dashicons-layout");
