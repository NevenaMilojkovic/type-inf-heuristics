dependencies
initializeDictOfSel
	|dictOfSel|
	dictOfSel := Dictionary new.
	dependencies keys do: [ :key | dictOfSel at: key put: (tiClass dictOfSelectors at: key ifAbsent: [Set new]) copy asSet].
	dependencies do: [ :value | value do: [ :each | dictOfSel at: each put: (tiClass dictOfSelectors at: each ifAbsent: [Set new]) copy asSet ] ].
	^ dictOfSel