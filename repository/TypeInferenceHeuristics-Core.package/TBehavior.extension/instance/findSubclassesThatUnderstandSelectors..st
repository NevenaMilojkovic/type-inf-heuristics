*TypeInferenceHeuristics-Core
findSubclassesThatUnderstandSelectors: aSet
	|selectors|
	selectors := self notUnderstandSelectors: aSet.
	selectors ifEmpty: [ ^ Set with: self]
				 ifNotEmpty: [ |classes|
									classes := Set new.
									self subclasses do: [ :class | classes addAll: (class findSubclassesThatUnderstandSelectors: selectors)].
									^ classes
					].
