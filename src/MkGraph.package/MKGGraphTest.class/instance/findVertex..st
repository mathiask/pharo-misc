as yet unclassified
findVertex: anInteger 
	^ (graph vertices select: [ :v | v content = anInteger ]) anyOne.