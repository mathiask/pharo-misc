drawing
drawOn: aCanvas withOffset: aPoint
	aCanvas fillOval: (Rectangle center: position + aPoint extent: 6 @ 6) color: Color blue