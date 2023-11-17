# language: en
Feature: Vérifier les produits disponibles

	Scenario: Vérifier les produits disponibles
		Given la machine est en marche
			| produit | prix |
			| boisson | 60   |
			|sandwich | 80   |
		When liste les produits disponibles
			| marque  | prix|
			| nounours| 200 |
		Then je constate que tous les produits suivants sont disponibles : expresso, lungo, cappucino
			| produit | prix |
			| Expresso | 0.40 |
			|Lungo |0.5|
			|Capucinno | 0.80|