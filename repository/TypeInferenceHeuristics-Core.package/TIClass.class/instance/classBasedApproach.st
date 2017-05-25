accessing
classBasedApproach
	|col|
	col := approaches select: [ :approach | approach isClassBased].
	self assert: [ col size = 1 ].
	^ col at: 1