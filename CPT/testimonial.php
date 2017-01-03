<?php
use PostTypes\PostType;
// Testimonials custom post type
$names = [
	'name' => 'testimonial',
	'singular' => __('Testimonial'),
	'plural' => __('Testimonials'),
	'slug' => 'testimonial'
];

$testimonials = new PostType($names);

$testimonials->columns()->add(array(
		'cb' => '<input type="checkbox" />',
		'title' => __('Name'),
		'company_name' => __('Company name'),
		'date' => __('Date'),
		'image' => __('Image')
));

$testimonials->columns()->sortable(
	[
		'name' => ['name', false],
		'company_name' => ['company_name', false],
		'project_name' => ['project_name', false]
	]
);

$testimonials->columns()->populate('company_name', function($column, $post) {
		echo get_field('company_name');
});

$testimonials->columns()->populate('project_name', function($column, $post) {
		echo get_field('project_name');
});

$testimonials->columns()->populate('image', function($column, $post) {
		$image = get_field('image');
		echo "<a href='".get_edit_post_link()."'><img src='".$image['sizes']['thumbnail']."'></a>";
});

$testimonials->icon("dashicons-testimonial");
