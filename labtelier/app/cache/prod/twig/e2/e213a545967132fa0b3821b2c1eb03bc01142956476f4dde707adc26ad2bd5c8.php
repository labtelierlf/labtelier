<?php

/* AccueilBundle:Default:index.html.twig */
class __TwigTemplate_ca6bd6790bf57feebdc0d93089899c1a295f3fcf9deefa97656d70bc4ed4d6ae extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("::base.html.twig", "AccueilBundle:Default:index.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "::base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_body($context, array $blocks = array())
    {
        // line 3
        echo "\t<div id=\"entete\">
\t\t<h1 style=\"margin-left:20px\">Page d'accueil <i class=\"icon-home\"></i></h1>
\t\t";
        // line 5
        $this->loadTemplate("AccueilBundle:Modules:menu.html.twig", "AccueilBundle:Default:index.html.twig", 5)->display($context);
        // line 6
        echo "\t\t";
        if ($this->env->getExtension('security')->isGranted("IS_AUTHENTICATED_FULLY")) {
            // line 7
            echo "\t\t\t";
            $this->loadTemplate("UtilisateursBundle:Modules:utilisateurConnecte.html.twig", "AccueilBundle:Default:index.html.twig", 7)->display($context);
            // line 8
            echo "\t\t";
        } else {
            // line 9
            echo "\t\t\t";
            $this->loadTemplate("UtilisateursBundle:Modules:utilisateurDeconnecte.html.twig", "AccueilBundle:Default:index.html.twig", 9)->display($context);
            // line 10
            echo "\t\t";
        }
        // line 11
        echo "\t\t";
        if ($this->env->getExtension('security')->isGranted("ROLE_ADMIN")) {
            // line 12
            echo "\t\t\t";
            $this->loadTemplate("AccueilBundle:Modules:formulaires.html.twig", "AccueilBundle:Default:index.html.twig", 12)->display($context);
            // line 13
            echo "\t\t";
        }
        // line 14
        echo "\t</div>
";
    }

    public function getTemplateName()
    {
        return "AccueilBundle:Default:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  61 => 14,  58 => 13,  55 => 12,  52 => 11,  49 => 10,  46 => 9,  43 => 8,  40 => 7,  37 => 6,  35 => 5,  31 => 3,  28 => 2,  11 => 1,);
    }
}
/* {% extends "::base.html.twig" %}*/
/* {% block body %}*/
/* 	<div id="entete">*/
/* 		<h1 style="margin-left:20px">Page d'accueil <i class="icon-home"></i></h1>*/
/* 		{% include 'AccueilBundle:Modules:menu.html.twig' %}*/
/* 		{% if is_granted('IS_AUTHENTICATED_FULLY') %}*/
/* 			{% include 'UtilisateursBundle:Modules:utilisateurConnecte.html.twig' %}*/
/* 		{% else %}*/
/* 			{% include 'UtilisateursBundle:Modules:utilisateurDeconnecte.html.twig' %}*/
/* 		{% endif %}*/
/* 		{% if is_granted('ROLE_ADMIN') %}*/
/* 			{% include 'AccueilBundle:Modules:formulaires.html.twig' %}*/
/* 		{% endif %}*/
/* 	</div>*/
/* {% endblock %}*/
