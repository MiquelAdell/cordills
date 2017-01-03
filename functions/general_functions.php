<?php
function text_with_link($text, $link = null) {
	if($link){
		return "<a href='".$link."'>".$text."</a>";
	}
	else {
		return $text;
	}
}

function the_main_menu(){
	ob_start();
	?>
	<li class="menu-item"><a class="spi-link" data-target="#projecte-destacat" href="/projecte-destacat">Inici</a></li>
	<li class="menu-item"><a class="spi-link" data-target="#proces" href="/proces">Procés</a></li>
	<li class="menu-item"><a class="spi-link" data-target="#tecnologies" href="/tecnologies">Tecnologies</a></li>
	<li class="menu-item"><a class="spi-link" data-target="#fonaments" href="/fonaments">Fonaments</a></li>
	<li class="menu-item"><a href="/contacte/">Contacte</a></li>
	<?php
	$the_main_menu = ob_get_contents();
	ob_end_clean();
	return $the_main_menu;
}

function web_title(){
	?>
	<a href="<?= esc_url(home_url('/')); ?>">
		<div class="text"><span>Miquel</span> <span>Adell</span></div>
		<div class="logo"></div>
	</a>
	<h2 class="slogan">Programació web sense complexes</h2>
	<?php
}


function languages_list(){
    $languages = icl_get_languages('skip_missing=0&orderby=code');
    if(!empty($languages)){
        echo '<div class="language_list"><ul>';
        foreach($languages as $l){
            echo '<li>';
            if(!$l['active']) echo '<a href="'.$l['url'].'">';
            echo icl_disp_language($l['native_name']);
            if(!$l['active']) echo '</a>';
            echo '</li>';
        }
        echo '</ul></div>';
    }
}
