as yet unclassified
nodeAt: anAddress ifNone: noneBlock
	^ nodes detect: [ :node | node address = anAddress ] ifNone: noneBlock 
