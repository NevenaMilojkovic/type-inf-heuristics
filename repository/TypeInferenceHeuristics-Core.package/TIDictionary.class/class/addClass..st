adding
addClass: aClassName
	|num|
	num := self dictionary at: aClassName ifAbsentPut: 0.
	self dictionary at: aClassName put: (num + 1).