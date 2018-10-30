tests
testCoins
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	self assert: w coinNumber equals: 5