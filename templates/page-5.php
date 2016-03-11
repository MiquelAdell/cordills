<?php
$connected = new WP_Query( array(
  'connected_type' => 'highlighted_project',
  'connected_items' => 5,
  'nopaging' => true,
) );
?>
<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<?php
// Display connected pages
if ( $connected->have_posts() ) {
    ?>
    <div class="project-on-homepage">
        <?php while ( $connected->have_posts() ) : $connected->the_post(); ?>
            <h2><a href="<?=get_permalink()?>" class="">
                <?=the_title()?>
            </a></h2>
            <?php
            $image = get_field('full_mockup');
            ?>

            <?php if( !empty($image) ): ?>
                <img class="project-image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
            <?php endif; ?>
            <a href="/project"><?=__('See more')?></a>
        <?php endwhile; ?>
    </div>
    <?php
    // Prevent weirdness
    wp_reset_postdata();
}
?>
