selecting
removeSelectionDuring: aBlock

	| previousSelection |
	previousSelection := self selection.
	self removeSelection.
	aBlock value.
	self updateSelection: previousSelection.
