# language: en
Feature: Vérifier les produits disponibles

	Scenario: Vérifier les produits disponibles
		Given la machine est en marche
			"""
			le prix des produits s'affiche à droite sur l'écran et le nom des produits à gauche 
			"""
		When liste les produits disponibles
			#Seuls les produits de la catégorie Café sont vérifiés dans ce test
		Then je constate que tous les produits suivants sont disponibles : expresso, lungo, cappucino
			| produit | prix |
			| Expresso | 0.40 |
			|Lungo |0.5|
			|Capucinno | 0.80|