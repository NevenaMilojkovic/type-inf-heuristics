accessing-heuristics
nameOccurrenceHeuristic
	|col|
	col := heuristics select: [ :heur | heur isNameOccurrenceHeuristic].
	self assert: [ col size = 1 ].
	^ col at: 1