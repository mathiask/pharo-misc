as yet unclassified
coinsFor: aValue into: aWallet
	| limit |
	limit := self biggest + 1.
	[ aWallet money < aValue ]
		whileTrue: [ 
			[ (self biggestBelow: limit) > ((aValue - aWallet money) roundTo: 0.01)  & (limit > 0) ] 
				whileTrue: [ limit := self biggestBelow: limit ].
			aWallet addCoin: (self removeBiggestBelow: limit) ].
	^ aWallet