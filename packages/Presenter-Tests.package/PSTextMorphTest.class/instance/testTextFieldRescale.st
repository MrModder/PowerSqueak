rescaling tests
testTextFieldRescale

	| oldSize |
	oldSize := self textField textScale.
	self slide extent: self slide extent * 2.
	
	self 
		assert: oldSize * 2 
		equals: self textField textScale