*TypeInferenceHeuristics-Core
inSubhierarchyDoesNotIncludeClassesFrom: anArray
	|classes|
	classes := self withAllSubclasses collect: [:class | class name].
	^ anArray reject: [ :class | classes includes: class ]