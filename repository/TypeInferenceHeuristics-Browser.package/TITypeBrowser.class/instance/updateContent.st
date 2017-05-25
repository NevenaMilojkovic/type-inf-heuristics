as yet unclassified
updateContent

	variableModel selectedItem = nil
	ifFalse:[
			assModel items: (tiClass classBasedApproach nameOccurrenceHeuristic assignmentsSortedTypes at: (variableModel selectedItem)
										ifAbsent: [Set new]).
			selectorModel items: (tiClass dictOfSelectors at: (variableModel selectedItem)
											ifAbsent: [Set new]).
			hierModel items: (tiClass hierarchyBasedApproach nameOccurrenceHeuristic selectorsSortedTypes at: (variableModel selectedItem )
											ifAbsent: [Set new]).
			classModel items: (tiClass classBasedApproach nameOccurrenceHeuristic selectorsSortedTypes at: (variableModel selectedItem )
											ifAbsent: [Set new]).
	]