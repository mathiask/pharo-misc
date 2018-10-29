drawing
drawOn: aCanvas withOffset: aPoint
	aCanvas fillOval: (Rectangle center: position + aPoint extent: (2 * radius) @ (2 * radius)) color: Color red