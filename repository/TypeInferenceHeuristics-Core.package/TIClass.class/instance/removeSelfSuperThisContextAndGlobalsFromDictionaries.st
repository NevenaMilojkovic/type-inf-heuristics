findTypesOfVariables
removeSelfSuperThisContextAndGlobalsFromDictionaries
							
	self removeFromDictionaries: #self.
	self removeFromDictionaries: #super.
	self removeFromDictionaries: #thisContext.
	self removeGlobalsFromDictionaries.