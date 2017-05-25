sorting
sortSelectorsTypes: aSet
	|temp1|
	(aSet size = 1) ifTrue: [ ^ aSet asArray ].
	temp1 := Dictionary new.
	aSet do: [ :each | temp1 at: each put: (approach class valueOfNameOccurencesFor: each)].
	^ (temp1 associations sorted: [ :a :b | a value > b value ]) collect: [ :eachAssoc | eachAssoc key ].