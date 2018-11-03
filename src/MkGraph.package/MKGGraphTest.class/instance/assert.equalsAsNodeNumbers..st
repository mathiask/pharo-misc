asserting
assert: nodeCollection equalsAsNodeNumbers: numberArray 
	self assertCollection: (nodeCollection collect: [ :n | n content ])
		 hasSameElements: numberArray 