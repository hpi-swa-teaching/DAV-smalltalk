initialization
setDefaultHeaders	
	
	self
		headerAt: 'Prefer' put: 'return-minimal';
		headerAt: 'Depth' put: '0';
		headerAt: 'Content-Type' put: 'application/xml'