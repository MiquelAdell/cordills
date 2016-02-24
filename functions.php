<?php
/**
 * Sage includes
 *
 * The $sage_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/sage/pull/1042
 */
$sage_includes = [
  'lib/assets.php',    // Scripts and stylesheets
  'lib/extras.php',    // Custom functions
  'lib/setup.php',     // Theme setup
  'lib/titles.php',    // Page titles
  'lib/wrapper.php',   // Theme wrapper class
  'lib/customizer.php' // Theme customizer
];

foreach ($sage_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'sage'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);

function my_connection_types() {
    p2p_register_connection_type( array(
        'name' => 'highlighted_project',
        'from' => 'project',
        'to' => 'page'
    ) );
}
add_action( 'p2p_init', 'my_connection_types' );


//** CUSTOM POST TYPES ** //

// Projects custom post type
$projects = new CPT(array(
    'post_type_name' => 'project',
    'singular' => __('Project'),
    'plural' => __('Projects'),
    'slug' => 'project'
));

$projects->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'image' => __('Full mockup')
));

$projects->populate_column('image', function($column, $post) {
    $image = get_field('full_mockup');
    echo "<img src='".$image['sizes']['thumbnail']."'>";
});

$projects->menu_icon("dashicons-desktop");


// Stages in the process custom post type
$stages = new CPT(array(
    'post_type_name' => 'stage',
    'singular' => __('Stages in the process'),
    'plural' => __('Parts of the process'),
    'slug' => 'stage'
));

$stages->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'font_icon' => __('Icon')
));

$stages->populate_column('font_icon', function($column, $post) {
  echo "<i class='".get_field('icon')."'></i> ".get_field('icon');
});

$stages->menu_icon("dashicons-layout");


// Technologies custom post type
$technologies = new CPT(array(
    'post_type_name' => 'technology',
    'singular' => __('Technology'),
    'plural' => __('Technologies'),
    'slug' => 'technology'
));

$technologies->register_taxonomy(array(
    'taxonomy_name' => 'area',
    'singular' => __('area'),
    'plural' => __('areas'),
    'slug' => 'area'
));

$technologies->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'font_icon' => __('Icon')
));

$technologies->populate_column('font_icon', function($column, $post) {
  echo "<i class='".get_field('icon')."'></i> ".get_field('icon');
});

$technologies->menu_icon("dashicons-awards");


// Testimonials custom post type
$testimonials = new CPT(array(
    'post_type_name' => 'testimonial',
    'singular' => __('Testimonial'),
    'plural' => __('Testimonials'),
    'slug' => 'testimonial'
));

$testimonials->columns(array(
    'cb' => '<input type="checkbox" />',
    'title' => __('Name'),
    'company_name' => __('Company name'),
    'project_name' => __('Project Name'),
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
    ob_start();
    echo "<a href='".get_edit_post_link()."'><img src='".$image['sizes']['thumbnail']."'></a>";
});

$testimonials->menu_icon("dashicons-testimonial");
