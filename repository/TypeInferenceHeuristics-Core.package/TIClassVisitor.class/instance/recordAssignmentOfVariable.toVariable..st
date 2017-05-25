visitor-assignments
recordAssignmentOfVariable: aString toVariable: aVariableNode
	
	|variableName|
	
	self assert: [ aString ~= nil ].
	
	variableName := aVariableNode getClassLocalName.
	self assert: [ variableName isNotNil ].
	
	(dependencies at: variableName ifAbsentPut: [ Set new ]) add: aString.

	