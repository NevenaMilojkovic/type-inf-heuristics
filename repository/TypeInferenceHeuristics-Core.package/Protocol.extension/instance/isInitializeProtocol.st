*TypeInferenceHeuristics-Core
isInitializeProtocol
	^ ((name = #initialize) 
		or: [name = #initialization ])
			or: [name = #'instance creation']