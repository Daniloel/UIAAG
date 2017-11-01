<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/home/ubuntu/workspace/templates/jl_learnmate_free/blueprints/styles/font.yaml',
    'modified' => 1486962605,
    'data' => [
        'name' => 'Font Families',
        'description' => 'Font families for the Learnmate theme',
        'type' => 'core',
        'form' => [
            'fields' => [
                'family-default' => [
                    'type' => 'input.fonts',
                    'label' => 'Body Font',
                    'default' => 'family=Fira+Sans'
                ],
                'family-title' => [
                    'type' => 'input.fonts',
                    'label' => 'Title Font',
                    'default' => 'family=Fira+Sans:700'
                ]
            ]
        ]
    ]
];
