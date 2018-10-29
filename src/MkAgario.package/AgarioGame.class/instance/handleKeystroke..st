event-handling
handleKeystroke: e
	| k |
	k := e keyValue asCharacter.
	players do: [ :each | each handleKey: k ].

