findTypesOfVariables
sortSelectorsTypes: aSet
	^ aSet sorted: [ :class1 :class2 |(self valueOfNameOccurencesFor: class1) > (self valueOfNameOccurencesFor: class2)]