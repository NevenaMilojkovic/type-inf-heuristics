accessing
at: key
	^ self dictionary at: key ifAbsent: [ self defaultValue ]