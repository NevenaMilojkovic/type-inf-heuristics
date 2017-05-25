*TypeInferenceHeuristics-Core
selectorsInInitializeProtocols
	"this method returns a set of selectors from protocols that create new objects;
	these protocols are #initialize, #initialization and #'instance creation'"
	^ (((self withAllSuperclasses flatCollect: 
			[ :class | class organization protocolOrganizer protocols])
		select: [ :protocol | protocol isInitializeProtocol])
			flatCollect: [ :protocol | protocol methods ]) asSet