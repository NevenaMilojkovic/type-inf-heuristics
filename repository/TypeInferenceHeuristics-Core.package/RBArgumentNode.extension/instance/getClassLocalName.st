*TypeInferenceHeuristics-Core
getClassLocalName
	
	self isMethodArgument ifTrue: [ ^ self methodNode selector, '>>arg>>', self name ].
	self isBlockArgument ifTrue: [ ^ self methodNode selector, '>>', self findBlockNumber asString, '>>arg>>', self name ].