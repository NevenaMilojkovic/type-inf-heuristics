visitor-assignments
recordAssignmentOfType: aClass toVariable: aVariableNode
	
	self assert: [ aClass ~= nil ].
	aVariableNode getClassLocalName
		ifNotNil: [ :varName | tiClass addAssignment: aClass toVariable: varName ].
	