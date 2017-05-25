announcements
protocolRemoved: anAnnouncement
	|protocol|
	protocol := anAnnouncement classReorganized organization protocolOrganizer protocols detect: [ :pr | pr name = anAnnouncement protocol ] ifNone: [  ].
 	protocol ifNotNil: [protocol methods do: [ :method | self analyzeOldMethod: method ]]