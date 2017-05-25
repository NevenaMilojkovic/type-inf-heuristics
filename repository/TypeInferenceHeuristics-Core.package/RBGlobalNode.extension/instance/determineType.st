*TypeInferenceHeuristics-Core
determineType
	|global|
	global := Smalltalk at: self name ifAbsent: [^ nil].
	^ global class