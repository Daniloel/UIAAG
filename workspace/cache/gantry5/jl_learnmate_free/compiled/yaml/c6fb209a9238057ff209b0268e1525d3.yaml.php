<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/home/ubuntu/workspace/templates/jl_learnmate_free/blueprints/styles/header.yaml',
    'modified' => 1486962606,
    'data' => [
        'name' => 'Header Styles',
        'description' => 'Header section styles for the Learnmate theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#ffffff'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#eceeef'
                ]
            ]
        ]
    ]
];
