parsing
parseEventICalData: anEventNode

	| resultProperties iCalString parsedEventNode |
	
	resultProperties := self parseEventInformation: anEventNode.
	
	parsedEventNode :=  (anEventNode firstTagNamed: #'cal:calendar-data').
	parsedEventNode ifNil: [parsedEventNode := (anEventNode firstTagNamed: 
		#'calendar-data')].
	iCalString := parsedEventNode contents first string.
	resultProperties at: #calendarData put: (self parseICalData: iCalString withInternetLineEndings).
	"resultProperties removeKey: #'cal:calendar-data' ifAbsent: [].	"

	^ resultProperties