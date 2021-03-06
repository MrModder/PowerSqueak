presentation loading tests
testCanLoadEmptyPresentation

	| directory errorReport |
	directory := self mockEmptyPresentationDirectory.
	[self loader loadPresentationFromDirectory: directory] valueSupplyingAnswer: true.
	errorReport := self loader slideErrors.
	self
		assert: (errorReport values select: [:each | each ~= 0]) isEmpty
		description: 'There should be 0 errors per slide for an empty presentation'