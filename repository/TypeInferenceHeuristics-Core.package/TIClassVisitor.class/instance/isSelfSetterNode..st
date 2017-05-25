visitor-messages
isSelfSetterNode: aMessageNode
	aMessageNode methodNode methodClass isClass ifFalse: [ ^ false ]. "to filter out trait methods"
	(aMessageNode receiver isSelf) ifFalse: [ ^ false ].
	(aMessageNode selector occurrencesOf: $:) ~= 1 ifTrue: [ ^ false ].
	^ classInstanceVariableNames includes: (aMessageNode selector copyFrom: 1 to: aMessageNode selector size - 1)
	