instance creation
forTIClass: tiClass
	^ self new 
		tiClass: tiClass;
		classInstanceVariableNames: tiClass getClass allInstanceVariableNames;
		yourself