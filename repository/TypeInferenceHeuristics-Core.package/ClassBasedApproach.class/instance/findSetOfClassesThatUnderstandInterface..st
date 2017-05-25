findTypesOfVariables
findSetOfClassesThatUnderstandInterface: aSet
	"returns the set of classes understanding the set of messages aSet"
	|roots|
	roots := ProtoObject findSubclassesThatUnderstandSelectors: aSet.
	((roots = (Set with: Object)) or: [ roots = (Set with: ProtoObject)])
		ifTrue: [ ^ roots ].
	^ (roots flatCollect: [ :class | class withAllSubclasses]) select: [ :class | class isAbstract not ]