as yet unclassified
coinsFor: aValue into: aWallet
	| limit |
	limit := self biggest + 1.
	[ aWallet money < aValue ]
		whileTrue: [ 
			[ (self biggestBelow: limit) > (aValue - aWallet money) ] 
				whileTrue: [ limit := self biggestBelow: limit ].
			aWallet addCoin: (self removeBiggestBelow: limit) ].
	^ aWallet