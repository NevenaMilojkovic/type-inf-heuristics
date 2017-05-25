visitor-assignments
analyzeAssignmentOfExpression: aProgramNode toVariable: aVariableNode
	
	self assert: [ aVariableNode isVariable ].
	
	aProgramNode determineType
		ifNotNil: [ :type | self recordAssignmentOfType: type toVariable: aVariableNode]
		ifNil: [ "if the type coudn't be determined from the right-hand side of the assignment, check whether it is a variable whose assignments and message sends we know"
			aProgramNode getClassLocalName 
				ifNotNil: [ :variableName | self recordAssignmentOfVariable: variableName toVariable: aVariableNode ]
		]. 