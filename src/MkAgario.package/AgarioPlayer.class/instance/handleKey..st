initialization
handleKey: aKey
	(aKey = $w) ifTrue: [ direction := 0@(-1) ]. 
	(aKey = $a) ifTrue: [ direction := (-1)@0 ]. 
	(aKey = $d) ifTrue: [ direction := 1@0 ]. 
	(aKey = $x) ifTrue: [ direction := 0@1 ].
