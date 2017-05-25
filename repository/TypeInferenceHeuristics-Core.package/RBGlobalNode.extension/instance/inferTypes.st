*TypeInferenceHeuristics-Core
inferTypes
	Smalltalk at: self name 
	  ifPresent: [ :class | ^ OrderedCollection with: (OrderedCollection with: class) with: (OrderedCollection new) ]
		ifAbsent: [  ^ super inferTypes ].