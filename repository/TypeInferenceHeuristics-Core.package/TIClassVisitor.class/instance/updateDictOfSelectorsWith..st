dependencies
updateDictOfSelectorsWith: dictOfSel
	
	dictOfSel keysAndValuesDo: [ :key :value | 
			value do: [ :sel | tiClass addMessageSend: sel toVariable: key ]
		]