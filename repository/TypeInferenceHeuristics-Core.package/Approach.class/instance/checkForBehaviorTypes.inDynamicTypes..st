as yet unclassified
checkForBehaviorTypes: anArrayWhoseElementsAreOrderedCollections inDynamicTypes: anArray 
	anArrayWhoseElementsAreOrderedCollections do: [ :anOrderedCollection |
			anOrderedCollection do: [ :aClass | 
						aClass ifNotNil: [
								(aClass isSubclassOf: Behavior)
									ifFalse: [ ^ nil ]
								]
				]
		].
	anArray do: [ :metaClassName | |className|
			metaClassName ifNotEmpty: [  
					className := metaClassName copyFrom: 1 to: (metaClassName indexOf: Character space) - 1.
					(Smalltalk globals at: className asSymbol ifPresent: [:class | class isClass] ifAbsent: [ '* class' match: metaClassName ])
							ifFalse: [ ^ nil ]
				].
			].
	^ OrderedCollection with: anArrayWhoseElementsAreOrderedCollections size with: 0.