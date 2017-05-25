*TypeInferenceHeuristics-Core
isEnclosingBlockOfNode: anRBProgramNode
	|par|
	par := anRBProgramNode parent.
	[par] whileNotNil: 
		[  par == self ifTrue: [ ^ true ].
			par := par parent.
		]. 
	^ false 