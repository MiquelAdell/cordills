<?php
use PostTypes\PostType;
// Stages in the process custom post type
$names = [
	'name' => 'stage',
	'singular' => __('Stage in the process'),
	'plural' => __('Stages in the process'),
	'slug' => 'stage'
];

$stages = new PostType($names);

$stages->columns()->add(array(
		'title' => __('Name'),
		'font_icon' => __('Icon')
));

$stages->columns()->populate('font_icon', function($column, $post) {
	echo "<i class='".get_field('icon')."'></i> ".get_field('icon');
});

$stages->icon("dashicons-layout");
