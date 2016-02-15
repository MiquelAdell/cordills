<?php

// include the custom post type class
// include_once('CPT.php');


// create a technology custom post type
$technologies = new CPT('technology');


// define the columns to appear on the admin edit screen
$technologies->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'company_name' => __('Company name'),
    'project_name' => __('Project Name'),
    'date' => __('Date'),
    'plural' => 'Technologies',
));


// make name, company and project columns sortable
$technologies->sortable(array(
    'name' => array('name', true),
    'company_name' => array('company_name', true),
    'project_name' => array('project_name', true)
));


// use "pages" icon for post type
$technologies->menu_icon("dashicons-awards");
