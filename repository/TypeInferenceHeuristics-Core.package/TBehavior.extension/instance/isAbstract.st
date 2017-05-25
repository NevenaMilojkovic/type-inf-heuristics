*TypeInferenceHeuristics-Core
isAbstract
	^ self methods anySatisfy: [ :method | method isAbstract ]