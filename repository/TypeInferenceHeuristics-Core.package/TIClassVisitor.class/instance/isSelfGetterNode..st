visitor-messages
isSelfGetterNode: aProgramNode
	aProgramNode isMessage ifFalse: [ ^ false ].
	aProgramNode methodNode methodClass isClass ifFalse: [ ^ false ]. "if the method is in trait, it will return false"
	(aProgramNode receiver isSelf) ifFalse: [ ^ false ].
	^ classInstanceVariableNames includes: aProgramNode selector
	
	