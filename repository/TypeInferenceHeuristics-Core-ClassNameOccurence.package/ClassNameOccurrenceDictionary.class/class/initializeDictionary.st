initialization
initializeDictionary
	|visitor|
	dictionary ifNotNil: [ ^ self ].
	visitor := InitializeClassNameOccurenceDictVisitor new.
	dictionary := Dictionary new.
	SystemNavigation default allClasses 
			do: [ :class | (class inheritsFrom: TestCase) 
										ifFalse: [class methods do: [ :method | visitor visitMethodNode: method ast ]].
				] 
			displayingProgress: 'Initializing dictionary of name occurences'.