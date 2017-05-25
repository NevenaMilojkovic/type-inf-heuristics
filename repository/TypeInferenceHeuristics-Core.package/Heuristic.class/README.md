I'm the abstract class representing heuristics used to infer types of variables. My subclasses are the actual heuristic implementations.

I am responsible for sorting the set of possible types of variables, based on the implemented heursitic. 

The main contributors are classes Approach and TIHeuristicResults. Approach is my ``superior", and TIHeuristicResults is where I store results about this heuristic, implemented in the approach represented by class Approach.

Instance Variables
	approach		Approach
	results		TIHeuristicResults
	selectorsSortedTypes		Dictionary<String, OrderedCollection<Class>>
	assignmentsSortedTypes		Dictionary<String, OrderedCollection<Class>>