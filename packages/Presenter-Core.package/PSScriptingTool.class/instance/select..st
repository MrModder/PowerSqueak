accessing
select: aSymbol
	
	self 
		selectedMethod: aSymbol;
		updateCode;
		changed: #methodSelectorAndArguments