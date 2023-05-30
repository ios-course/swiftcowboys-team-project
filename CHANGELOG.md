# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

-  Created initial Xcode project with `MVVM` folder architecture - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Added `SwiftFormat` with rules as part of the build phase - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Added `SwiftLint` with rules as part of the build phase - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Added `.gitignore` file - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Added this `CHANGELOG.md` file - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Added an empty `README.md` file - [#30](https://github.com/ios-course/swiftcowboys-team-project/pull/30)
-  Added images from `Figma` to the assets - [#33](https://github.com/ios-course/swiftcowboys-team-project/pull/33)
-  Added `Color` extension - [#37](https://github.com/ios-course/swiftcowboys-team-project/pull/37)
-  Added `AppScheme` enum (with tests) according to the project color scheme - [#37](https://github.com/ios-course/swiftcowboys-team-project/pull/37)
-  Added `DuringSleepView` according to the app design - [#40](https://github.com/ios-course/swiftcowboys-team-project/pull/40)
-  Added `AppImage` enum  (with tests) with images according to project assets - [#51](https://github.com/ios-course/swiftcowboys-team-project/pull/51)
-  Added `Image` extension - [#51](https://github.com/ios-course/swiftcowboys-team-project/pull/51)
-  Added `RELEASENOTES.md` file with initial structure - [#58](https://github.com/ios-course/swiftcowboys-team-project/pull/58)
-  Added `RoundedRectangleView` according to the app design - [#55](https://github.com/ios-course/swiftcowboys-team-project/pull/55)
-  Added `SleepSetupView` with subviews according to the app design - [#39](https://github.com/ios-course/swiftcowboys-team-project/pull/39)
-  Added accidentally uncommitted changes for `SleepSetupView` - [#67](https://github.com/ios-course/swiftcowboys-team-project/pull/67)
-  Added `RoundedRectangleBlue` as `ButtonStyle` - [#70](https://github.com/ios-course/swiftcowboys-team-project/pull/70)
-  Added an extension for the `UserDefaults` - [#84](https://github.com/ios-course/swiftcowboys-team-project/pull/84)

### Changed

- Filled the `README` with the description and "Authors" section - [#31](https://github.com/ios-course/swiftcowboys-team-project/pull/31)
- Removed all images with 1x scale from project assets - [#61](https://github.com/ios-course/swiftcowboys-team-project/pull/61)
- Removed spaces from all project folder/file names - [#62](https://github.com/ios-course/swiftcowboys-team-project/pull/62)
- Changed `SwiftFormat` script to support `arm64` - [#73](https://github.com/ios-course/swiftcowboys-team-project/pull/73)
- Updated implementation of `SleepSetupView` to match the mockups - [#74](https://github.com/ios-course/swiftcowboys-team-project/pull/74)
- Updated implementation of `DuringSleepView` to match the mockups - [#76](https://github.com/ios-course/swiftcowboys-team-project/pull/76)
- Removed empty `SleepTrackerTests.swift` file from the `SleepTrackerTests` target - [#82](https://github.com/ios-course/swiftcowboys-team-project/pull/82)
- Moved unit tests from the `SleepTrackerUITests` target into the `SleepTrackerTests` target - [#82](https://github.com/ios-course/swiftcowboys-team-project/pull/82)
- Removed the `SleepTrackerUITests` target - [#82](https://github.com/ios-course/swiftcowboys-team-project/pull/82)
- Added extension for the `Date` - [#87](https://github.com/ios-course/swiftcowboys-team-project/pull/82)

### Fixed

- Fixed the bug after merging when initial information appeared in the`README.md` after the merging - [#32](https://github.com/ios-course/swiftcowboys-team-project/pull/32/files)

- Fixed an error while building the `Sleep tracker/Tests` target - [#34](https://github.com/ios-course/swiftcowboys-team-project/pull/34)

- Fixed unit tests (to make sure all tests pass) - [#82](https://github.com/ios-course/swiftcowboys-team-project/pull/82)
