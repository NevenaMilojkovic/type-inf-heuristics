initialization
registeredForAnnouncements
	^ (SystemAnnouncer uniqueInstance subscriptions subscriptions collect: [ :sub | sub subscriber ]) includes: self