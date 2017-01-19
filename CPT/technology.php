<?php
use PostTypes\PostType;
// Technologies custom post type
$names = [
	'name' => 'technology',
	'singular' => __('Technology'),
	'plural' => __('Technologies'),
	'slug' => 'technology'
];

$technologies = new PostType($names);

$technologies->columns()->add(array(
		'cb' => '<input type="checkbox" />',
		'title' => __('Name'),
		'font_icon' => __('Icon')
));

$technologies->columns()->populate('font_icon', function($column, $post) {
	echo "<i class='".get_field('icon')."'></i> ".get_field('icon');
});

$technologies->icon("dashicons-awards");
