*TypeInferenceHeuristics-Core
allInstanceVariables
	|instVars|
	instVars := OrderedCollection new.
	self instanceVariables ifNotNil: [ instVars addAll: self instanceVariables ].
	self superclass ifNotNil: [ instVars addAll: self superclass allInstanceVariables ].
	^ instVars