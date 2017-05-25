findTypesOfVariables
analyzeDictionariesOfSelectorsAndAssignments
	self resetApproaches.
	approaches do: [ :approach | approach findTypesOfVariablesWithSelectors: dictOfSelectorRootTypes 
														andAssignments: dictOfAssignments ].