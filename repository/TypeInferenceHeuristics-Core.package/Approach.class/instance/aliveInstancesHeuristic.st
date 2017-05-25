accessing-heuristics
aliveInstancesHeuristic
	|col|
	col := heuristics select: [ :heur | heur isAliveInstancesHeuristic].
	self assert: [ col size = 1 ].
	^ col at: 1