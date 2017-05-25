assignmentFirstMerger
assessAssignmentFirstMergedStaticTypes: staticTypes withRunTimeTypes: runTimeTypes
	"elements of runTimeTypes are strings, and elements of staticTypes are classes"
	|dynTypesClasses i missed|
	dynTypesClasses := runTimeTypes.
	i := 0.
	missed := 0.
	staticTypes do: [ :cl | |rest |
							i := i + 1.
							(dynTypesClasses includes: cl name) 
									ifFalse: [ missed := missed + 1.
													missed = 3 ifTrue: [ ^ 0 ] ].
							rest := dynTypesClasses difference: (Array with: cl name).		
							rest ifEmpty: [ ^ OrderedCollection with: i with: missed ].
							dynTypesClasses := rest.
	].
	^ 0