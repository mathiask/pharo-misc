as yet unclassified
coinsFor: aValue
	"Return a wallet with the largest coins to pay a certain amount and an empty wallet if this is not possible."
	
	| res |
	res := self class new.
	^ (self canPay: aValue)
		ifFalse: [ res ]
		ifTrue: [ self coinsFor: aValue into: res ]