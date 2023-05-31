# Changelog

All notable changes to this project will be documented in this file.
The project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

-  Created initial Xcode project with `MVVM` folder architecture. Added `SwiftFormat`, `SwiftLint` with rules as part of the build phase. Added `.gitignore`, this `CHANGELOG.md` and an empty `README.md` file - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Filled the `README` with the description and "Authors" section - [#31](https://github.com/ios-course/swiftcowboys-team-project/pull/31)
-  Fixed the bug after merging when initial information appeared in the`README.md` - [#32](https://github.com/ios-course/swiftcowboys-team-project/pull/32/files)
-  Added images from `Figma` to the assets - [#33](https://github.com/ios-course/swiftcowboys-team-project/pull/33)
-  Fixed an error while building the `Sleep tracker/Tests` target - [#34](https://github.com/ios-course/swiftcowboys-team-project/pull/34)
-  Added `Color` extension and `AppScheme` enum (with tests) according to the project color scheme - [#37](https://github.com/ios-course/swiftcowboys-team-project/pull/37)
-  Created `SleepPageView` with subviews: `AlarmSetupView`, `EstimatedSleepDurationLabelView`, `NoAlarmLabelView`, `RoundedAlarmView`, `WheelTimePickerView`, according to the app design - [#39](https://github.com/ios-course/swiftcowboys-team-project/pull/39)
-  Created `DuringSleepView` according to the app design - [#40](https://github.com/ios-course/swiftcowboys-team-project/pull/40)
-  Added `Image` extension and `AppImage` enum (with tests) with images according to project assets - [#51](https://github.com/ios-course/swiftcowboys-team-project/pull/51)
-  Created `RoundedRectangleView` according to the app design - [#55](https://github.com/ios-course/swiftcowboys-team-project/pull/55)
-  Added `RELEASENOTES.md` file with initial structure - [#58](https://github.com/ios-course/swiftcowboys-team-project/pull/58)
-  Removed all images with 1x scale from project assets - [#61](https://github.com/ios-course/swiftcowboys-team-project/pull/61)
-  Removed spaces from all project folder/file names - [#62](https://github.com/ios-course/swiftcowboys-team-project/pull/62)
-  Added accidentally uncommitted changes for `SleepSetupView` - [#67](https://github.com/ios-course/swiftcowboys-team-project/pull/67)
-  Created `RoundedRectangleBlue` as `ButtonStyle` - [#70](https://github.com/ios-course/swiftcowboys-team-project/pull/70)
-  Changed `SwiftFormat` script to support `arm64` - [#73](https://github.com/ios-course/swiftcowboys-team-project/pull/73)
-  Updated implementation of `SleepSetupView` to match the mockups. Renamed `EstimatedSleepDurationLabelView` to `MultilineCenteredLabelView` - [#74](https://github.com/ios-course/swiftcowboys-team-project/pull/74)
-  Updated implementation of `DuringSleepView` to match the mockups - [#76](https://github.com/ios-course/swiftcowboys-team-project/pull/76)
-  Removed empty `SleepTrackerTests.swift` file from the `SleepTrackerTests` target. Removed the `SleepTrackerUITests` target. Unit tests from the `SleepTrackerUITests` target moved into the `SleepTrackerTests` target. Fixed unit tests (to make sure all tests pass) - [#82](https://github.com/ios-course/swiftcowboys-team-project/pull/82)
-  Added an extension `UserDefaults+SharedAppPreferences` for the `UserDefaults` with tests - [#84](https://github.com/ios-course/swiftcowboys-team-project/pull/84)
-  Added extension `Date+ShortComponents`for the `Date` - [#87](https://github.com/ios-course/swiftcowboys-team-project/pull/87)
