# language: en
Feature: Vérifier les produits disponibles

	Scenario: Vérifier les produits disponibles
		Given la machine est en marche
			"""
			une doctsring looooongue 
			"""
		When liste les produits disponibles
			"""
			une docsrting très looongue 2
			"""
		Then je constate que tous les produits suivants sont disponibles : expresso, lungo, cappucino
			"""
			une docstring SUPER longue 3 
			"""