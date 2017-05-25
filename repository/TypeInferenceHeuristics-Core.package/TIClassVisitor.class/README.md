A DuckTypedVisitor is class for visiting methods within the class whose name is 'className' and collect the messages sent to each of the variables (instance variables, method arguments, method temporaries, block arguments and block temporaries).
Tha class is making a difference between the variables within different scope of availability, having the same name and being declared in the same method. So, two 'each' variables in two blocks  in the same method won't be confused.

Instance Variables
	class:		<Class> class being analyzed
	dictOfSelectors		<Dictionary> keys are  variables of the class, methods and blocks, and values are sets of selectors sent to those variables
				Forms of keys:
				1. if variable is instance variable than the key is just the variable name
					For example "currentMethod"
				2. if the variable is an argument or temporary of the method, than the key is of form "methodSelector>>arg/temp>>variableName" 
					where "arg/temp" is either  "arg" the variable is a method argument or "temp" if the variable is a method temporary
					For example "visitMethodNode:>>arg>>aMethodNode" or "visitMethodNode:>>temp>>selector"
				3. if the variable is an argument or temporary of the block, than the key is of form method 
					"methodSelector>>orderedNumberOfOpenedBlock>>arg/temp>>variableName"
					where the each block in the method has its ordered number
					For example "visitMethodNode:>>1>>arg>>each" or "visitMethodNode:>>2>>temp>>methodName" 

	
	Helpful instance variables, to analyze method and being able to distinguish between variables with the same name between blocks.
		blockCount:		<Integer>
		currentMethod:		<RBMethodNode> of the current method being analyzed
		openBlocks:		<OrderedCollection of ints>