accessing
predecessorsOf: aVertex
	^ edges 
			select: [ :e | e target = aVertex ]
			thenCollect: #source