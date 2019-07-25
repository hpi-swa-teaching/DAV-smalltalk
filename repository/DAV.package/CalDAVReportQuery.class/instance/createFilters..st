initialization
createFilters: anArray

	| filter |

	anArray do: [ :aFilterArray |
		filter := CalDAVFilter new
			type: aFilterArray first asString;
			attributes: aFilterArray second.
		self addFilter: filter
		]