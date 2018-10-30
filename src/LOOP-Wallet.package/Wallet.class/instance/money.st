as yet unclassified
money
	^ (bagCoins inject: 0 into: [ :acc :x | acc + x ]) roundTo: 0.01