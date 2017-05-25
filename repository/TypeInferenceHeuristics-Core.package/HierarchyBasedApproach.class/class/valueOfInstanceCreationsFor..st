orderingTypes
valueOfInstanceCreationsFor: aClass
	^ (aClass withAllSubclasses inject: 0 into: [ :sum :el | sum + (ClassInstantiationOccurrenceDictionary at: el name asSymbol)])