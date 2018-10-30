as yet unclassified
biggestBelow: aNumber 
	| coins |
	coins := bagCoins select: [ :x | x < aNumber ].
	coins isEmpty 
		ifTrue: [ ^ 0 ] 
		ifFalse: [ ^ coins max ]