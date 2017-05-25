initialization
resetApproaches
	approaches := OrderedCollection 
							with: (HierarchyBasedApproach new) 
							with: (ClassBasedApproach new). 