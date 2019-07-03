events handling
newRandomId

	^ ((UUID new asString reject: [:c | c = $-]) first: 26)