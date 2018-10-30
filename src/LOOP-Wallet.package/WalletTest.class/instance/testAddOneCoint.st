tests
testAddOneCoint
	| w |
	w := Wallet new.
	w addCoin: 0.50.
	self assert: (w coinsOfVAlue: 0.5) equals: 1.
	self assert: w money equals: 0.5