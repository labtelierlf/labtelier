<?php

namespace Produits\ProduitsBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class CategoriesController extends Controller
{
    public function menuAction()
    {
        $em = $this->getDoctrine()->getManager();
        $categories = $em->getRepository('ProduitsBundle:Categorie')->findAll();
        
        return $this->render('ProduitsBundle:Modules:categories.html.twig', array(
        	'categories' => $categories
        ));
    }
    public function categorieAction($categorie) {
    	
    	$session = $this->getRequest()->getSession();
        if($session->has('panier')) {
        	$panier = $session->get('panier');
        }
        else {
        	$panier = false;
        }
    	
    	$em = $this->getDoctrine()->getManager();
        $recupereProduits = $em->getRepository('ProduitsBundle:Produit')->parCategorie($categorie);
        
        $produits = $this->get('knp_paginator')->paginate($recupereProduits,$this->get('request')->query->get('page', 1),1);
    	
    	return $this->render('ProduitsBundle:Default:categorieProduits.html.twig', array(
        	'produits' => $produits,
        	'categorie' => $categorie,
        	'panier' => $panier
        ));
    }
}