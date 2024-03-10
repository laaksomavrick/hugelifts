PROJECT_NAME := "Hugelifts"

.PHONY: test
test:
	@xcodebuild test -project $(PROJECT_NAME).xcodeproj \
	   -scheme $(PROJECT_NAME) \
	   -sdk iphonesimulator \
	   -destination 'platform=iOS Simulator,name=iPhone 15,OS=17.2'

.PHONY: format
format:
	@swift package plugin --allow-writing-to-package-directory swiftformat
