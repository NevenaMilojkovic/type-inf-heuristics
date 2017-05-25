inferingTypes
inferSortedSelectorTypes
	dictOfSelectors keysAndValuesDo: 
		[ :key :value |	value ifNotEmpty: [ |roots|
					roots := ProtoObject findSubclassesThatUnderstandSelectors: value.
					dictOfSelectorRootTypes at: key put: (self sortSelectorsTypes: roots)
				].
	] displayingProgress: ('Infering types in class ', self getClass name).