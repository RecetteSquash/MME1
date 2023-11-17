# language: en
Feature: Vérifier la livraison des produits 4

	Scenario: Vérifier la livraison des produits 4
		Given la machine est en marche
		And mon solde est au moins de "20" "€".
		When je sélectionne le "cappûcînô"
		Then la machine me sert un "cappûcînô" et mon compte est débité de "20" "€"