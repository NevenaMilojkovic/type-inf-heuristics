A TIClass is class representing class being analyzed.
It has two instance variables:
	- class <Class>
	- dictOfSelectors:  Dictionary <String, set<String>>
	- varsWithNoSelectors: Dictionary <String, Set new>
	- dynamicTypes: Dictionary<String, Dictonary<String, int>>
	- approaches: OrderedCollection<Approach (OptimisticApproach, and PessimisticApproach)>