<?php
// Testimonials custom post type
$testimonials = new PostType(array(
		'post_type_name' => 'testimonial',
		'singular' => __('Testimonial'),
		'plural' => __('Testimonials'),
		'slug' => 'testimonial'
));

$testimonials->columns()->add(array(
		'cb' => '<input type="checkbox" />',
		'title' => __('Name'),
		'company_name' => __('Company name'),
		'date' => __('Date'),
		'image' => __('Image')
));

$testimonials->sortable(array(
		'name' => array('name', false),
		'company_name' => array('company_name', false),
		'project_name' => array('project_name', false)
));

$testimonials->populate_column('company_name', function($column, $post) {
		echo get_field('company_name');
});

$testimonials->populate_column('project_name', function($column, $post) {
		echo get_field('project_name');
});

$testimonials->populate_column('image', function($column, $post) {
		$image = get_field('image');
		echo "<a href='".get_edit_post_link()."'><img src='".$image['sizes']['thumbnail']."'></a>";
});

$testimonials->menu_icon("dashicons-testimonial");
