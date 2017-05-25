*TypeInferenceHeuristics-Core
openBlocksTemporaries
	^ parent ifNil: [Set new] ifNotNil: [ parent openBlocksTemporaries]