tests
testCoinsAdditionIsWorking
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 6 coinsOfValue: 0.50.
	self assert: (w coinsOfVAlue: 0.50) equals: 8