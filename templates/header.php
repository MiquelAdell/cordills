<header class="banner nav-primary-container">
  <div class="container section-container">
    <div class="row">
      <a class="brand col-xs-4 text-center" href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>


        <nav class="nav-primary col-xs-8 text-center">
          <div class="menu-main-menu-container">
            <ul id="menu-main-menu" class="nav">
              <li class="ajax menu-item"><a href="/presentacio/">Projecte destacat</a></li>
              <li class="ajax menu-item"><a href="/proces/">Procés</a></li>
              <li class="ajax menu-item"><a href="/tecnologies/">Tecnologies</a></li>
              <li class="ajax menu-item"><a href="/fonaments/">Fonaments</a></li>
              <li class="menu-item"><a href="/contacte/">Contacte</a></li>
            </ul>
          </div>
        </nav>

        <button class="hamburger hamburger--spin" type="button">
          <span class="hamburger-box">
            <span class="hamburger-inner"></span>
          </span>
        </button>
    </div>
</header>
