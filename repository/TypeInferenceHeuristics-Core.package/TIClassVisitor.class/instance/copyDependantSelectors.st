dependencies
copyDependantSelectors
	
	|dictOfSel oldDictOfSel |
	dictOfSel := self initializeDictOfSel.
								
	oldDictOfSel := Dictionary new.
	
	[oldDictOfSel ~= dictOfSel]
		whileTrue: [ oldDictOfSel := dictOfSel copyDict.
						self performOneIterationOfCopying: dictOfSel].
	
	self updateDictOfSelectorsWith: dictOfSel.