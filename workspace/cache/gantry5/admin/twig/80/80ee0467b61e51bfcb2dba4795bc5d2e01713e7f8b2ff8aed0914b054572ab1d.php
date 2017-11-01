<?php

/* @gantry-admin/partials/php_unsupported.html.twig */
class __TwigTemplate_af42e8e2b5ea97494958aaef2fb9004f38f443f34f37e849e782480984fb1619 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $context["php_version"] = twig_constant("PHP_VERSION");
        // line 2
        echo "
";
        // line 3
        if ((is_string($__internal_b0263134231c41c7b581243ac9fff7d65951fb15d0f6051fd47ef2bd32a0b515 = (isset($context["php_version"]) ? $context["php_version"] : null)) && is_string($__internal_070343f95baa46aeb4c49de40fc4962e261a6ca60b2078da7dca0efb795c7803 = "5.4") && ('' === $__internal_070343f95baa46aeb4c49de40fc4962e261a6ca60b2078da7dca0efb795c7803 || 0 === strpos($__internal_b0263134231c41c7b581243ac9fff7d65951fb15d0f6051fd47ef2bd32a0b515, $__internal_070343f95baa46aeb4c49de40fc4962e261a6ca60b2078da7dca0efb795c7803)))) {
            // line 4
            echo "<div class=\"g-grid\">
    <div class=\"g-block alert alert-warning g-php-outdated\">
        ";
            // line 6
            echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->transFilter("GANTRY5_PLATFORM_PHP54_WARNING", (isset($context["php_version"]) ? $context["php_version"] : null));
            echo "
    </div>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@gantry-admin/partials/php_unsupported.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  30 => 6,  26 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@gantry-admin/partials/php_unsupported.html.twig", "/home/ubuntu/workspace/administrator/components/com_gantry5/templates/partials/php_unsupported.html.twig");
    }
}
