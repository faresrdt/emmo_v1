<?php

class Renderer{

    public static function render(string $pageName, array $variables = [])
    {
        extract($variables);
        ob_start();
        require('View/' . $pageName . '.phtml');
        $pageContent = ob_get_clean();
    
        require('View/layout/layout.phtml');
    }
}