<?php
// Projects custom post type
use PostTypes\PostType;
$names = [
	'name' => 'project',
	'singular' => __('Project'),
	'plural' => __('Projects'),
	'slug' => 'project',
	'has_archive' => true
];

$options['rewrite'] = array( 'slug' => __('project','miqueladell') );


$projects = new PostType($names, $options);

$projects->columns()->add(array(
	'title' => __('Name'),
	'image' => __('Full mockup')
));

$projects->columns()->populate('image', function($column, $post) {
	$image = get_field('full_mockup');
	echo "<img src='".$image['sizes']['thumbnail']."'>";
});

$projects->icon("dashicons-desktop");
