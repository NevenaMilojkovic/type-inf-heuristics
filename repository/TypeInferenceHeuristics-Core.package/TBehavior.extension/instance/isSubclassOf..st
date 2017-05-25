*TypeInferenceHeuristics-Core
isSubclassOf: aClass
	self = aClass ifTrue: [ ^ true ].
	self superclass 
		ifNil:  [ ^ false ]
		ifNotNil: [ ^ self superclass isSubclassOf: aClass ]