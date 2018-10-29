stepping
eatPellets
	pellets copy
		do: [ :aPellet | 
			aPellet
				touchPlayers: (players select: [ :aPlayer | self doesPellet: aPellet touchPlayer: aPlayer ])
				inGame: self ]