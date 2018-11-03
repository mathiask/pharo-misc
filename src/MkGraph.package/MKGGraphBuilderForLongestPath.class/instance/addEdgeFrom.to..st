adding
addEdgeFrom: aNumber to: anotherNumber
	vertices addAll: { aNumber . anotherNumber  }.
	edges add: aNumber -> anotherNumber 