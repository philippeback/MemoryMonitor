opening
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'MemoryMonitor')
		parent: #Tools;
		action: [ self open ];
		icon: self icon.