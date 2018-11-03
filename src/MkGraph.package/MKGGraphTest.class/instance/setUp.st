initialization
setUp
	graph := MKGGraphBuilderForLongestPath new
		addEdgeFrom: 1 to: 2;
		addEdgeFrom: 2 to: 3;
		addEdgeFrom: 50 to: 2;
		addEdgeFrom: 60 to: 50;
		addEdgeFrom: 70 to: 60;
		build