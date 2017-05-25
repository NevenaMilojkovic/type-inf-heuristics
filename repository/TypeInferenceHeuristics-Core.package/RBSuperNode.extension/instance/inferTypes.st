*TypeInferenceHeuristics-Core
inferTypes
	| classes |
	ClassNameOccurrenceDictionary initialize.
	classes := self methodNode methodClass withAllSubclasses.
	^ OrderedCollection 
		with: (OrderedCollection new)
		with: (ClassNameOccurencesHeuristic new 
								approach: ClassBasedApproach new;
		 						sortSelectorsTypes: classes)
	