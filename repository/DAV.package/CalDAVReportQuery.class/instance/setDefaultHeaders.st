initialization
setDefaultHeaders	
	
	super setDefaultHeaders.
	self headerAt: 'Depth' put: '1'