tests - methods
testWebDAVEmptyQuery

	| emptyDAVQuery emptyDAVPropfindQuery emptyDAVReportQuery |

	emptyDAVQuery := WebDAVQuery empty.
	self assert: emptyDAVQuery body equals: String empty.
	
	emptyDAVPropfindQuery := DAVPropfindQuery empty.
	self assert: emptyDAVQuery body equals: String empty.
	
	emptyDAVReportQuery := DAVReportQuery empty.
	self assert: emptyDAVQuery body equals: String empty.