slide management
selectSlideNumber: aNumber

	self currentSlideNumber: (self clampSlideNumber: aNumber).
	self slideContainer showSlide: self currentSlide.
	self changed: #slideNumberString