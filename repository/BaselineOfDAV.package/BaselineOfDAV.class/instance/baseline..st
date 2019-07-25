baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'ICal' with: [
					spec 
						className: 'ConfigurationOfICal';
						repository: 'github://codezeilen/ical-smalltalk/repository'];
				package: 'DAV' with: [spec requires: #('ICal')];
				yourself.
			spec
				group: 'default' with: #('DAV');
				group: 'tests' with: #('DAV')];
				yourself