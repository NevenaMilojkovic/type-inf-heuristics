orderingTypes
hammingDistanceOfClass: aClass forVar: aString
	^ (SimhashDictionary at: aClass name asSymbol) hammingDistance: aString simhash