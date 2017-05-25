*TypeInferenceHeuristics-Core
openBlocksArguments
	|args|
	args := super openBlocksArguments.
	args addAll: self arguments.
	^ args
	