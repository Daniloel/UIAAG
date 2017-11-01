<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/home/ubuntu/workspace/templates/jl_learnmate_free/custom/config/default/layout.yaml',
    'modified' => 1489040701,
    'data' => [
        'version' => 2,
        'preset' => [
            'image' => 'gantry-admin://images/layouts/default.png',
            'name' => 'default',
            'timestamp' => 1486615513
        ],
        'layout' => [
            '/header/' => [
                0 => [
                    0 => 'logo-5575 15',
                    1 => 'logo-9608 20',
                    2 => 'spacer-3650 25',
                    3 => 'custom-2399 40'
                ]
            ],
            '/navigation/' => [
                0 => [
                    0 => 'menu-7668'
                ]
            ],
            '/above-slideshow/' => [
                0 => [
                    0 => 'position-position-8391 70',
                    1 => 'social-4869 30'
                ]
            ],
            '/slideshow/' => [
                0 => [
                    0 => 'position-module-2342'
                ]
            ],
            '/container-main/' => [
                0 => [
                    0 => [
                        'aside 25' => [
                            0 => [
                                0 => 'position-position-4734'
                            ]
                        ]
                    ],
                    1 => [
                        'mainbar 50' => [
                            0 => [
                                0 => 'system-content-1587'
                            ]
                        ]
                    ],
                    2 => [
                        'sidebar 25' => [
                            0 => [
                                0 => 'position-module-7391 50',
                                1 => 'position-position-3949 50'
                            ]
                        ]
                    ]
                ]
            ],
            '/footer/' => [
                0 => [
                    0 => 'custom-9609 25',
                    1 => 'custom-2410 17',
                    2 => 'custom-6963 17',
                    3 => 'custom-1285 17',
                    4 => 'custom-5076 24'
                ],
                1 => [
                    0 => 'branding-2819 70',
                    1 => 'social-3954 30'
                ],
                2 => [
                    0 => 'totop-1065'
                ]
            ],
            '/offcanvas/' => [
                0 => [
                    0 => 'mobile-menu-5697'
                ]
            ]
        ],
        'structure' => [
            'header' => [
                'attributes' => [
                    'boxed' => ''
                ]
            ],
            'navigation' => [
                'type' => 'section',
                'attributes' => [
                    'boxed' => '1',
                    'class' => ''
                ]
            ],
            'above-slideshow' => [
                'type' => 'section',
                'attributes' => [
                    'boxed' => ''
                ]
            ],
            'slideshow' => [
                'type' => 'section',
                'attributes' => [
                    'boxed' => ''
                ]
            ],
            'aside' => [
                'attributes' => [
                    'class' => ''
                ],
                'block' => [
                    'fixed' => '1'
                ]
            ],
            'mainbar' => [
                'type' => 'section',
                'subtype' => 'main'
            ],
            'sidebar' => [
                'type' => 'section',
                'subtype' => 'aside',
                'attributes' => [
                    'class' => ''
                ],
                'block' => [
                    'fixed' => '1'
                ]
            ],
            'container-main' => [
                'attributes' => [
                    'boxed' => ''
                ]
            ],
            'footer' => [
                'attributes' => [
                    'boxed' => '0',
                    'class' => ''
                ]
            ],
            'offcanvas' => [
                'attributes' => [
                    'boxed' => ''
                ]
            ]
        ],
        'content' => [
            'logo-5575' => [
                'title' => 'Logo / Image',
                'attributes' => [
                    'image' => 'gantry-media://logo.jpg'
                ],
                'block' => [
                    'fixed' => '1'
                ]
            ],
            'logo-9608' => [
                'title' => 'Logo / Image',
                'attributes' => [
                    'url' => 'images/edaulaa.png',
                    'image' => 'gantry-media://edaulaa.png',
                    'text' => 'Aula Ambiente'
                ]
            ],
            'custom-2399' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="top-menu">
    <ul class="nav menu">
        <li><a href="/index.php/aula/26-muestrarios/4-muestrarios">MUESTRARIOS</a></li>
        <li><a href="/index.php/aula/25-planetario/3-planetario">PLANETARIO</a></li>
        <li><a href="#"></a></li>
        <li><a href="/index.php/aula/27-eventos">EVENTOS</a></li>
        <li><a href="#"></a></li>
    </ul>
</div>
'
                ]
            ],
            'menu-7668' => [
                'attributes' => [
                    'menu' => 'mainmenu',
                    'base' => '101',
                    'renderTitles' => '1',
                    'hoverExpand' => '1',
                    'mobileTarget' => '1'
                ],
                'block' => [
                    'class' => 'position: fixed',
                    'variations' => 'shadow box-gradient'
                ]
            ],
            'position-position-8391' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'hot-event',
                    'chrome' => ''
                ]
            ],
            'social-4869' => [
                'attributes' => [
                    'items' => [
                        0 => [
                            'icon' => 'fa fa-twitter fa-fw',
                            'text' => '',
                            'link' => 'http://www.twitter.com/joomlead',
                            'name' => 'Twitter'
                        ],
                        1 => [
                            'icon' => 'fa fa-facebook fa-fw',
                            'text' => '',
                            'link' => 'http://www.facebook.com/joomlead',
                            'name' => 'Facebook'
                        ],
                        2 => [
                            'icon' => 'fa fa-google-plus fa-fw',
                            'text' => '',
                            'link' => 'https://plus.google.com/+joomlead',
                            'name' => 'Google+'
                        ],
                        3 => [
                            'icon' => 'fa fa-instagram',
                            'text' => '',
                            'link' => '#',
                            'name' => 'Instagram'
                        ]
                    ]
                ]
            ],
            'position-module-2342' => [
                'title' => 'Module Instance',
                'attributes' => [
                    'module_id' => '88',
                    'key' => 'module-instance'
                ],
                'block' => [
                    'fixed' => '1'
                ]
            ],
            'position-position-4734' => [
                'title' => 'Aside',
                'attributes' => [
                    'key' => 'logo'
                ]
            ],
            'position-module-7391' => [
                'title' => 'Module Instance',
                'attributes' => [
                    'module_id' => '16',
                    'key' => 'module-instance'
                ]
            ],
            'position-position-3949' => [
                'title' => 'Sidebar',
                'attributes' => [
                    'key' => 'sidebar'
                ]
            ],
            'custom-9609' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="jl-ft-about" style="text-align: left">
	<div class="jl-heading">
      <img src="images/edaulaa.png" alt="" />
  </div>
</div>'
                ]
            ],
            'custom-2410' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="jl-custom-ft uk-grid">
  <div class="jl-custom-title uk-width-1-1">
    <h3>INFORMACIÓN</h3>
  </div>

    <div class="jl-custom-link uk-width-1-1">
      <a href="#">¿Quiénes somos?</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="index.php/aula/resena-historica">Reseña Histórica</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Servicios y Galeria</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Investigaciones</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Mision / Vision </a>
    </div>

</div>'
                ]
            ],
            'custom-6963' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="jl-custom-ft uk-grid">
  <div class="jl-custom-title uk-width-1-1">
    <h3>ENLACES</h3>
  </div>

    <div class="jl-custom-link uk-width-1-1">
      <a href="http://www.unellez.edu.ve" target="_blank">Portal UNELLEZ</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="http://www.edudigital.unellez.edu.ve/portal_nuevo/" target="_blank">Portal SEEAD</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="http://www.pdvsa.com" target="_blank">PDVSA</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#" target="_blank">Centro Climatológico</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="http://www.pdv.com/lexico/" target="_blank">Código Geológico de Venezuela</a>
    </div>
</div>'
                ]
            ],
            'custom-1285' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="jl-custom-ft uk-grid">
  <div class="jl-custom-title uk-width-1-1">
    <br>
  </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Accesibilidad</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Legal</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Mapa del sitio</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Términos de uso</a>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <a href="#">Privacidad</a>
    </div>
</div>'
                ]
            ],
            'custom-5076' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="jl-custom-ft uk-grid">
  <div class="jl-custom-title uk-width-1-1">
    <h3>INFORMACIÓN DE CONTACTO</h3>
  </div>

    <div class="jl-custom-link uk-width-1-1">
      <p>Universidad Nacional Experimental de los Llanos Occidentales Ezequiel Zamora, en el Pabellón 11 de Barinas II. Av. 23 de Enero. Barinas, Edo Barinas</p>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <p>Tel: +58 414 5395328 </p>
    </div>
    <div class="jl-custom-link uk-width-1-1">
      <p>Email: aula.ambiente@gmail.com </p>
    </div>

</div>'
                ]
            ],
            'branding-2819' => [
                'attributes' => [
                    'content' => 'Copyright © 2017. Desarrollado por <a href="/index.php" title="Aula Ambiente" class="g-powered-by">Aula Ambiente - UNELLEZ<span class="hidden-tablet"></span></a>. Todos los derechos reservados.'
                ]
            ],
            'social-3954' => [
                'attributes' => [
                    'items' => [
                        0 => [
                            'icon' => 'fa fa-twitter fa-fw',
                            'text' => '',
                            'link' => 'http://www.twitter.com/joomlead',
                            'name' => 'Twitter'
                        ],
                        1 => [
                            'icon' => 'fa fa-facebook fa-fw',
                            'text' => '',
                            'link' => 'http://www.facebook.com/joomlead',
                            'name' => 'Facebook'
                        ],
                        2 => [
                            'icon' => 'fa fa-google-plus fa-fw',
                            'text' => '',
                            'link' => 'https://plus.google.com/+joomlead',
                            'name' => 'Google+'
                        ],
                        3 => [
                            'icon' => 'fa fa-instagram',
                            'text' => '',
                            'link' => '#',
                            'name' => 'Instagram'
                        ]
                    ]
                ]
            ],
            'totop-1065' => [
                'title' => 'To Top',
                'attributes' => [
                    'content' => ''
                ]
            ]
        ]
    ]
];
