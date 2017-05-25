*TypeInferenceHeuristics-Core
determineType
	(self value isKindOf: Boolean) ifTrue: [ ^ Boolean ].
	(self value isKindOf: Number) ifTrue: [ ^ Number ].
	(self value isKindOf: String) ifTrue: [ ^ String ].
	^ self value class