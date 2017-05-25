as yet unclassified
compareTwoDimensionalArrayStaticTypesAndRunTimeTypes: aDictionary "aDictionary represents dynamic types"
	((aDictionary isNil) or: [aDictionary size = 0]) 
		ifTrue: [ ^ nil ].
	heuristics do: [ :heuristic | heuristic	compareTwoDimensionalArrayStaticTypesAndRunTimeTypes: aDictionary ] 
					displayingProgress: 'Approach ', self type