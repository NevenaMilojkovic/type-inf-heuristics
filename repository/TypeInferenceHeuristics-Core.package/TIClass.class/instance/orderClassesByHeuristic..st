inferingTypes
orderClassesByHeuristic: aClass
	approaches do: [ :approach | approach orderClassesByHeuristic: aClass ]