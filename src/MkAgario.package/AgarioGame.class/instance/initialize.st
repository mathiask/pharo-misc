instance creation
initialize
	super initialize.
	self extent: 500@500;
		color: Color white.
	pellets := OrderedCollection new.
	players := OrderedCollection with: AgarioPlayer new.
	100 timesRepeat:  [ pellets add: AgarioPellet new ]