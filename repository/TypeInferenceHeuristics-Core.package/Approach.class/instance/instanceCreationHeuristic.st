accessing-heuristics
instanceCreationHeuristic
	|col|
	col := heuristics select: [ :heur | heur isClassInstantiationHeuristic].
	self assert: [ col size = 1 ].
	^ col at: 1