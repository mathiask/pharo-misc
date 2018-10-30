tests
testCoinsForPayingWithOtherThanTopMoreDifficult
	| w paid |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.
	paid := w coinsFor: 0.6.
	self assert: paid money equals: 0.6.
	self assert: (paid coinsOfVAlue: 0.50) equals: 1.
	self assert: (paid coinsOfVAlue: 0.10) equals: 1