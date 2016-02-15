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
        'name' => 'posts_to_pages',
        'from' => 'post',
        'to' => 'page'
    ) );
}
add_action( 'p2p_init', 'my_connection_types' );

include_once('custom-post-types/areas-post-type.php');
include_once('custom-post-types/projects-post-type.php');
include_once('custom-post-types/technologies-post-type.php');
include_once('custom-post-types/testimonials-post-type.php');
