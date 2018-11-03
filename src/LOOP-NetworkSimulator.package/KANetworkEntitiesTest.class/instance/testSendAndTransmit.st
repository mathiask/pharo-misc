tests
testSendAndTransmit
	| srcNode dstNode link packet |
	srcNode := KANetworkNode withAddress: #src.
	dstNode := KANetworkNode withAddress: #dst.
	link := (KANetworkLink from: srcNode to: dstNode) attach; yourself.
	packet := KANetworkPacket from: #address to: #dst payload: #payload.
	
	srcNode send: packet via: link.
	self assert: (link isTransmitting: packet).
	self deny: (dstNode hasReceived: packet).
	
	link transmit: packet.
	self deny: (link isTransmitting: packet).
	self assert: (dstNode hasReceived: packet).
	