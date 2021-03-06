accessing
mockCompletePresentationDirectory

	| directory slidesDirectory |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {
			'slide1' -> {'1.morph'}.
			'slide2' -> {}.
			'slide3' -> {'1.morph' . '2.morph' . 'metadata.dict'}}.
		PSPresentationLoader layoutsDirectoryName -> {
			'layoutTest' -> {'metadata.dict'}}}.
	slidesDirectory := directory / PSPresentationLoader slidesDirectoryName.
	slidesDirectory / 'slide1' / '1.morph' contents: PSMockMorph new.
	slidesDirectory / 'slide3' / '1.morph' contents: PSMockMorph new.
	slidesDirectory / 'slide3' / '2.morph' contents: PSMockMorph new.
	slidesDirectory / 'slide3' / 'metadata.dict' contents: (PSMockDictionary new at: #isHidden put: true; yourself).
	^ directory