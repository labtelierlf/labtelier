<?php

/* PagesBundle:Modules:recherche.html.twig */
class __TwigTemplate_fcfd13ff2a734e7c684a62399ed06940dcb383cfede95ec2b1524d330fe1cbcf extends Twig_Template
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
        echo $this->env->getExtension('form')->renderer->searchAndRenderBlock($this->getAttribute((isset($context["form"]) ? $context["form"] : null), "recherche", array()), 'widget');
    }

    public function getTemplateName()
    {
        return "PagesBundle:Modules:recherche.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }
}
/* {{ form_widget(form.recherche) }}*/
