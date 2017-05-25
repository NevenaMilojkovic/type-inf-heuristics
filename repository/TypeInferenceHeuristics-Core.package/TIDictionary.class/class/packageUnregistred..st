announcements
packageUnregistred: anAnnouncement
	anAnnouncement package classes do: [ :class | class methods do: [ :method | self analyzeOldMethod: method ]].	