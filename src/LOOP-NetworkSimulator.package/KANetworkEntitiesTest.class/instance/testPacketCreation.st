tests
testPacketCreation
	| src dst payload packet |
	src := Object new.
	dst := Object new.
	payload := Object new.
	
	packet := KANetworkPacket from: src to: dst payload: payload.
	
	self assert: packet sourceAddress equals: src.
	self assert: packet destinationAddress equals: dst.
	self assert: packet payload equals: payload.