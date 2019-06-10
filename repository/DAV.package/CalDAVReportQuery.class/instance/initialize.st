initialization
initialize

	super initialize.
	self type: self defaultQueryType.
	self filters: OrderedCollection new.
	self objectURLs: OrderedCollection new