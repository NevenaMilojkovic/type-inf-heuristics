visitor-assignments
visitAssignmentNode: anAssignmentNode
	self analyzeAssignmentOfExpression: anAssignmentNode value toVariable: anAssignmentNode variable.
	super visitAssignmentNode: anAssignmentNode.
