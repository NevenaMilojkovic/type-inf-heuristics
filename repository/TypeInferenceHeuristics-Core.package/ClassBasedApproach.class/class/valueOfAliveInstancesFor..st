orderingTypes
valueOfAliveInstancesFor: aClass
	^ (AliveInstancesDictionary dictionary at: aClass name asSymbol ifAbsent: [0])