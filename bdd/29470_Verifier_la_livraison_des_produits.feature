# language: de
Funktionalität: Vérifier la livraison des produits

	Szenariogrundriss: Vérifier la livraison des produits
		Gegeben la machine est en marche
		Und mon solde est au moins de <prix>
		Wenn je sélectionne le <produit>
		Dann la machine me sert un <produit> et mon compte est débité de <prix>

		@JDD_Cappûcînô
		Beispiele:
		| prix | produit |
		| 1 | "cappûcînô" |

		@JDD_Expresso
		Beispiele:
		| prix | produit |
		| 0,40 | "expresso" |

		@JDD_lungo
		Beispiele:
		| prix | produit |
		| 0.50 | "lungo" |