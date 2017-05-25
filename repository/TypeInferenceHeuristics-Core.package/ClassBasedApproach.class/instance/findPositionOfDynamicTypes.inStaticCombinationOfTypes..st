assessing
findPositionOfDynamicTypes: anArray inStaticCombinationOfTypes: anArrayWhoseElementsAreOrderedCollections
	"elements of anArray1 are strings, and elements of elements of anArray2 are ordered collections of classes"
	|dynTypesClasses i missed|
	dynTypesClasses := anArray.
	i := 0.
	missed := 0.
	anArrayWhoseElementsAreOrderedCollections 
		do: [ :ordCol | |rest remove|
							i := i + 1.
							remove := Set new.
							((ordCol at: 1) = Number)
								ifTrue: [ remove addAll: ((Number withAllSubclasses collect: [ :cl | cl name ]) intersection: dynTypesClasses)].
							((ordCol at: 1) = Boolean)
								ifTrue: [ remove addAll: ((Boolean withAllSubclasses collect: [ :cl | cl name ]) intersection: dynTypesClasses)].
							((ordCol at: 1) = String)
								ifTrue: [ remove addAll: ((String withAllSubclasses collect: [ :cl | cl name ]) intersection: dynTypesClasses)].
								
							(dynTypesClasses includes: (ordCol at: 1) asString) ifTrue: [ remove add: (ordCol at: 1) name].
							(dynTypesClasses includes: (ordCol at: 2) asString) ifTrue: [ remove add: (ordCol at: 2) name].
							
							remove ifEmpty: [ missed := missed + 1.
													missed = 3 ifTrue: [ ^ 0 ] ].
							rest := dynTypesClasses difference: remove.	
							rest ifEmpty: [ self assert: [( missed = 0 or: [ missed = 1 ]) or: [missed = 2]].
													^ OrderedCollection with: i with: missed ].
							dynTypesClasses := rest.
	].
	^ 0