presentation mode tests
testOccupiesWorldOnStep

	self enablePresentationMode.
	self slideContainer extent: self slideContainer extent / 2.
	self deny: self slideContainer occupiesWorld.
	self slideContainer step.
	self assert: self slideContainer occupiesWorld