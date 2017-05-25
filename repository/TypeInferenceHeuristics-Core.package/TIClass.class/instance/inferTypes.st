inferingTypes
inferTypes
	[self collectDictionariesOfSelectorsAndAssignments.
	self analyzeDictionariesOfSelectorsAndAssignments.
	self inferSortedSelectorTypes.
	self orderClassesByHeuristic: ClassNameOccurencesHeuristic.
	self show] fork
	