orderingTypes
valueOfNameOccurencesFor: aClass
	^ (aClass withAllSubclasses inject: 0 into: [ :sum :el | sum + (ClassNameOccurrenceDictionary at: el name asSymbol)])