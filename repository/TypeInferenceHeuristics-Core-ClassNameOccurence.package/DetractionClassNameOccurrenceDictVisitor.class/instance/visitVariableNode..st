as yet unclassified
visitVariableNode: aVariableNode
	(Smalltalk keys includes: aVariableNode name asSymbol)
		ifTrue: [ ClassNameOccurrenceDictionary detractFromClass: aVariableNode name].
	super visitVariableNode: aVariableNode.