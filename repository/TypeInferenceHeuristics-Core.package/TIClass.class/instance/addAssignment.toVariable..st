accessing
addAssignment: aClass toVariable: varName
	(dictOfAssignments at: varName ifAbsentPut: [ Set new ]) add: aClass