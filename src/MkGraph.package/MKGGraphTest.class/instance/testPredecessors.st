initialization
testPredecessors
	| v |
	v := self findVertex: 2.
	self assert: (graph predecessorsOf: v)
		equalsAsNodeNumbers: #(1 50).