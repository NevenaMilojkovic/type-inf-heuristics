*TypeInferenceHeuristics-Core
notUnderstandSelectors: aSet
	^ aSet reject: [ :selector | self canUnderstand: selector ].		
