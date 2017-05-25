dependencies
updateDictOfAssignmentsWith: dictOfAss
	
	dictOfAss keysAndValuesDo: [ :key :value | 
			value do: [ :aClass | tiClass addAssignment: aClass toVariable: key]
		]