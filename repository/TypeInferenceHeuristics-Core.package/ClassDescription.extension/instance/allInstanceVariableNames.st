*TypeInferenceHeuristics-Core
allInstanceVariableNames
	"returns the set of instance variable names, including those inherited from superclass"
	self superclass 
		ifNil: [ ^ self instVarNames asSet ]
		ifNotNil: [ ^ self instVarNames asSet, self superclass allInstanceVariableNames ].