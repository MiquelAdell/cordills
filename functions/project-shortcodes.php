<?php
function project_testimonial_func( $atts = array()){
	shortcode_atts(array(
		'id' => null
	), $atts);

	$post = false;
	if($atts && array_key_exists('id',$atts) && is_numeric($atts['id'])){
		if(get_post_type($atts['id']) == "testimonial"){
			$post = get_post($atts['id']);
		}
	}
	else {
		$connected = new WP_Query( array(
			'connected_type' => 'testimonied_project',
			'connected_items' => get_queried_object(),
			'nopaging' => true,
		) );

		if ( $connected->have_posts() ) {
			$post = $connected->posts[0];
		}
	}
	if(!$post){
		return;
	}

	ob_start();
	?>
	<div class="container-fluid container-showcase container-double highlighted-container">
		<div class="row side-by-side-testimonial">
			<div class="col-xs-12 col-xs-offset-0 col-sm-3 col-sm-offset-2">
				<?php
				if(function_exists("get_field")){
					$image = get_field('image',$post->ID);
				}
				if( !empty($image) ){
					?>
					<div class="image-holder">
						<span class="helper"></span>
						<img class="img-responsive " src="<?=$image['sizes']['medium']?>" alt="<?=$image['alt']?>">
					</div>
					<?php
				} ?>
			</div>
			<div class="col-xs-12 col-sm-5 item">
				<blockquote>
					<div class="excerpt">
						<?=$post->post_content?>
					</div>
					<small>
						<?php
						echo $post->post_title;
						if (function_exists("get_field") && !empty(get_field('company_name',$post->ID))) {
							echo ", ".text_with_link(get_field('company_name',$post->ID),get_field('company_url',$post->ID));
						}
						?>
					</small>
				</blockquote>
			</div>
		</div>
	</div>
	<?php
	$html = ob_get_contents();
	ob_end_clean();
	return $html;
}
add_shortcode( 'project_testimonial', 'project_testimonial_func' );


function template_image_func($atts = array()){
	shortcode_atts(array(
		'post' => null,
		'name' => null,
		'class' => null
	), $atts);
	if(!$atts['name']){
		return;
	}

	if($atts && array_key_exists('post',$atts) && is_numeric($atts['post'])){
		$post = get_post($atts['post']);
	}
	else {
		$post = get_post(get_queried_object());
	}
	if(!$post){
		return;
	}
	$url = get_template_directory_uri()."/dist/images/".$post->post_name."/".$atts['name'];
	return "<img class='".$atts['class']."' src='".$url."'/>";
}
add_shortcode( 'template_image', 'template_image_func' );


function project_html5_video_func($atts = array()){
	shortcode_atts(array(
		'post' => null,
		'name' => null,
		'class' => null,
	), $atts);
	if(!$atts['name']){
		return;
	}

	if($atts && array_key_exists('post',$atts) && is_numeric($atts['post'])){
		$post = get_post($atts['post']);
	}
	else {
		$post = get_post(get_queried_object());
	}
	if(!$post){
		return;
	}
	ob_start();
	?>
	<div class='<?=$atts['class']?>'>
		<video id="imac-video-portada" class="video-js video" no-controls muted autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/<?=$post->post_name?>/<?=$atts['name']?>.jpg" data-setup="{}">
			<source src="<?= get_template_directory_uri(); ?>/dist/videos/<?=$post->post_name?>/<?=$atts['name']?>.mp4" type='video/mp4'></source>
			<source src="<?= get_template_directory_uri(); ?>/dist/videos/<?=$post->post_name?>/<?=$atts['name']?>.webm" type='video/webm'></source>
			<p class="vjs-no-js">
				To view this video please enable JavaScript, and consider upgrading to a web browser that
				<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
			</p>
		</video>
	</div>
	<?php
	$html = ob_get_contents();
	ob_end_clean();
	return $html;
}
add_shortcode( 'project_html5_video', 'project_html5_video_func' );
