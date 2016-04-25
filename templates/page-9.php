<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<div class="front-page-technologies row">

  <?php
  $areas = get_terms( 'area');
  foreach($areas as $area){
    ?>
    <div class='col-sm-6 text-center'>
      <?php
      $args = array(
        'post_type' => 'technology',
        'posts_per_page' => -1,
        'order'   => 'ASC',
        'tax_query' => array(
          array(
            'taxonomy' => 'area',
            'field'    => 'slug',
            'terms'    => $area->slug,
          ),
        ),

      );
      $technologies = new WP_Query( $args );

      // Display connected pages
      if ( $technologies->have_posts() ) {
        ?>
        <div class="front-page-technology">
          <h2><?=$area->name?></h2>
          <div class='icons'>
            <?php while ( $technologies->have_posts() ) : $technologies->the_post(); ?>
                  <h3>
                    <a href="<?=get_permalink()?>"><i class="<?=get_field('icon')?>" data-toggle="tooltip" title="<?=the_title()?>"></i></a>
                  </h3>
            <?php endwhile; ?>
          </div>
          <?php
          // Prevent weirdness
          wp_reset_postdata();
          ?>
        </div>
        <?php
      }
      ?>
    </div>
    <?php
  }
  ?>
</div>
