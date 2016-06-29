<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/page', 'header'); ?>

	<div class="container-fluid container-showcase dark">
		<div class="container">
			<div class='imac-mockup video-holder col-xs-12'>
				<video id="imac-video-portada" class="video-js video" no-controls autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.jpg" data-setup="{}">
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.mp4" type='video/mp4'></source>
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.webm" type='video/webm'></source>
					<p class="vjs-no-js">
						To view this video please enable JavaScript, and consider upgrading to a web browser that
						<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
					</p>
				</video>
			</div>

			<h3>Un projecte d'alt impacte visual per a causar una gran impressió</h3>
		</div>
	</div>

	<div class="container-fluid container-showcase clear">
		<div class="row">
			<div class="col-xs-12 col-sm-5 text-holder">
				<h4>Aquest text hauria d'anar alineat tant vertical com horitzontalment però ya sabes, costa molt. Tempora nova illis habentia caelo mollia gravitate fossae. Feras di?</h4>
			</div>
			<div class="col-xs-12 col-sm-7">
				<img class="fitted-image imac" src="<?= get_template_directory_uri(); ?>/dist/images/memoria-viva/imac1.png">
			</div>
		</div>

	</div>

	<div class="container-fluid container-showcase dark">
		<div class="row">
			<div class="col-xs-12 col-sm-7">
				<img class="fitted-image" src="<?= get_template_directory_uri(); ?>/dist/images/memoria-viva/mosaic1.png">
			</div>
			<div class="col-xs-12 col-sm-5 text-holder">
				<h4>Tempora nova illis habentia caelo mollia gravitate fossae. Feras di? Cornua nam habitandae aquae hanc. Temperiemque nam ligavit: terris undas.</h4>
			</div>
		</div>
	</div>

	<div class="container-fluid container-showcase">
		<div class="row">
			<div class="col-xs-12">
				<div class='chrome-mockup video-holder col-xs-12'>
					<video id="chrome-video-el-projecte" class="video-js video" no-controls autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/chrome-video-el-projecte.jpg" data-setup="{}">
						<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/chrome-video-el-projecte.mp4" type='video/mp4'></source>
						<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/chrome-video-el-projecte.webm" type='video/webm'></source>
						<p class="vjs-no-js">
							To view this video please enable JavaScript, and consider upgrading to a web browser that
							<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
						</p>
					</video>
				</div>
			</div>

			<div class="container">
				<div class="col-xs-12 text-center">
					<h4>Agitabilis solum tumescere vis campoque induit spisso locum</h4>
					<p>Tempora nova illis habentia caelo mollia gravitate fossae. Feras di? Cornua nam habitandae aquae hanc. Temperiemque nam ligavit: terris undas. Praecipites tanto colebat! Obstabatque frigore tenent parte fuerat rerum oppida pugnabant terram. Sectamque umentia omnia et sublime. Ita media diremit cognati fossae ponderibus.</p>
					<p><strong>Pots veure la web <a href="http://sabadell.memoriaviva.cat">aquí</a></strong></p>
				</div>

				<div class="col-xs-12 text-center">
					<div class='call_to_action'>
						<div class='lead'>
							Si vols una pàgina web com aquesta…
						</div>
						<div class="text-center">
							<a href="/contacte" class="btn btn-default" role="button">Contacta'm</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<?php endwhile; ?>
