<?php

use Symfony\Component\Routing\Exception\MethodNotAllowedException;
use Symfony\Component\Routing\Exception\ResourceNotFoundException;
use Symfony\Component\Routing\RequestContext;

/**
 * appProdUrlMatcher.
 *
 * This class has been auto-generated
 * by the Symfony Routing Component.
 */
class appProdUrlMatcher extends Symfony\Bundle\FrameworkBundle\Routing\RedirectableUrlMatcher
{
    /**
     * Constructor.
     */
    public function __construct(RequestContext $context)
    {
        $this->context = $context;
    }

    public function match($pathinfo)
    {
        $allow = array();
        $pathinfo = rawurldecode($pathinfo);

        if (0 === strpos($pathinfo, '/a')) {
            if (0 === strpos($pathinfo, '/article')) {
                // pages_homepage
                if ($pathinfo === '/articles') {
                    return array (  '_controller' => 'Pages\\PagesBundle\\Controller\\DefaultController::indexAction',  '_route' => 'pages_homepage',);
                }

                // pages_page
                if (preg_match('#^/article/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'pages_page')), array (  '_controller' => 'Pages\\PagesBundle\\Controller\\DefaultController::pageAction',));
                }

            }

            if (0 === strpos($pathinfo, '/admin/articles')) {
                // admin_articles
                if (rtrim($pathinfo, '/') === '/admin/articles') {
                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'admin_articles');
                    }

                    return array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::indexAction',  '_route' => 'admin_articles',);
                }

                // admin_articles_show
                if (preg_match('#^/admin/articles/(?P<id>[^/]++)/show$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_articles_show')), array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::showAction',));
                }

                // admin_articles_new
                if ($pathinfo === '/admin/articles/new') {
                    return array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::newAction',  '_route' => 'admin_articles_new',);
                }

                // admin_articles_create
                if ($pathinfo === '/admin/articles/create') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_admin_articles_create;
                    }

                    return array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::createAction',  '_route' => 'admin_articles_create',);
                }
                not_admin_articles_create:

                // admin_articles_edit
                if (preg_match('#^/admin/articles/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_articles_edit')), array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::editAction',));
                }

                // admin_articles_update
                if (preg_match('#^/admin/articles/(?P<id>[^/]++)/update$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'PUT'))) {
                        $allow = array_merge($allow, array('POST', 'PUT'));
                        goto not_admin_articles_update;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_articles_update')), array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::updateAction',));
                }
                not_admin_articles_update:

                // admin_articles_delete
                if (preg_match('#^/admin/articles/(?P<id>[^/]++)/delete$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'DELETE'))) {
                        $allow = array_merge($allow, array('POST', 'DELETE'));
                        goto not_admin_articles_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_articles_delete')), array (  '_controller' => 'Pages\\PagesBundle\\Controller\\ArticleController::deleteAction',));
                }
                not_admin_articles_delete:

            }

        }

        if (0 === strpos($pathinfo, '/recherche')) {
            // recherche
            if ($pathinfo === '/recherche') {
                return array (  '_controller' => 'Pages\\PagesBundle\\Controller\\DefaultController::rechercheAction',  '_route' => 'recherche',);
            }

            // recherche_pages
            if ($pathinfo === '/recherchePages') {
                return array (  '_controller' => 'Pages\\PagesBundle\\Controller\\DefaultController::recherchePagesAction',  '_route' => 'recherche_pages',);
            }

        }

        if (0 === strpos($pathinfo, '/produit')) {
            // produits_homepage
            if ($pathinfo === '/produits') {
                return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitsController::indexAction',  '_route' => 'produits_homepage',);
            }

            // produits_infos
            if (preg_match('#^/produit/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                return $this->mergeDefaults(array_replace($matches, array('_route' => 'produits_infos')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitsController::produitAction',));
            }

        }

        // categorieProduits
        if (0 === strpos($pathinfo, '/categorie') && preg_match('#^/categorie/(?P<categorie>[^/]++)$#s', $pathinfo, $matches)) {
            return $this->mergeDefaults(array_replace($matches, array('_route' => 'categorieProduits')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategoriesController::categorieAction',));
        }

        if (0 === strpos($pathinfo, '/admin')) {
            if (0 === strpos($pathinfo, '/admin/produits')) {
                // admin_produits
                if (rtrim($pathinfo, '/') === '/admin/produits') {
                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'admin_produits');
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::indexAction',  '_route' => 'admin_produits',);
                }

                // admin_produits_show
                if (preg_match('#^/admin/produits/(?P<id>[^/]++)/show$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_produits_show')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::showAction',));
                }

                // admin_produits_new
                if ($pathinfo === '/admin/produits/new') {
                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::newAction',  '_route' => 'admin_produits_new',);
                }

                // admin_produits_create
                if ($pathinfo === '/admin/produits/create') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_admin_produits_create;
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::createAction',  '_route' => 'admin_produits_create',);
                }
                not_admin_produits_create:

                // admin_produits_edit
                if (preg_match('#^/admin/produits/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_produits_edit')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::editAction',));
                }

                // admin_produits_update
                if (preg_match('#^/admin/produits/(?P<id>[^/]++)/update$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'PUT'))) {
                        $allow = array_merge($allow, array('POST', 'PUT'));
                        goto not_admin_produits_update;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_produits_update')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::updateAction',));
                }
                not_admin_produits_update:

                // admin_produits_delete
                if (preg_match('#^/admin/produits/(?P<id>[^/]++)/delete$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'DELETE'))) {
                        $allow = array_merge($allow, array('POST', 'DELETE'));
                        goto not_admin_produits_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_produits_delete')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\ProduitController::deleteAction',));
                }
                not_admin_produits_delete:

            }

            if (0 === strpos($pathinfo, '/admin/categories')) {
                // admin_categories
                if (rtrim($pathinfo, '/') === '/admin/categories') {
                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'admin_categories');
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::indexAction',  '_route' => 'admin_categories',);
                }

                // admin_categories_show
                if (preg_match('#^/admin/categories/(?P<id>[^/]++)/show$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_categories_show')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::showAction',));
                }

                // admin_categories_new
                if ($pathinfo === '/admin/categories/new') {
                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::newAction',  '_route' => 'admin_categories_new',);
                }

                // admin_categories_create
                if ($pathinfo === '/admin/categories/create') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_admin_categories_create;
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::createAction',  '_route' => 'admin_categories_create',);
                }
                not_admin_categories_create:

                // admin_categories_edit
                if (preg_match('#^/admin/categories/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_categories_edit')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::editAction',));
                }

                // admin_categories_update
                if (preg_match('#^/admin/categories/(?P<id>[^/]++)/update$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'PUT'))) {
                        $allow = array_merge($allow, array('POST', 'PUT'));
                        goto not_admin_categories_update;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_categories_update')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::updateAction',));
                }
                not_admin_categories_update:

                // admin_categories_delete
                if (preg_match('#^/admin/categories/(?P<id>[^/]++)/delete$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'DELETE'))) {
                        $allow = array_merge($allow, array('POST', 'DELETE'));
                        goto not_admin_categories_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_categories_delete')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CategorieController::deleteAction',));
                }
                not_admin_categories_delete:

            }

            if (0 === strpos($pathinfo, '/admin/tva')) {
                // admin_tva
                if (rtrim($pathinfo, '/') === '/admin/tva') {
                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'admin_tva');
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::indexAction',  '_route' => 'admin_tva',);
                }

                // admin_tva_show
                if (preg_match('#^/admin/tva/(?P<id>[^/]++)/show$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_tva_show')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::showAction',));
                }

                // admin_tva_new
                if ($pathinfo === '/admin/tva/new') {
                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::newAction',  '_route' => 'admin_tva_new',);
                }

                // admin_tva_create
                if ($pathinfo === '/admin/tva/create') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_admin_tva_create;
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::createAction',  '_route' => 'admin_tva_create',);
                }
                not_admin_tva_create:

                // admin_tva_edit
                if (preg_match('#^/admin/tva/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_tva_edit')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::editAction',));
                }

                // admin_tva_update
                if (preg_match('#^/admin/tva/(?P<id>[^/]++)/update$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'PUT'))) {
                        $allow = array_merge($allow, array('POST', 'PUT'));
                        goto not_admin_tva_update;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_tva_update')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::updateAction',));
                }
                not_admin_tva_update:

                // admin_tva_delete
                if (preg_match('#^/admin/tva/(?P<id>[^/]++)/delete$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'DELETE'))) {
                        $allow = array_merge($allow, array('POST', 'DELETE'));
                        goto not_admin_tva_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_tva_delete')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\TvaController::deleteAction',));
                }
                not_admin_tva_delete:

            }

            if (0 === strpos($pathinfo, '/admin/ateliers')) {
                // admin_ateliers
                if (rtrim($pathinfo, '/') === '/admin/ateliers') {
                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'admin_ateliers');
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::indexAction',  '_route' => 'admin_ateliers',);
                }

                // admin_ateliers_show
                if (preg_match('#^/admin/ateliers/(?P<id>[^/]++)/show$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_ateliers_show')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::showAction',));
                }

                // admin_ateliers_new
                if ($pathinfo === '/admin/ateliers/new') {
                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::newAction',  '_route' => 'admin_ateliers_new',);
                }

                // admin_ateliers_create
                if ($pathinfo === '/admin/ateliers/create') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_admin_ateliers_create;
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::createAction',  '_route' => 'admin_ateliers_create',);
                }
                not_admin_ateliers_create:

                // admin_ateliers_edit
                if (preg_match('#^/admin/ateliers/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_ateliers_edit')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::editAction',));
                }

                // admin_ateliers_update
                if (preg_match('#^/admin/ateliers/(?P<id>[^/]++)/update$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'PUT'))) {
                        $allow = array_merge($allow, array('POST', 'PUT'));
                        goto not_admin_ateliers_update;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_ateliers_update')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::updateAction',));
                }
                not_admin_ateliers_update:

                // admin_ateliers_delete
                if (preg_match('#^/admin/ateliers/(?P<id>[^/]++)/delete$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'DELETE'))) {
                        $allow = array_merge($allow, array('POST', 'DELETE'));
                        goto not_admin_ateliers_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_ateliers_delete')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\AtelierController::deleteAction',));
                }
                not_admin_ateliers_delete:

            }

            if (0 === strpos($pathinfo, '/admin/postes')) {
                // admin_postes
                if (rtrim($pathinfo, '/') === '/admin/postes') {
                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'admin_postes');
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::indexAction',  '_route' => 'admin_postes',);
                }

                // admin_postes_show
                if (preg_match('#^/admin/postes/(?P<id>[^/]++)/show$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_postes_show')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::showAction',));
                }

                // admin_postes_new
                if ($pathinfo === '/admin/postes/new') {
                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::newAction',  '_route' => 'admin_postes_new',);
                }

                // admin_postes_create
                if ($pathinfo === '/admin/postes/create') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_admin_postes_create;
                    }

                    return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::createAction',  '_route' => 'admin_postes_create',);
                }
                not_admin_postes_create:

                // admin_postes_edit
                if (preg_match('#^/admin/postes/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_postes_edit')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::editAction',));
                }

                // admin_postes_update
                if (preg_match('#^/admin/postes/(?P<id>[^/]++)/update$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'PUT'))) {
                        $allow = array_merge($allow, array('POST', 'PUT'));
                        goto not_admin_postes_update;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_postes_update')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::updateAction',));
                }
                not_admin_postes_update:

                // admin_postes_delete
                if (preg_match('#^/admin/postes/(?P<id>[^/]++)/delete$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('POST', 'DELETE'))) {
                        $allow = array_merge($allow, array('POST', 'DELETE'));
                        goto not_admin_postes_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'admin_postes_delete')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PosteController::deleteAction',));
                }
                not_admin_postes_delete:

            }

        }

        // produits_calendrier
        if ($pathinfo === '/calendrier') {
            return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CalendrierController::indexAction',  '_route' => 'produits_calendrier',);
        }

        if (0 === strpos($pathinfo, '/panier')) {
            // produits_panier
            if ($pathinfo === '/panier') {
                return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PanierController::panierAction',  '_route' => 'produits_panier',);
            }

            // panier_ajouter
            if (0 === strpos($pathinfo, '/panier/ajouter') && preg_match('#^/panier/ajouter/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                return $this->mergeDefaults(array_replace($matches, array('_route' => 'panier_ajouter')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PanierController::ajouterAction',));
            }

            // panier_supprimer
            if (0 === strpos($pathinfo, '/panier/supprimer') && preg_match('#^/panier/supprimer/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                return $this->mergeDefaults(array_replace($matches, array('_route' => 'panier_supprimer')), array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PanierController::supprimerAction',));
            }

        }

        // produits_facture
        if ($pathinfo === '/facture') {
            return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\PanierController::factureAction',  '_route' => 'produits_facture',);
        }

        if (0 === strpos($pathinfo, '/commande')) {
            // produits_commande
            if ($pathinfo === '/commande') {
                return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CommandeController::indexAction',  '_route' => 'produits_commande',);
            }

            // commande_ajouter
            if ($pathinfo === '/commande/ajouter') {
                return array (  '_controller' => 'Produits\\ProduitsBundle\\Controller\\CommandeController::ajouterAction',  '_route' => 'commande_ajouter',);
            }

        }

        // accueil_homepage
        if (rtrim($pathinfo, '/') === '') {
            if (substr($pathinfo, -1) !== '/') {
                return $this->redirect($pathinfo.'/', 'accueil_homepage');
            }

            return array (  '_controller' => 'Accueil\\AccueilBundle\\Controller\\DefaultController::indexAction',  '_route' => 'accueil_homepage',);
        }

        // membre_homepage
        if ($pathinfo === '/membre') {
            return array (  '_controller' => 'Accueil\\AccueilBundle\\Controller\\MembreController::membreAction',  '_route' => 'membre_homepage',);
        }

        if (0 === strpos($pathinfo, '/log')) {
            if (0 === strpos($pathinfo, '/login')) {
                // fos_user_security_login
                if ($pathinfo === '/login') {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_fos_user_security_login;
                    }

                    return array (  '_controller' => 'FOS\\UserBundle\\Controller\\SecurityController::loginAction',  '_route' => 'fos_user_security_login',);
                }
                not_fos_user_security_login:

                // fos_user_security_check
                if ($pathinfo === '/login_check') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_fos_user_security_check;
                    }

                    return array (  '_controller' => 'FOS\\UserBundle\\Controller\\SecurityController::checkAction',  '_route' => 'fos_user_security_check',);
                }
                not_fos_user_security_check:

            }

            // fos_user_security_logout
            if ($pathinfo === '/logout') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_fos_user_security_logout;
                }

                return array (  '_controller' => 'FOS\\UserBundle\\Controller\\SecurityController::logoutAction',  '_route' => 'fos_user_security_logout',);
            }
            not_fos_user_security_logout:

        }

        if (0 === strpos($pathinfo, '/profile')) {
            // fos_user_profile_show
            if (rtrim($pathinfo, '/') === '/profile') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_fos_user_profile_show;
                }

                if (substr($pathinfo, -1) !== '/') {
                    return $this->redirect($pathinfo.'/', 'fos_user_profile_show');
                }

                return array (  '_controller' => 'FOS\\UserBundle\\Controller\\ProfileController::showAction',  '_route' => 'fos_user_profile_show',);
            }
            not_fos_user_profile_show:

            // fos_user_profile_edit
            if ($pathinfo === '/profile/edit') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_fos_user_profile_edit;
                }

                return array (  '_controller' => 'FOS\\UserBundle\\Controller\\ProfileController::editAction',  '_route' => 'fos_user_profile_edit',);
            }
            not_fos_user_profile_edit:

        }

        if (0 === strpos($pathinfo, '/re')) {
            if (0 === strpos($pathinfo, '/register')) {
                // fos_user_registration_register
                if (rtrim($pathinfo, '/') === '/register') {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_fos_user_registration_register;
                    }

                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'fos_user_registration_register');
                    }

                    return array (  '_controller' => 'FOS\\UserBundle\\Controller\\RegistrationController::registerAction',  '_route' => 'fos_user_registration_register',);
                }
                not_fos_user_registration_register:

                if (0 === strpos($pathinfo, '/register/c')) {
                    // fos_user_registration_check_email
                    if ($pathinfo === '/register/check-email') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_fos_user_registration_check_email;
                        }

                        return array (  '_controller' => 'FOS\\UserBundle\\Controller\\RegistrationController::checkEmailAction',  '_route' => 'fos_user_registration_check_email',);
                    }
                    not_fos_user_registration_check_email:

                    if (0 === strpos($pathinfo, '/register/confirm')) {
                        // fos_user_registration_confirm
                        if (preg_match('#^/register/confirm/(?P<token>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_fos_user_registration_confirm;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'fos_user_registration_confirm')), array (  '_controller' => 'FOS\\UserBundle\\Controller\\RegistrationController::confirmAction',));
                        }
                        not_fos_user_registration_confirm:

                        // fos_user_registration_confirmed
                        if ($pathinfo === '/register/confirmed') {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_fos_user_registration_confirmed;
                            }

                            return array (  '_controller' => 'FOS\\UserBundle\\Controller\\RegistrationController::confirmedAction',  '_route' => 'fos_user_registration_confirmed',);
                        }
                        not_fos_user_registration_confirmed:

                    }

                }

            }

            if (0 === strpos($pathinfo, '/resetting')) {
                // fos_user_resetting_request
                if ($pathinfo === '/resetting/request') {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_fos_user_resetting_request;
                    }

                    return array (  '_controller' => 'FOS\\UserBundle\\Controller\\ResettingController::requestAction',  '_route' => 'fos_user_resetting_request',);
                }
                not_fos_user_resetting_request:

                // fos_user_resetting_send_email
                if ($pathinfo === '/resetting/send-email') {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_fos_user_resetting_send_email;
                    }

                    return array (  '_controller' => 'FOS\\UserBundle\\Controller\\ResettingController::sendEmailAction',  '_route' => 'fos_user_resetting_send_email',);
                }
                not_fos_user_resetting_send_email:

                // fos_user_resetting_check_email
                if ($pathinfo === '/resetting/check-email') {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_fos_user_resetting_check_email;
                    }

                    return array (  '_controller' => 'FOS\\UserBundle\\Controller\\ResettingController::checkEmailAction',  '_route' => 'fos_user_resetting_check_email',);
                }
                not_fos_user_resetting_check_email:

                // fos_user_resetting_reset
                if (0 === strpos($pathinfo, '/resetting/reset') && preg_match('#^/resetting/reset/(?P<token>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_fos_user_resetting_reset;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'fos_user_resetting_reset')), array (  '_controller' => 'FOS\\UserBundle\\Controller\\ResettingController::resetAction',));
                }
                not_fos_user_resetting_reset:

            }

        }

        // fos_user_change_password
        if ($pathinfo === '/profile/change-password') {
            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                goto not_fos_user_change_password;
            }

            return array (  '_controller' => 'FOS\\UserBundle\\Controller\\ChangePasswordController::changePasswordAction',  '_route' => 'fos_user_change_password',);
        }
        not_fos_user_change_password:

        throw 0 < count($allow) ? new MethodNotAllowedException(array_unique($allow)) : new ResourceNotFoundException();
    }
}
