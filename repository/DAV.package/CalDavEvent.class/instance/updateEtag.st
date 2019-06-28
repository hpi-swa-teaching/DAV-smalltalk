manipulating
updateEtag

	| newEtag |

	newEtag := self client fetchEtagOfEventFrom: self url asString.
	self etag: newEtag.
	
	^ self
