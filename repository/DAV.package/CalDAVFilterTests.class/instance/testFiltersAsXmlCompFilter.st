tests - xml
testFiltersAsXmlCompFilter
	
	| xmlWriter |
		
	xmlWriter := XMLWriter on: (WriteStream on: '').	

	self filter: (CalDAVFilter type: 'c:comp-filter' attributes: #(('name' 'VCALENDAR'))).
	self filter printStartTagOn: xmlWriter. 
	self filter printLastTagOn: xmlWriter.
	self assert: (xmlWriter stream contents matchesRegex: '\s*<c\:comp-filter name="VCALENDAR">\s*</c\:comp-filter>').
	