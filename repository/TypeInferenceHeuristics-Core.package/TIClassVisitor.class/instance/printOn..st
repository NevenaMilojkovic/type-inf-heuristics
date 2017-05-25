printing
printOn: aStream
	aStream nextPutAll: 'TIClassVisitor ( ', tiClass asString, ' )'