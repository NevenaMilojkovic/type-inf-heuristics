*TypeInferenceHeuristics-Core
isSelfSetterNode
	(self receiver isSelf) ifFalse: [ ^ false ].
	"TBehaviour>>instVarNames will return only the names of instance variables of the current class, and not of those of superclass"
	('*:' match: self selector) ifFalse: [ ^ false ].
	^ self methodNode methodClass allInstanceVariables includes: (self selector copyFrom: 1 to: self selector size - 1)

	