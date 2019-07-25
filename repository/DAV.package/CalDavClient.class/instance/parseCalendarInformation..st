parsing
parseCalendarInformation: responseContent

	| xmlNodes tagsMappendOnContent |
	xmlNodes := self parseXML: responseContent.

	self flag: #TODO. "This is brittle as it assumes that the prefixes stay the same for namespaces, e.g. D: for DAV "
	tagsMappendOnContent := CalDavCalendar calendarTags
				collect: [:calendarTag | (xmlNodes firstTagNamed: calendarTag)
							ifNotNil: [:xmlNode | calendarTag -> xmlNode contentString]].
						
	^ Dictionary newFrom: (tagsMappendOnContent reject: [:association | association isNil]) 