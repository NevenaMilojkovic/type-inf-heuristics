*TypeInferenceHeuristics-Core
innerestEnclosingBlockNode
	^ parent ifNil: [ nil ] ifNotNil: [ parent innerestEnclosingBlockNode ]