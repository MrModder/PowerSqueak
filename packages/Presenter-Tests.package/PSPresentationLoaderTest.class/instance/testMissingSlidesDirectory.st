directory checking
testMissingSlidesDirectory

	| directory |
	directory := PSMockFileDirectory named: 'myPresentation'.
	self assert: (self loader isValidPresentationDirectory: directory) equals: false.