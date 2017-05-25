*TypeInferenceHeuristics-Core
isInitializeMessageNode
	|class initializeSelectors|
	(self receiver isKindOf: RBVariableNode) ifFalse: [ ^ false ].
	[class := Smalltalk at: self receiver name] on: KeyNotFound do: [^false].
	class isClass ifFalse: [^false].
	initializeSelectors := class class selectorsInInitializeProtocols.
	^ initializeSelectors includes: self selector