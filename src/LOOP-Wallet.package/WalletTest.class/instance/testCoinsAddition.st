tests
testCoinsAddition
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	self assert: (w coinsOfVAlue: 0.50) equals: 2