initialization
testSuccessors
	| v |
	v := self findVertex: 2.
	self assert: (graph successorsOf: v)
		equalsAsNodeNumbers: #(3).