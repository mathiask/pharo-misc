initialization
initialize
	outgoingLinks := Set new.
	arrivedPackets := Set new.
	loopback := KANetworkLink from: self to: self.
	loopback attach.