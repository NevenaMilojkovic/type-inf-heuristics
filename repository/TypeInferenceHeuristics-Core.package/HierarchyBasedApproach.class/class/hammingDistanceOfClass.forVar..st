orderingTypes
hammingDistanceOfClass: aClass forVar: aString
	^ aClass withAllSubclasses inject: 0 into: [ :sum :el | sum + ((SimhashDictionary at: el name asSymbol) hammingDistance: aString simhash )]