initialization
initialize
	| r |
	r := Random new.
	position := (r nextInt: 500) @ (r nextInt: 500).
	direction := 0 @ 0.
	speed := 3.
	radius := 14