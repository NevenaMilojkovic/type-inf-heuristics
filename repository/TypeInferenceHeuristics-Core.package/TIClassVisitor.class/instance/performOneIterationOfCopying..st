dependencies
performOneIterationOfCopying: dict

	dependencies keysAndValuesDo: [ :varNameTo :value | "value is of type Set"
						value do: [ :varNameFrom | 
								(dict at: varNameTo ifAbsentPut: [ Set new ]) addAll: (dict at: varNameFrom ifAbsent: [Set new])
							].
		].