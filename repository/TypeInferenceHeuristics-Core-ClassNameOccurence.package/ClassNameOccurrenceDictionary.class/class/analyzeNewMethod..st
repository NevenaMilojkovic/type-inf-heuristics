adding
analyzeNewMethod: aCompiledMethod
	| visitor |
	(aCompiledMethod methodClass inheritsFrom: TestCase) 
				ifFalse: [ visitor := InitializeClassNameOccurenceDictVisitor new.
								visitor visitMethodNode: aCompiledMethod ast.
							].