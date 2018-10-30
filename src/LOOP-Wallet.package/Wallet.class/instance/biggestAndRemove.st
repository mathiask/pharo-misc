as yet unclassified
biggestAndRemove
	| coin |
	coin := self biggest.
	self removeCoin: coin.
	^ coin.