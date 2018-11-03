accessing
successorsOf: aVertex
	^ edges 
			select: [ :e | e source = aVertex ]
			thenCollect: #target