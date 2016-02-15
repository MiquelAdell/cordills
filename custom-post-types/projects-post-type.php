<?php

// include the custom post type class
// include_once('CPT.php');


// create a project custom post type
$projects = new CPT('project');




// make name, company and project columns sortable
$projects->sortable(array(
    'name' => array('name', true)
));


// use "pages" icon for post type
$projects->menu_icon("dashicons-desktop");
