findTypesOfVariables
findSetOfClassesThatUnderstandInterface: aSet
	"returns only root classes of the hierarchies understanding the set of messages aSet"
	^ ProtoObject findSubclassesThatUnderstandSelectors: aSet