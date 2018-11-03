as yet unclassified
connect: aNode to: anotherNode 
	self 
		add: aNode;
		add: anotherNode.
	links add: (self makeLinkFrom: aNode to: anotherNode) attach.
	links add: (self makeLinkFrom: anotherNode to: aNode) attach.
