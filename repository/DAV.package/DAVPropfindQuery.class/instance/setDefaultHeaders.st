accessing
setDefaultHeaders	
	
	self
		headerAt: 'Prefer' put: 'return-minimal';
		headerAt: 'Depth' put: '1';
		headerAt: 'Content-Type' put: 'application/xml'