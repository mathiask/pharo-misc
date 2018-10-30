tests
testBiggestCoinBelow
	| w |
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.
	self assert: (w biggestBelow: 1) equals: 0.50.
  self assert: (w biggestBelow: 0.50) equals: 0.20.
	self assert: (w biggestBelow: 0.48) equals: 0.20.
  self assert: (w biggestBelow: 0.2) equals: 0.1.
  self assert: (w biggestBelow: 0.1) equals: 0.