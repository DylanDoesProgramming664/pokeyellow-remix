CategoryNames:
	table_width 2, CategoryNames

	dw .Physical
	dw .Special
	dw .Mixed
	dw .Status

	assert_table_length NUM_CATEGORIES


.Physical: db "PHYSICAL/@"
.Special:  db "SPECIAL/@"
.Mixed:    db "MIXED/@"
.Status:   db "STATUS/@"
