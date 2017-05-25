accessing
addMessageSend: aSelector toVariable: varName
	(dictOfSelectors at: varName ifAbsentPut: [Set new] ) add: aSelector.