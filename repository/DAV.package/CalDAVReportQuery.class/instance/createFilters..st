initialization
createFilters: anArray

	| filter |

	anArray do: [ :aFilterArray |
		filter := CalDAVFilter new.
		filter type: aFilterArray first asString.
		filter attributes: aFilterArray second.
		self addFilter: filter]