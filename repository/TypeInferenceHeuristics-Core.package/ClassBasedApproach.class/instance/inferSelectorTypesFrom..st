findTypesOfVariables
inferSelectorTypesFrom: dictOfSelectorRootTypes

	dictOfSelectorRootTypes keysAndValuesDo: [ :key :value |	 
		((value = (Set with: Object)) or: [ value = (Set with: ProtoObject)])
				ifTrue: [ selectorTypes at: key put: value ]
				ifFalse: [ |classes|
								classes := (value flatCollect: [ :class | class withAllSubclasses]) select: [ :class | class isAbstract not ].
								selectorTypes at: key put: classes.
							
							].											
	]

	