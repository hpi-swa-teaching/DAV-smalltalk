tests - xml
testFiltersAsXmlTimeRange
	
	| xmlWriter output |
		
	xmlWriter := XMLWriter on: (WriteStream on: '').	
	self filter type: 'c:time-range'.
	self filter attributes: #(('start' '20160321T140000')('end' '20160322T140000')).
	self filter printWithEmpyLastTagOn: xmlWriter.
	output := xmlWriter flush stream contents.
	
	 self assert: (output value matchesRegex:
		'(\s*<c\:time-range end="20160322T140000" start="20160321T140000"/>\s*)|',
		'(\s*<c\:time-range  start="20160321T140000" end="20160322T140000"/>\s*)')