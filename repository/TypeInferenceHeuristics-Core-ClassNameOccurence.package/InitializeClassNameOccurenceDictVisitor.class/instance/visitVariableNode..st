as yet unclassified
visitVariableNode: aVariableNode
	((ClassNameOccurrenceDictionary dictionary keys includes: aVariableNode name)
		or: [ Smalltalk keys includes: aVariableNode name asSymbol ])
		ifTrue: [ ClassNameOccurrenceDictionary addClass: aVariableNode name ].
	super visitVariableNode: aVariableNode.