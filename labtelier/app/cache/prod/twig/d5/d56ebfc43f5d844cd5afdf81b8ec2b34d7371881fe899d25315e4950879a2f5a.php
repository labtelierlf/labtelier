<?php

/* UtilisateursBundle:Modules:utilisateurDeconnecte.html.twig */
class __TwigTemplate_d96234a6d7b3978aeb70564983d4988590ca4890965e5eea3e414f031c269551 extends Twig_Template
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
\t\t<li class=\"nav-header\">UTILISATEUR</li>
\t\t<li>
\t\t\t<a href=\"";
        // line 5
        echo $this->env->getExtension('routing')->getPath("fos_user_security_login");
        echo "\">Se connecter</a>
\t\t</li>
\t\t<li>
\t\t\t<a href=\"";
        // line 8
        echo $this->env->getExtension('routing')->getPath("fos_user_registration_register");
        echo "\">S'inscrire</a>
\t\t</li>
\t</ul>
</div>";
    }

    public function getTemplateName()
    {
        return "UtilisateursBundle:Modules:utilisateurDeconnecte.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  31 => 8,  25 => 5,  19 => 1,);
    }
}
/* <div class="well">*/
/* 	<ul class="nav nav-list">*/
/* 		<li class="nav-header">UTILISATEUR</li>*/
/* 		<li>*/
/* 			<a href="{{ path('fos_user_security_login') }}">Se connecter</a>*/
/* 		</li>*/
/* 		<li>*/
/* 			<a href="{{ path('fos_user_registration_register') }}">S'inscrire</a>*/
/* 		</li>*/
/* 	</ul>*/
/* </div>*/
