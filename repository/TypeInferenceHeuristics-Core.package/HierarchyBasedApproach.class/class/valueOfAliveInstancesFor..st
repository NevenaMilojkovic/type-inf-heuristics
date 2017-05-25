orderingTypes
valueOfAliveInstancesFor: aClass
	^ (aClass withAllSubclasses inject: 0 into: [ :sum :el | sum + (AliveInstancesDictionary dictionary at: el name asSymbol ifAbsent: [0])])