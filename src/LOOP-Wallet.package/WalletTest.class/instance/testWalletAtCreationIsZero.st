tests
testWalletAtCreationIsZero
	| w |
	w := Wallet new.
	self assert: w money equals: 0 
	