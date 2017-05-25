orderingTypes
orderClassesByHeuristic: aHeuristicClass
	
	heuristics detect: [ :heur | heur class = aHeuristicClass ] 
					ifFound: [ :heur | heuristics remove: heur ].
	
	heuristics add: (aHeuristicClass new approach: self;
								orderSelectorTypes: selectorTypes;
								orderAssignmentTypes: assignmentTypes)