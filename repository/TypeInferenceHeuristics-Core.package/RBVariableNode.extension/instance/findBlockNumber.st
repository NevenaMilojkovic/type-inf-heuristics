*TypeInferenceHeuristics-Core
findBlockNumber
	| count block|
	"this must be done in descedant order, since it may be that there are some block in method in the upper level than self node, which are already closed, and they will be missed if the traversing order is ascendant"
	count := 0.
	block := [ :node | 
		node children do: [ :nodeChild | 
				"it is really important to be just equal and not identity check.
				if it is identity check, this will return an inner node as block number for an argument or temporary of outer block used within the inner block.
				if it is equality check, this method will exit as soon as an argument or temporary of an block has the same name as self, and the block whose argument or temporary it is - encloses self.
				checking enclosing is important since there may be a closed block somewhere before in the code that may have an argument with the same name as self, but is not enclosing self"
				(nodeChild = self  and: [nodeChild innerestEnclosingBlockNode isEnclosingBlockOfNode: self]) ifTrue: [ ^ count ].
				nodeChild isBlock ifTrue: [ count := count + 1 ].
				block value: nodeChild 
		]].
	block value: self methodNode.
	self error: 'Should have returned before'. 
	^ 0