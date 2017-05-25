findTypesOfVariables
removeGlobalsFromDictionaries
	|globals|
	globals := (dictOfAssignments keys select: [ :key | (key at: 1) isUppercase ]) asSet
					union: (dictOfSelectors keys select: [:key | (key at: 1) isUppercase ]) asSet.
	
	globals do: [ :global | 
						dictOfAssignments removeKey: global ifAbsent: [  ].
						dictOfSelectors removeKey: global ifAbsent: [  ].
		].
					