*TypeInferenceHeuristics-Core
getClassLocalName
	
	self isMethodTemporary ifTrue: [ ^ self methodNode selector, '>>temp>>', self name].
	self isBlockTemporary ifTrue: [ ^ self methodNode selector, '>>', self findBlockNumber asString, '>>temp>>', self name].	