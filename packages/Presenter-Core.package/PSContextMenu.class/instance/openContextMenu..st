context menu
openContextMenu: anObject

	self
		setInvokingView: anObject;
		popUpEvent: anObject activeHand lastEvent in: anObject world