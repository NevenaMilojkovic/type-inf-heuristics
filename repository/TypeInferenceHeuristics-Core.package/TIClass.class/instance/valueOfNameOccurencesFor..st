findTypesOfVariables
valueOfNameOccurencesFor: aClass
	^ ((aClass withAllSubclasses reject: [ :cl | cl isAbstract ]) inject: 0 into: [ :sum :el | sum + (ClassNameOccurrenceDictionary at: el name asSymbol)])