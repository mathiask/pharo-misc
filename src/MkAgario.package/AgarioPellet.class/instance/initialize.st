initialization
initialize
	| r |
	r := Random new.
	position := (r nextInt: 500) @ (r nextInt: 500).
