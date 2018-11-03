as yet unclassified
linkFrom: sourceAddress to: destinationAddress
	^links 
		detect: [ :link | link source address = sourceAddress and: link destination address = destinationAddress ]
		ifNone: [ NotFound signal ]