as yet unclassified
linksTowards: anAddress do: aBlock
	"Simple flood algorithm: route via all outgoing links.
	However, just loopback if the receiver is the routing destination."
	anAddress = address 
		ifTrue: [ aBlock value: self loopback ] 
		ifFalse: [ outgoingLinks do: [ :link | aBlock value: link] ]