orderingTypes
orderAssignmentTypes: aDictionary
	assignmentsSortedTypes := Dictionary new.
	aDictionary keysAndValuesDo: [ :key :value | assignmentsSortedTypes at: key put: (self sortAssignmentsTypes: value)].