action
touchPlayers: aPlayerCollection inGame: aGame
	aPlayerCollection isEmpty
		ifTrue: [ ^ self ].
	(aPlayerCollection at: 1) gainNutrients: 2.
	aGame remove: self