*TypeInferenceHeuristics-Core
copyDict
	|newDict|
	newDict := Dictionary new.
	self keysAndValuesDo: [ :key :value | newDict at: key put: value copy ].
	^ newDict
		