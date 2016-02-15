<?php

// include the custom post type class
// include_once('CPT.php');


// create a area custom post type
$areas = new CPT('area');


// define the columns to appear on the admin edit screen
$areas->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'company_name' => __('Company name'),
    'project_name' => __('Project Name'),
    'date' => __('Date')
));


// make name, company and project columns sortable
$areas->sortable(array(
    'name' => array('name', true),
    'company_name' => array('company_name', true),
    'project_name' => array('project_name', true)
));


// use "pages" icon for post type
$areas->menu_icon("dashicons-layout");
