*TypeInferenceHeuristics-Core
inferTypes
	|tiClass visitor|
	ClassNameOccurrenceDictionary initialize.
	tiClass := TIClass fromClass: self methodNode methodClass. 
	visitor := TIClassVisitor forTIClass: tiClass.
	visitor visitMethodNode: self methodNode.
	tiClass findTypesOfVariables.
	tiClass orderClassesByHeuristic: ClassNameOccurencesHeuristic.
	^ OrderedCollection 
		with: (tiClass hierarchyBasedApproach nameOccurrenceHeuristic assignmentsSortedTypes 
							at: self getClassLocalName ifAbsent: [Set new])
		with: (tiClass hierarchyBasedApproach nameOccurrenceHeuristic selectorsSortedTypes at: self getClassLocalName
											ifAbsent: [Set new])
	