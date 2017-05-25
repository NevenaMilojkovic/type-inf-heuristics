detracting
detractFromClass: aClassName
	|num|
	(Smalltalk keys includes: aClassName asSymbol)
		ifTrue: [ num := self dictionary at: aClassName ifAbsent: [^self].
						self dictionary at: aClassName put: (num - 1)
				].