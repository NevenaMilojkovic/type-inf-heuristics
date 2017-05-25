initialization
initializeMe
	[	self initializeDictionary.
		self registeredForAnnouncements 
			ifFalse: [ self createAnnouncements. ].
	] fork.