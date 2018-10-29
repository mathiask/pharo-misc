stepping
doesPellet: aPellet touchPlayer: aPlayer
	^ (aPellet position distanceTo: aPlayer position) < (aPellet radius + aPlayer radius)