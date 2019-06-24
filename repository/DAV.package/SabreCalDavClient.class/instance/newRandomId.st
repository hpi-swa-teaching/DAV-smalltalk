as yet unclassified
newRandomId

	^ ((UUID new asString reject: [:c | c = $-]) first: 26)