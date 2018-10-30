removing
removeBiggestBelow: aNumber
	| coin |
	coin := self biggestBelow: aNumber.
	self removeCoin: coin.
	^ coin.