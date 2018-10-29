drawing
drawOn: aCanvas
	| offset |
	aCanvas fillRectangle: self bounds fillStyle: self fillStyle borderStyle: self borderStyle.
	offset := self position.
	self actors do: [ :each | each drawOn: aCanvas withOffset: offset ].