visitor-messages
visitMessageNode: aMessageNode
	
	|receiver|
	
	"schedule in this method is very important: if isSelfSetterNode is the last one, it won't be exercised ever, since 'aMessageNode receiver' will return self, and never be nil"
	
	(self isSelfSetterNode: aMessageNode)
		ifTrue: [ self analyzeAssignmentOfExpression: (aMessageNode arguments at: 1) 
							toVariable: (RBInstanceVariableNode named: (aMessageNode selector copyFrom: 1 to: aMessageNode selector size -1)).
							^ super visitMessageNode: aMessageNode
			].
	
	(self isSelfGetterNode: aMessageNode receiver) "instance variables through getter method"
		ifTrue: [ receiver := RBInstanceVariableNode named: aMessageNode receiver selector].	
	aMessageNode receiver isVariable 
		ifTrue: [ receiver := aMessageNode receiver].
	
	receiver ifNotNil: [ self recordMessage: aMessageNode selector sentToVariable: receiver.
								^ super visitMessageNode: aMessageNode].
	
	super visitMessageNode: aMessageNode.
	
	