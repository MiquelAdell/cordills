<?php
// Projects custom post type
$projects = new PostType(array(
		'post_type_name' => 'project',
		'singular' => __('Project'),
		'plural' => __('Projects'),
		'slug' => 'project'
));

$projects->columns()->add(array(
		'cb' => '<input type="checkbox" />',
		'title' => __('Name'),
		'image' => __('Full mockup')
));

$projects->populate_column('image', function($column, $post) {
		$image = get_field('full_mockup');
		echo "<img src='".$image['sizes']['thumbnail']."'>";
});

$projects->menu_icon("dashicons-desktop");
