as yet unclassified
forward: aPacket from: arrivalLink
	outgoingLinks 
		do: [ :link | (link ~~ arrivalLink) ifTrue: [ self send: aPacket via: link ] ]