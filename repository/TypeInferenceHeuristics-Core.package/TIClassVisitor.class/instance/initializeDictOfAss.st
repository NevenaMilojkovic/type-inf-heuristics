dependencies
initializeDictOfAss
	|dictOfAss|
	dictOfAss := Dictionary new.
	dependencies keys do: [ :key | dictOfAss at: key put: (tiClass dictOfAssignments at: key ifAbsent: [Set new]) copy asSet].
	dependencies do: [ :value | value do: [ :each | dictOfAss at: each put: (tiClass dictOfAssignments at: each ifAbsent: [Set new]) copy asSet ] ].
	^ dictOfAss