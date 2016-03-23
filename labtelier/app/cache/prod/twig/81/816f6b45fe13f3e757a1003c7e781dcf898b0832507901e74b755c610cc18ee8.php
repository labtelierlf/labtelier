<?php

/* AccueilBundle:Modules:menu.html.twig */
class __TwigTemplate_1c108c77d0f5abdf62436ecf6412cdc3c7873293fa982d61a2a6398ba227d66c extends Twig_Template
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
        echo "<div class=\"well\">
\t<ul class=\"nav nav-list\">
\t\t<li class=\"nav-header\">NAVIGATION</li>
\t\t<li>
\t\t\t<a href=\"";
        // line 5
        echo $this->env->getExtension('routing')->getPath("accueil_homepage");
        echo "\">Accueil</a>
\t\t</li>
\t\t<li>
\t\t\t<a href=\"";
        // line 8
        echo $this->env->getExtension('routing')->getPath("pages_homepage");
        echo "\">Articles</a>
\t\t</li>
\t\t<li>
\t\t\t<a href=\"";
        // line 11
        echo $this->env->getExtension('routing')->getPath("produits_homepage");
        echo "\">Produits</a>
\t\t</li>
\t</ul>
</div>";
    }

    public function getTemplateName()
    {
        return "AccueilBundle:Modules:menu.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  37 => 11,  31 => 8,  25 => 5,  19 => 1,);
    }
}
/* <div class="well">*/
/* 	<ul class="nav nav-list">*/
/* 		<li class="nav-header">NAVIGATION</li>*/
/* 		<li>*/
/* 			<a href="{{ path('accueil_homepage') }}">Accueil</a>*/
/* 		</li>*/
/* 		<li>*/
/* 			<a href="{{ path('pages_homepage') }}">Articles</a>*/
/* 		</li>*/
/* 		<li>*/
/* 			<a href="{{ path('produits_homepage') }}">Produits</a>*/
/* 		</li>*/
/* 	</ul>*/
/* </div>*/
