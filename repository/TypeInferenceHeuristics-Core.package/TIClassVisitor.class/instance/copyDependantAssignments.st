dependencies
copyDependantAssignments
	
	|dictOfAss oldDictOfAss |
	dictOfAss := self initializeDictOfAss.
								
	oldDictOfAss := Dictionary new.
	
	[oldDictOfAss ~= dictOfAss]
		whileTrue: [ oldDictOfAss := dictOfAss copyDict.
						self performOneIterationOfCopying: dictOfAss].
	
	self updateDictOfAssignmentsWith: dictOfAss.