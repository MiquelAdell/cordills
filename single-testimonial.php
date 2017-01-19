<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?
$connected = new WP_Query( array(
  'connected_type' => 'testimonied_project',
  'connected_items' => get_post()->ID,
  'orderby' => 'DESC',
  'posts_per_page' => 1
) );

if ( $connected->have_posts() ) {
  $connected->the_post();
  // this testimonial has a project so we are not showing the
  // testimonial but redirecting to the project
  // TODO: put that redirect before headers are sent
  // wp_safe_redirect(get_permalink());
  ?>
  TODO, redirect <a href='<?=get_permalink()?>'>here</a>
  <?
  // Prevent weirdness
  wp_reset_postdata();
  exit;
}
else {
  // this testimonial does not have a projecte associated so we show just the testimonial
  get_template_part('templates/content-single', get_post_type());

}
