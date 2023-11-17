# language: es
Característica: Vérifier la livraison des produits

	Esquema del escenario: Vérifier la livraison des produits
		Dado la machine est en marche
		Y mon solde est au moins de <prix>
		Cuando je sélectionne le <produit>
		Entonces la machine me sert un <produit> et mon compte est débité de <prix>

		@JDD_Cappûcînô
		Ejemplos:
		| prix | produit |
		| 1 | "cappûcînô" |

		@JDD_Expresso
		Ejemplos:
		| prix | produit |
		| 0,40 | "expresso" |

		@JDD_lungo
		Ejemplos:
		| prix | produit |
		| 0.50 | "lungo" |