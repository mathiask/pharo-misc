tests
testCoinsForPaying
	| w paid |
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.
	paid := w coinsFor: 2.50.
	self assert: paid money equals: 2.50.
	self assert: (paid coinsOfVAlue: 0.50) equals: 5