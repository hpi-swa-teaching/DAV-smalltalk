parsing - helpers
createCalendarPropertyLookup: aCalendarNode

	| propertyLookup |

	propertyLookup := Dictionary new.

	CalDavCalendar calendarTags do: [:calendarTag | 
		(aCalendarNode firstTagNamed: calendarTag) ifNotNil: [:propertyNode | 			propertyLookup at: (self tagWithoutNamespace: calendarTag)
				put: propertyNode contentString]].

	^ propertyLookup