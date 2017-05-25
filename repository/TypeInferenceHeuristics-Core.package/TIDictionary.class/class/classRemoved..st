announcements
classRemoved: anAnnouncement 
	anAnnouncement classRemoved methods do: [ :method | self analyzeOldMethod: method ]	