findTypesOfVariables
collectDictionariesOfSelectorsAndAssignments
	|visitor|
	visitor := TIClassVisitor forTIClass: self.
	
	class methods do: [ :method | visitor visitMethodNode: method ast]
		displayingProgress: 'Collecting selectors and assignments in class ', class name.
	
	visitor performDependencies.
	self removeSelfSuperThisContextAndGlobalsFromDictionaries.
								
	dictOfSelectors := dictOfSelectors reject: [ :value | value isEmpty ].
	dictOfAssignments := dictOfAssignments reject: [ :value | value isEmpty ].
	
	self inferSortedSelectorTypes.