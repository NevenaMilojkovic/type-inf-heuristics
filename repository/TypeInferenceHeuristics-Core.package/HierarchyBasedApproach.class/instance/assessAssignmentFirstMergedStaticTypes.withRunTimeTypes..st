assignmentFirstMerger
assessAssignmentFirstMergedStaticTypes: staticTypes withRunTimeTypes: runTimeTypes
	"elements of runTimeTypes are strings, and elements of staticTypes are classes"
	|dynTypesClasses i missed|
	dynTypesClasses := runTimeTypes.
	i := 0.
	missed := 0.
	staticTypes do: [ :cl | |notIncluded |
							i := i + 1.
							notIncluded := cl inSubhierarchyDoesNotIncludeClassesFrom: dynTypesClasses.
							(notIncluded asSet = dynTypesClasses asSet) 
								ifTrue: [ missed := missed + 1.
											 missed = 3 ifTrue: [^ 0]].
							notIncluded ifEmpty: [ ^ OrderedCollection with: i with: missed ].
							dynTypesClasses := notIncluded.
	].
	^ 0