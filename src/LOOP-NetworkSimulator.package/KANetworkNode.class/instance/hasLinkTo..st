testing
hasLinkTo: anotherNode 
	^ outgoingLinks anySatisfy: [ :each | each destination = anotherNode  ]