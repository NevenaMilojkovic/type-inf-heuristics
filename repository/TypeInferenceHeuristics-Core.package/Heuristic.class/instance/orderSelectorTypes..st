orderingTypes
orderSelectorTypes: aDictionary
	selectorsSortedTypes := Dictionary new.
	aDictionary keysAndValuesDo: [ :key :value | selectorsSortedTypes at: key put: (self sortSelectorsTypes: value)].
	self assert: selectorsSortedTypes size = aDictionary size.