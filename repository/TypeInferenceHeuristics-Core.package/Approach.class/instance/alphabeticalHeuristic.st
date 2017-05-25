accessing-heuristics
alphabeticalHeuristic
	|col|
	col := heuristics select: [ :heur | heur isAlphabeticalHeuristic].
	self assert: [ col size = 1 ].
	^ col at: 1