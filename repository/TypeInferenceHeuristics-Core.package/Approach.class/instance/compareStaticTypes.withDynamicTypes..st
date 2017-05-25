as yet unclassified
compareStaticTypes: anArrayWhoseElementsAreOrderedCollections withDynamicTypes: anArray
	|res|
	res := self checkForBehaviorTypes: anArrayWhoseElementsAreOrderedCollections inDynamicTypes: anArray.
	res ifNotNil: [ ^ res ].

	
	^ self findPositionOfDynamicTypes: anArray inStaticCombinationOfTypes: anArrayWhoseElementsAreOrderedCollections