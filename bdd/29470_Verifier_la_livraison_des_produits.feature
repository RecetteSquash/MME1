# language: fr
Fonctionnalité: Vérifier la livraison des produits

	Plan du scénario: Vérifier la livraison des produits
		Étant donné que la machine est en marche
		Et mon solde est au moins de <prix>
		Quand je sélectionne le <produit>
		Alors la machine me sert un <produit> et mon compte est débité de <prix>

		@JDD_Cappûcînô
		Exemples:
		| prix | produit |
		| 1 | "cappûcînô" |

		@JDD_Expresso
		Exemples:
		| prix | produit |
		| 0,40 | "expresso" |

		@JDD_lungo
		Exemples:
		| prix | produit |
		| 0.50 | "lungo" |