announcements
classReorganized: anAnnoucement 
	(anAnnoucement isKindOf: ProtocolRemoved) ifTrue: [ self protocolRemoved: anAnnoucement]