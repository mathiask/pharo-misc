tests
testConnect
	| netw hubb mac pc1 |
	netw := KANetwork new.
	hubb := KANetworkNode withAddress: #hub.
	mac := KANetworkNode withAddress: #mac.
	pc1 := KANetworkNode withAddress: #pc1.
	
	netw connect: hubb to: mac.
	self assert: (hubb hasLinkTo: mac).
	self assert: (mac hasLinkTo: hubb).
	self assert: (netw doesRecordNode: hubb).
	self assert: (netw doesRecordNode: mac).
	
	netw connect: hubb to: pc1.
	self assert: (hubb hasLinkTo: pc1).
	self assert: (pc1 hasLinkTo: hubb).
	