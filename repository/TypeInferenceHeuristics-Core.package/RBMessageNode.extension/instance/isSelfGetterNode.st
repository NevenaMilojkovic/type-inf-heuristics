*TypeInferenceHeuristics-Core
isSelfGetterNode
	(self receiver isSelf) ifFalse: [ ^ false ].
	"TBehaviour>>instVarNames will return only the names of instance variables of the current class, and not of those of superclass"
	^ self methodNode methodClass allInstanceVariables includes: self selector

	