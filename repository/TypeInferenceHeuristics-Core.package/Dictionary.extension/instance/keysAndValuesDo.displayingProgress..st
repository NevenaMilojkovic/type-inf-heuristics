*TypeInferenceHeuristics-Core
keysAndValuesDo: aBlock displayingProgress: aString
	tally = 0 ifTrue: [^ self].
	^ array do: [:each | each ifNotNil: [aBlock value: each key value: each value]] 
		displayingProgress: aString.