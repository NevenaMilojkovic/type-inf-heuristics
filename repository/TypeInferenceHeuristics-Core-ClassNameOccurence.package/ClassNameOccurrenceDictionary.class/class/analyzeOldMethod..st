detracting
analyzeOldMethod: aCompiledMethod
	| visitor | 
	aCompiledMethod ifNil: [ ^ self ].
	(aCompiledMethod methodClass inheritsFrom: TestCase) 
			ifFalse: [ visitor := DetractionClassNameOccurrenceDictVisitor new.
						  visitor visitMethodNode: aCompiledMethod ast.
				].