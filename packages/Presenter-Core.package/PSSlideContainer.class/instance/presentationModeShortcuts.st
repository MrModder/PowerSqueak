accessing
presentationModeShortcuts
	"{character that trggers event .  action block . discription}"
	^ {
		{$i . [self toggleInteractivity] . 'toggles iteractive/non interactive mode'}
	}, self sharedShortcuts