orderingTypes
valueOfInlineCachesFor: aClass
	^ aClass withAllSubclasses
		inject: 0
		into: [ :sum :el | 
			sum + (InlineCachesDictionary at: el name asSymbol)]