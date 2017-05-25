sorting
sortAssignmentsTypes: aSet
	|temp2|
	(aSet size = 1) ifTrue: [ ^ aSet asArray ].
	temp2 := Dictionary new.
	aSet do: [ :each | temp2 at: each put: (ClassNameOccurrenceDictionary at: each name asSymbol)
												"(approach valueOfNameOccurencesFor: each)"].
	^ (temp2 associations sorted: [ :a :b | a value > b value ]) collect: [ :eachAssoc | eachAssoc key ]



