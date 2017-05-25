initialization
initializeWidgets

	variableModel  := self newList.
	variableModel help: 'List of variables'.

	assModel := self newList.
	assModel help: 'List of types explicitely assigned to the selected variable'.
	
	selectorModel := self newList.
	selectorModel help: 'List of selectors sent to the selected variable'.
	
	hierModel := self newList.
	hierModel help: 'List of root of hierarhies of possible types for the selected variable'.
	
	classModel := self newList.
	classModel help: 'List of possible types for the selected variable'.
	
	labelModel := self newLabel .
	labelModel label: 'Assignments'.
	labelModel2 := self newLabel .
	labelModel2 label: 'Selectors'.
	labelModel3 := self newLabel .
	labelModel3 label: 'Hierarchies'.
	labelModel4 := self newLabel .
	labelModel4 label: 'Classes'.
