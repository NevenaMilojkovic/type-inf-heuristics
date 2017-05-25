*TypeInferenceHeuristics-Core
inferTypes
	|tiClass|
	ClassNameOccurrenceDictionary initialize.
	tiClass := TIClass fromClass: self methodNode methodClass. 
	tiClass collectDictionariesOfSelectorsAndAssignments.
	tiClass findTypesOfVariables.
	tiClass orderClassesByHeuristic: ClassNameOccurencesHeuristic.
	^ OrderedCollection 
		with: (tiClass hierarchyBasedApproach nameOccurrenceHeuristic assignmentsSortedTypes 
							at: self getClassLocalName ifAbsent: [OrderedCollection new])
		with: (tiClass hierarchyBasedApproach nameOccurrenceHeuristic selectorsSortedTypes at: self getClassLocalName
											ifAbsent: [OrderedCollection new])
	