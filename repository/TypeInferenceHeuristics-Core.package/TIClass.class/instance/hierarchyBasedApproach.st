accessing
hierarchyBasedApproach
	|col|
	col := approaches select: [ :approach | approach isHierarchyBased].
	self assert: [ col size = 1 ].
	^ col at: 1