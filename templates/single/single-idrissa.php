<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/page', 'header'); ?>

	<div class="container-fluid container-showcase container-single first">
		<div class="container">
			<div class='imac-mockup video-holder col-xs-12'>
				<video id="imac-video-portada" class="video-js video" no-controls muted autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/idrissa/imac-video-portada.jpg" data-setup="{}">
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/idrissa/imac-video-portada.mp4" type='video/mp4'></source>
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/idrissa/imac-video-portada.webm" type='video/webm'></source>
					<p class="vjs-no-js">
						To view this video please enable JavaScript, and consider upgrading to a web browser that
						<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
					</p>
				</video>

			</div>

			<div class='col-sm-offset-2 col-sm-8 '>
				<h3>Una crida a l'acció</h3>
				<p>El projecte d'Idrissa és una campanya de conscienciació per fer possible un documental sobre la mort d'Idrissa. A inicis del 2017 un projecte encara viu.</p>
				<p>Amb el projecte d'Idrissa es busca una interacció amb el públic interpel·lant-lo amb campanyes recurrents i movent-lo a l'acció.</p>
				<p>Per a aconseguir això es fa servir una home dinàmica que, a més de presentar el projecte insta a l'acció amb formularis i últimes campanyes.</p>
			</div>
		</div>
	</div>

	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<h4>Una col·laboració amb Metromuster</h4>
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="text">
					<p>A més el projecte també busca que les persones visitants es subscriguin al butlletí (amb integració personalitzada amb Acumbamail) obtenint un percentatge de conversió molt per sobre dels estàndards gràcies a una campanya ben enfocada al públic objectiu.</p>
					<p>El més important però és que Idrissa és fruit de la col·laboració amb Metromuster que ha permès treballar amb grans professionals en un projecte de gran càrrega social:</p>
				</div>
			</div>
			<div class="col-sm-offset-3 col-sm-6 ">

				<div class="carousel slide" data-interval="false" data-ride="carousel" id="quote-carousel">
					<ol class="carousel-indicators">
						<li data-target="#quote-carousel" data-slide-to="0" class="active">
							<img class="img-responsive " src="/wp-content/uploads/2016/02/ahierro-300x300.jpg" alt="">
						</li>

					</ol>

					<!-- Carousel Slides / Quotes -->
					<div class="carousel-inner text-center ">
						<div class="item active ">
							<blockquote>
								<div>
									<div class="excerpt">
										És molt fàcil treballar amb el Miquel! En tot moment ha sigut fàcil contactar-lo i ha mostrat molta predisposició per fer-nos partíceps del projecte.
									</div>
									<small>
										Alba Hierro, <a href="http://www.ub.edu/jipi/">organitzadora de la Jornada d'Investigadors Predoctorals Interdisciplinària</a>
									</small>
								</div>
							</blockquote>
						</div>
					</div>
				</div>
			</div>

	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="text">
					<h4>Back end altament personalitzable</h4>
					<p>Com que en aquest projecte Metromuster comptava amb experiència en edició de webs s'ha fet servir X Theme aconseguint tant un alt grau de personalització sobre la plantilla escollida com la possibilitat per part de Metromuster d'editar la major part del contingut amb un editor visual intuïtiu:</p>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="image">
					<img class="fitted-image" src="<?= get_template_directory_uri(); ?>/dist/images/idrissa/backend.png">
				</div>
			</div>


		</div>
	</div>


<?php endwhile; ?>
