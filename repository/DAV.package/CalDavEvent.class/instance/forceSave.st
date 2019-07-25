manipulating
forceSave

	| response |
	
	self validate.
	response := self client forcePushEvent: self.	
