building
build
	| dict |
	dict := (vertices collect: [ :n | n -> (MKGNode with: n)]) asDictionary.
	^ MKGGraph 
		withVertices: dict values asSet
		andEdges: (edges collect: [ :e | MKGEdge from: (dict at: e key) to: (dict at: e value) ])