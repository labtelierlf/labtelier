<?php

namespace Proxies\__CG__\Produits\ProduitsBundle\Entity;

/**
 * THIS CLASS WAS GENERATED BY THE DOCTRINE ORM. DO NOT EDIT THIS FILE.
 */
class CommandeProduit extends \Produits\ProduitsBundle\Entity\CommandeProduit implements \Doctrine\ORM\Proxy\Proxy
{
    private $_entityPersister;
    private $_identifier;
    public $__isInitialized__ = false;
    public function __construct($entityPersister, $identifier)
    {
        $this->_entityPersister = $entityPersister;
        $this->_identifier = $identifier;
    }
    /** @private */
    public function __load()
    {
        if (!$this->__isInitialized__ && $this->_entityPersister) {
            $this->__isInitialized__ = true;

            if (method_exists($this, "__wakeup")) {
                // call this after __isInitialized__to avoid infinite recursion
                // but before loading to emulate what ClassMetadata::newInstance()
                // provides.
                $this->__wakeup();
            }

            if ($this->_entityPersister->load($this->_identifier, $this) === null) {
                throw new \Doctrine\ORM\EntityNotFoundException();
            }
            unset($this->_entityPersister, $this->_identifier);
        }
    }

    /** @private */
    public function __isInitialized()
    {
        return $this->__isInitialized__;
    }

    
    public function getId()
    {
        if ($this->__isInitialized__ === false) {
            return (int) $this->_identifier["id"];
        }
        $this->__load();
        return parent::getId();
    }

    public function setQuantite($quantite)
    {
        $this->__load();
        return parent::setQuantite($quantite);
    }

    public function getQuantite()
    {
        $this->__load();
        return parent::getQuantite();
    }

    public function setTarifArchive($tarifArchive)
    {
        $this->__load();
        return parent::setTarifArchive($tarifArchive);
    }

    public function getTarifArchive()
    {
        $this->__load();
        return parent::getTarifArchive();
    }

    public function setTvaArchive($tvaArchive)
    {
        $this->__load();
        return parent::setTvaArchive($tvaArchive);
    }

    public function getTvaArchive()
    {
        $this->__load();
        return parent::getTvaArchive();
    }

    public function setCommande(\Produits\ProduitsBundle\Entity\Commande $commande)
    {
        $this->__load();
        return parent::setCommande($commande);
    }

    public function getCommande()
    {
        $this->__load();
        return parent::getCommande();
    }

    public function setProduit(\Produits\ProduitsBundle\Entity\Produit $produit)
    {
        $this->__load();
        return parent::setProduit($produit);
    }

    public function getProduit()
    {
        $this->__load();
        return parent::getProduit();
    }


    public function __sleep()
    {
        return array('__isInitialized__', 'id', 'quantite', 'tarifArchive', 'tvaArchive', 'commande', 'produit');
    }

    public function __clone()
    {
        if (!$this->__isInitialized__ && $this->_entityPersister) {
            $this->__isInitialized__ = true;
            $class = $this->_entityPersister->getClassMetadata();
            $original = $this->_entityPersister->load($this->_identifier);
            if ($original === null) {
                throw new \Doctrine\ORM\EntityNotFoundException();
            }
            foreach ($class->reflFields as $field => $reflProperty) {
                $reflProperty->setValue($this, $reflProperty->getValue($original));
            }
            unset($this->_entityPersister, $this->_identifier);
        }
        
    }
}