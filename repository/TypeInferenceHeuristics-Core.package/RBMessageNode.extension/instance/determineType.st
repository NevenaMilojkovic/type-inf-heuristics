*TypeInferenceHeuristics-Core
determineType
	"1. if right-hand side of the assignment is a new object creation"
	self isInitializeMessageNode ifTrue: [ ^ (Smalltalk at: self receiver name) ]. 
	
	
	"2. if right-hand side of the assignment is comparison resulting in Boolean"
	(#(= == < > <= >= ~=) includes: self selector) ifTrue: [ ^ Boolean ]. 
	
	"3. if right-hand side of the assignment is arithmetical operation resulting in Number"
	(((Number organization protocolOrganizer protocols select: 
			[:pr | #(#arithmetic #'mathematical functions' #'truncation and round off') includes: pr name])
				flatCollect: [ :pr | pr methods ])
					includes: self selector) ifTrue: [ ^ Number ].
					
	^ nil