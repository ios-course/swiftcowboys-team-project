# Changelog

All notable changes to this project will be documented in this file.
The project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

-  Created initial Xcode project with `MVVM` folder architecture. Added `SwiftFormat`, `SwiftLint` with rules as part of the build phase. Added `.gitignore`, this `CHANGELOG.md` and an empty `README.md` file - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Filled the `README` with the description and "Authors" section - [#31](https://github.com/ios-course/swiftcowboys-team-project/pull/31)
-  Fixed the bug after merging when initial information appeared in the`README.md` - [#32](https://github.com/ios-course/swiftcowboys-team-project/pull/32/files)
-  Added images from `Figma` to the assets - [#33](https://github.com/ios-course/swiftcowboys-team-project/pull/33)
-  Fixed an error while building the `Sleep tracker/Tests` target - [#34](https://github.com/ios-course/swiftcowboys-team-project/pull/34)
-  Added `Color` extension and `AppScheme` enum (with tests) to reflect the project color scheme - [#37](https://github.com/ios-course/swiftcowboys-team-project/pull/37)
-  Created `SleepSetupView` with subviews: `AlarmSetupView`, `EstimatedSleepDurationLabelView`, `NoAlarmLabelView`, `RoundedAlarmView`, `WheelTimePickerView` - [#39](https://github.com/ios-course/swiftcowboys-team-project/pull/39)
-  Created `DuringSleepView` - [#40](https://github.com/ios-course/swiftcowboys-team-project/pull/40)
-  Added `Image` extension and `AppImage` enum (with tests) with images to reflect the project assets - [#51](https://github.com/ios-course/swiftcowboys-team-project/pull/51)
-  Created `RoundedRectangleView` - [#55](https://github.com/ios-course/swiftcowboys-team-project/pull/55)
-  Added `RELEASENOTES.md` file with initial structure - [#58](https://github.com/ios-course/swiftcowboys-team-project/pull/58)
-  Removed all images with 1x scale from project assets - [#61](https://github.com/ios-course/swiftcowboys-team-project/pull/61)
-  Removed spaces from all project folder/file names - [#62](https://github.com/ios-course/swiftcowboys-team-project/pull/62)
-  Fixed the implementation for `SleepSetupView` (committed missing changes) - [#67](https://github.com/ios-course/swiftcowboys-team-project/pull/67)
-  Created `RoundedRectangleBlue` as `ButtonStyle` - [#70](https://github.com/ios-course/swiftcowboys-team-project/pull/70)
-  Updated `SwiftFormat` build phases to be able to run linters on `arm64` - [#73](https://github.com/ios-course/swiftcowboys-team-project/pull/73)
-  Updated implementation of `SleepSetupView` to match the mockups. Renamed `EstimatedSleepDurationLabelView` to `MultilineCenteredLabelView` - [#74](https://github.com/ios-course/swiftcowboys-team-project/pull/74)
-  Updated implementation of `DuringSleepView` to match the mockups - [#76](https://github.com/ios-course/swiftcowboys-team-project/pull/76)
-  Removed the `SleepTrackerUITests` target. Unit tests now live in the new `SleepTrackerTests` target. Fixed failed unit tests - [#82](https://github.com/ios-course/swiftcowboys-team-project/pull/82)
-  Added the `UserDefaults+SharedAppPreferences` extension with unit tests - [#84](https://github.com/ios-course/swiftcowboys-team-project/pull/84)
-  Added the `Date+ShortComponents` extension  with unit tests - [#87](https://github.com/ios-course/swiftcowboys-team-project/pull/87)
-  Added the `SleepPageView` screen where user can set up an alarm and start the sleep tracking mode - [#88](https://github.com/ios-course/swiftcowboys-team-project/pull/88)
-  Updated `README.md` file with "Dev environment"/"Installation" sections. Updated the list of active contributors (authors). Updated dir structure with the `Docs` dir to store docs used in the repository - [#86](https://github.com/ios-course/swiftcowboys-team-project/pull/86)
-  Updated the app so that the `SleepPageView` is displayed when the app runs. Added the ability to navigate from `DuringSleepView` back to `SleepPageView` when clicking on the `Stop Sleeping` button. Removed unnecessary `ContentView`. The background image now ignores safe areas - [#91](https://github.com/ios-course/swiftcowboys-team-project/pull/91)
- Added `CGFloat` extension and `AppFontSize` enum with unit tests. Added `AppUIConstant` enum with unit tests - [#65](https://github.com/ios-course/swiftcowboys-team-project/pull/65)
