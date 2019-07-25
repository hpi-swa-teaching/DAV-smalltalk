manipulating
updateEtag

	self etag: (self client fetchEtagOfEventFrom: self url asString).
	
	^ self
