announcements
createAnnouncements
	"SystemAnnouncer uniqueInstance weak announcer inspect, then go to announcer and execute self unsubscribe: TIDictionary in case you want to unsubscribe"
	self assert: [((SystemAnnouncer uniqueInstance subscriptions subscriptions collect: [ :sub | sub subscriber ]) count: [ :each | each = self]) <= 1].
	RPackage organizer announcer weak
		when: RPackageUnregistered send: #packageUnregistred: to: self.
		
	SystemAnnouncer uniqueInstance weak
		when: ClassRemoved send: #classRemoved: to: self;
		when: ClassReorganized send: #classReorganized: to: self;
		
		when: MethodAdded send: #methodAdded: to: self;
		when: MethodModified send: #methodModified: to: self;
		when: MethodRemoved send: #methodRemoved: to: self;
	
		when: ProtocolRemoved send: #classReorganized: to: self.
		
