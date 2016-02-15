<?php

// include the custom post type class
// include_once('CPT.php');


// create a testimonial custom post type
$testimonials = new CPT('testimonial');


// define the columns to appear on the admin edit screen
$testimonials->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'company_name' => __('Company name'),
    'project_name' => __('Project Name'),
    'date' => __('Date')
));


// make name, company and project columns sortable
$testimonials->sortable(array(
    'name' => array('name', true),
    'company_name' => array('company_name', true),
    'project_name' => array('project_name', true)
));


// use "pages" icon for post type
$testimonials->menu_icon("dashicons-testimonial");
