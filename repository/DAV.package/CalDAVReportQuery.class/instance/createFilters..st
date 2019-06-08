as yet unclassified
createFilters: anArray

	| filter |

	anArray do: [ :aFilterArray |
		filter := Filter new.
		filter type: aFilterArray first asString.
		filter attributes: aFilterArray second.
		self addFilter: filter]