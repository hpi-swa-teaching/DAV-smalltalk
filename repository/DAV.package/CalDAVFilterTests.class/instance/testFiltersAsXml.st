tests - xml
testFiltersAsXml
	
	| xmlWriter output |
		
	xmlWriter := XMLWriter on: (WriteStream on: '').	

	self filter: (CalDAVFilter type: 'c:comp-filter' attributes: #(('name' 'VCALENDAR'))).
	self filter printStartTagOn: xmlWriter. 
	self filter printLastTagOn: xmlWriter.
	self assert: (xmlWriter stream contents matchesRegex: '\s*<c\:comp-filter name="VCALENDAR">\s*</c\:comp-filter>').
	
	xmlWriter := XMLWriter on: (WriteStream on: '').	
	self filter type: 'c:time-range'.
	self filter attributes: #(('start' '20160321T140000')('end' '20160322T140000')).
	self filter printWithEmpyLastTagOn: xmlWriter.
	output := xmlWriter flush stream contents.
	
	 self assert: (output value matchesRegex:
		'(\s*<c\:time-range end="20160322T140000" start="20160321T140000"/>\s*)|',
		'(\s*<c\:time-range  start="20160321T140000" end="20160322T140000"/>\s*)')