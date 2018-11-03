computation
longestPath
	"Find the longest path in the graph.
	The implementation is based on Kahn's algorithm of finding a topological ordering.
	It assumes the following:
	1. The vertices in the graph are newly created MKGNodes, i.e. they are not visited.
	2. The graph is a DAG."
	
	| s max maxNode|
	max := -1.
	maxNode := nil.
	
	s := vertices asOrderedCollection select: [ :v | self hasNoUnvisitedPredecessors: v ].
	[ s isNotEmpty  ] whileTrue: [ 
		| v a |
		"Visit first node"
		v := s removeFirst.
		v visit.
		
		"Find longest path among predecessors and extend it"
		a := (self predecessorsOf: v)
			inject:  #() -> -1
			into: [ :maxPred :each | 
					(each maxLength > maxPred value) 
						ifTrue: [ each maxPath -> each maxLength ]
						ifFalse: [ maxPred ]
				 ].
		v maxPath: a key, { v content }.
		v maxLength: a value + 1.
		
		"Update max found so far"
		v maxLength > max ifTrue: [ max := v maxLength. maxNode := v ].
		
		"Add new vertices"
		s addAll: ((self successorsOf: v) select: [ :each | self hasNoUnvisitedPredecessors: each ]). 
	].
	^ maxNode maxPath.
