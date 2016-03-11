<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>


<?php
$args = array(
  'post_type' => 'stage',
  'posts_per_page' => -1,
  'order'   => 'ASC'
);
$stages = new WP_Query( $args );

// Display connected pages
if ( $stages->have_posts() ) {
  ?>
  <div clas='row'>
  <?php while ( $stages->have_posts() ) : $stages->the_post(); ?>
    <div class='col-sm-4 col-sm-offset-1 text-center darken'>
      <div class="stage">
        <a href="<?=get_permalink()?>">
          <div class="front">
            <div class='iconHolder'>
              <div class='icon'>
                <i class="<?=get_field('icon')?>"></i>
                <h2><?=the_title()?></h2>
              </div>
            </div>
          </div>
          <div class="back">
            <div class='iconHolder'>
              <div class='icon'>
                <?=the_content()?>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
  <?php endwhile; ?>
  </div>
  <?php
  // Prevent weirdness
  wp_reset_postdata();
}
