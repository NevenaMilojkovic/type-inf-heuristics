*TypeInferenceHeuristics-Core
findSetOfClassesMatching: aString 
	(('*', aString) match: self name) 
		ifTrue: [ ^ Set with: self]
		ifFalse: [ |classes|
						classes := Set new.
						self subclasses do: [ :class | classes addAll: (class findSetOfClassesMatching: aString)].
									^ classes
					].
