visitor-messages
recordMessage: aString sentToVariable: aVariableNode
	
	aVariableNode getClassLocalName
		ifNotNil: [ :varName | tiClass addMessageSend: aString toVariable: varName].