dragging out tests
testDraggingOutMiniatureRemovesSlide

	| theSlide |
	theSlide := self slides first.
	self dragOutMiniature: (self miniatureOf: theSlide).
	self deny: (self slides includes: theSlide).