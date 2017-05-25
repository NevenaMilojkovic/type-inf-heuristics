accessing
at: aString ifAbsent: aBlockClosure 
	^ self dictionary at: aString ifAbsent: aBlockClosure