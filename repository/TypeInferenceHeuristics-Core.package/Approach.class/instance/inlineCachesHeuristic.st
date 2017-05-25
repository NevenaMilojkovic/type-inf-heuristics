accessing-heuristics
inlineCachesHeuristic
	|col|
	col := heuristics select: [ :heur | heur isInlineCachesHeuristic].
	self assert: [ col size = 1 ].
	^ col at: 1