toolbuilder
createSlideContainerIn: slideViewport
	
	self slideContainer: PSSlideContainer new.
	self slideContainer setModel: self.
	slideViewport 
		addMorph: self slideContainer 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))