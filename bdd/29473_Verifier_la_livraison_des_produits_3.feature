# language: en
Feature: Vérifier la livraison des produits 3

	Scenario: Vérifier la livraison des produits 3
		Given la machine est en marche
		And mon solde est au moins de "1" "€".
		When je sélectionne le "cappûcînô"
		Then la machine me sert un "cappûcînô" et mon compte est débité de "1""€"