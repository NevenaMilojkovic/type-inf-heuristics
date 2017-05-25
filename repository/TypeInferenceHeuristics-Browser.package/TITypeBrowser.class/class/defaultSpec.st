specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |	column add: #variableModel;
												newRow: [ :row | row add: #labelModel;
																			add: #labelModel2;
																			add: #labelModel3;
																			add: #labelModel4
						 									]
												height: 20; 
												newRow: [ :row | row
																		add: #assModel;
																		add: #selectorModel;
																		add: #hierModel;
																		add: #classModel] 
					];
		yourself