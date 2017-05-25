as yet unclassified
isStaticTypeOnlyUndefinedObject: anOrderedCollectionOfOrderedCollections
	 ^ anOrderedCollectionOfOrderedCollections allSatisfy: [ :anOC | 
					anOC allSatisfy: [ :aClass | aClass isNil or: [ aClass = UndefinedObject ] ]
			]