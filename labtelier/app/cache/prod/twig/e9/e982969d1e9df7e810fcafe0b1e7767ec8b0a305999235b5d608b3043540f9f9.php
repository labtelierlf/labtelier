<?php

/* ::base.html.twig */
class __TwigTemplate_c13a160ad5c2654e213a5729297a08c0b8bdbf671626f1f2cbd6ccc68f819a69 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'stylesheets' => array($this, 'block_stylesheets'),
            'body' => array($this, 'block_body'),
            'javascripts' => array($this, 'block_javascripts'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html>
\t<head>
\t\t<meta charset=\"UTF-8\"/>
\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>
\t\t<link rel=\"stylesheet\" href=\"";
        // line 6
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("css/bootstrap.css"), "html", null, true);
        echo "\"/>
\t\t<link rel=\"stylesheet\" href=\"";
        // line 7
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("css/bootstrap-responsive.css"), "html", null, true);
        echo "\"/>
\t\t<link rel=\"stylesheet\" href=\"";
        // line 8
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("css/style.css"), "html", null, true);
        echo "\"/>
\t\t<link rel=\"stylesheet\" href=\"";
        // line 9
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("css/font-awesome.css"), "html", null, true);
        echo "\"/>
        <title>";
        // line 10
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
        ";
        // line 11
        $this->displayBlock('stylesheets', $context, $blocks);
        // line 12
        echo "        <link rel=\"icon\" type=\"image/x-icon\" href=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("favicon.ico"), "html", null, true);
        echo "\" />
    </head>
    <body>
    \t<div id=\"header\" class=\"navbar navbar-inverse navbar-fixed-top\">
\t\t\t<div class=\"navbar-inner\">
\t\t\t\t<div class=\"container\">
\t\t\t\t\t<button class=\"btn btn-navbar\" data-target=\".nav-collapse\" data-toggle=\"collapse\" type=\"button\">
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t</button>
\t\t\t\t\t<a class=\"brand\" href=\"";
        // line 23
        echo $this->env->getExtension('routing')->getPath("accueil_homepage");
        echo "\">L'Atelier 16<br/>production</a>
\t\t\t\t\t<div class=\"nav-collapse collapse\">
\t\t\t\t\t\t<form id=\"formRecherche\" class=\"navbar-form form-search pull-right\" action=\"";
        // line 25
        echo $this->env->getExtension('routing')->getPath("recherche_pages");
        echo "\" method=\"post\">
\t\t\t\t\t\t\t<div class=\"entretoise\"></div><!--
\t\t\t\t\t\t\t-->";
        // line 27
        echo $this->env->getExtension('actions')->renderUri($this->env->getExtension('http_kernel')->controller("PagesBundle:Default:recherche"), array());
        echo "<!--
\t\t\t\t\t\t\t--><button id=\"boutonRecherche\"><i class=\"icon-search\"></i></button>
\t\t\t\t\t\t</form>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
        ";
        // line 34
        $this->displayBlock('body', $context, $blocks);
        // line 35
        echo "\t\t<script src=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("js/jquery-1.10.0.min.js"), "html", null, true);
        echo "\"></script>
\t\t<script src=\"";
        // line 36
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("js/bootstrap.js"), "html", null, true);
        echo "\"></script>
\t\t";
        // line 37
        $this->displayBlock('javascripts', $context, $blocks);
        // line 38
        echo "\t</body>
</html>";
    }

    // line 10
    public function block_title($context, array $blocks = array())
    {
        echo "Bienvenue";
    }

    // line 11
    public function block_stylesheets($context, array $blocks = array())
    {
    }

    // line 34
    public function block_body($context, array $blocks = array())
    {
    }

    // line 37
    public function block_javascripts($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "::base.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  121 => 37,  116 => 34,  111 => 11,  105 => 10,  100 => 38,  98 => 37,  94 => 36,  89 => 35,  87 => 34,  77 => 27,  72 => 25,  67 => 23,  52 => 12,  50 => 11,  46 => 10,  42 => 9,  38 => 8,  34 => 7,  30 => 6,  23 => 1,);
    }
}
/* <!DOCTYPE html>*/
/* <html>*/
/* 	<head>*/
/* 		<meta charset="UTF-8"/>*/
/* 		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>*/
/* 		<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}"/>*/
/* 		<link rel="stylesheet" href="{{ asset('css/bootstrap-responsive.css') }}"/>*/
/* 		<link rel="stylesheet" href="{{ asset('css/style.css') }}"/>*/
/* 		<link rel="stylesheet" href="{{ asset('css/font-awesome.css') }}"/>*/
/*         <title>{% block title %}Bienvenue{% endblock %}</title>*/
/*         {% block stylesheets %}{% endblock %}*/
/*         <link rel="icon" type="image/x-icon" href="{{ asset('favicon.ico') }}" />*/
/*     </head>*/
/*     <body>*/
/*     	<div id="header" class="navbar navbar-inverse navbar-fixed-top">*/
/* 			<div class="navbar-inner">*/
/* 				<div class="container">*/
/* 					<button class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse" type="button">*/
/* 						<span class="icon-bar"></span>*/
/* 						<span class="icon-bar"></span>*/
/* 						<span class="icon-bar"></span>*/
/* 					</button>*/
/* 					<a class="brand" href="{{ path('accueil_homepage') }}">L'Atelier 16<br/>production</a>*/
/* 					<div class="nav-collapse collapse">*/
/* 						<form id="formRecherche" class="navbar-form form-search pull-right" action="{{ path('recherche_pages') }}" method="post">*/
/* 							<div class="entretoise"></div><!--*/
/* 							-->{% render(controller('PagesBundle:Default:recherche')) %}<!--*/
/* 							--><button id="boutonRecherche"><i class="icon-search"></i></button>*/
/* 						</form>*/
/* 					</div>*/
/* 				</div>*/
/* 			</div>*/
/* 		</div>*/
/*         {% block body %}{% endblock %}*/
/* 		<script src="{{ asset('js/jquery-1.10.0.min.js') }}"></script>*/
/* 		<script src="{{ asset('js/bootstrap.js') }}"></script>*/
/* 		{% block javascripts %}{% endblock %}*/
/* 	</body>*/
/* </html>*/
