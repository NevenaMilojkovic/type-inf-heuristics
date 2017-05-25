findTypesOfVariables
removeFromDictionaries: aString
	self assert: [ (dictOfAssignments keys count: [ :each | each = aString]) <= 1 ].
	self assert: [ (dictOfSelectors keys count: [:each | each = aString ]) <= 1 ].
	
	dictOfAssignments removeKey: aString ifAbsent: [  ].
	dictOfSelectors removeKey: aString ifAbsent: [  ].