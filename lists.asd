(defsystem :lists
	:components (
		(:module  :src
							:components (
														(:file "packages")
														(:module  :tasks
																			:depends-on ("packages" "data" "ui")
																			:components (
																				(:file "tasks")))
														(:module  :data
																			:depends-on ("packages")
																			:components (
																				(:file "data")))
														(:module  :ui
																			:depends-on ("packages" "data")
																			:components (
																				(:file "ui")))))))
