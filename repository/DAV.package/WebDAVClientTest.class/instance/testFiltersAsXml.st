tests - filters
testFiltersAsXml
	
		| filter xmlWriter output |
		
	xmlWriter := XMLWriter on: (WriteStream on: '').	
		
	filter := Filter new.
	filter type: 'c:comp-filter'.
	filter attributes: #(('name' 'VCALENDAR')).
	filter printStartTagOn: xmlWriter. 
	filter printLastTagOn: xmlWriter.
	
	self assert: xmlWriter flush stream contents = '
<c:comp-filter name="VCALENDAR"></c:comp-filter>'.
	
	
	xmlWriter := XMLWriter on: (WriteStream on: '').	
	filter := Filter new.
	filter type: 'c:time-range'.
	filter attributes: #(('start' '20160321T140000')('end' '20160322T140000')).
	filter printWithEmpyLastTagOn: xmlWriter.
	output := xmlWriter flush stream contents.
	
	 self assert: ((output value = '
<c:time-range end="20160322T140000" start="20160321T140000"/> ') or: (output value = '
<c:time-range  start="20160321T140000" end="20160322T140000"/> '))
	
	
	