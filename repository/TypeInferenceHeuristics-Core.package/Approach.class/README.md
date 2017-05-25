An Approach is an abstract class representing the approch used to determine the set of types of a variable. 

Instance Variables
	tiClass:			TIClass
	heuristics:		OrderedCollection <Heuristic>
	assignmentTypes		Dictionary<String, Set of Classes>
	selectorTypes		Dictionary<String, Set of Classes>

tiClass
	- this variable represents the TIClass object for which the results contained in these approaches are stored

heuristics
	- this is an ordered collection which stores the heuristics used to sort the possible types for a variable; all the elements are of type Heuristic

assignmentTypes
	- for each variable in a class represented by tiClass stores the info about the type of a newly created object assigned to the variable, if any

selectorTypes
	- for each variable in a class represented by tiClass stores the set of messages sent to the variable, if any
