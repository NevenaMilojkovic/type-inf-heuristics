*TypeInferenceHeuristics-Core
openBlocksArguments
	^ parent ifNil: [Set new] ifNotNil: [ parent openBlocksArguments]