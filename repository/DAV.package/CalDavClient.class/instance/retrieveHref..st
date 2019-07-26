parsing - helpers
retrieveHref: anEventNode

	| hrefNode |
	
	hrefNode := anEventNode firstTagNamed: #'d:href'.
	
	^ hrefNode ifNil: [''] ifNotNil: [hrefNode contentString]