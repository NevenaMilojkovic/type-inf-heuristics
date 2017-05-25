assessing
findPositionOfDynamicTypes: anArray inStaticCombinationOfTypes: anArrayWhoseElementsAreOrderedCollections
	"elements of anArray1 are strings, and elements of elements of anArray2 are classes"
	|dynTypesClasses i missed|
	dynTypesClasses := anArray.
	i := 0.
	missed := 0.
	anArrayWhoseElementsAreOrderedCollections 
		do: [ :ordCol | |notIncluded|
							i := i + 1.
							notIncluded := (ordCol at: 1)
													ifNil: [ dynTypesClasses ]
													ifNotNil: [ (ordCol at:1) inSubhierarchyDoesNotIncludeClassesFrom: dynTypesClasses].
							notIncluded := (ordCol at: 2) 
													ifNil: [notIncluded ]
													ifNotNil: [(ordCol at: 2) inSubhierarchyDoesNotIncludeClassesFrom: notIncluded].
							(notIncluded asSet = dynTypesClasses asSet) 
								ifTrue: [ missed := missed + 1.
											 missed = 3 ifTrue: [^ 0]].
							notIncluded ifEmpty: [  self assert: [( missed = 0 or: [ missed = 1 ]) or: [missed = 2]].
															^ OrderedCollection with: i with: missed ].
							dynTypesClasses := notIncluded.
	].
	^ 0