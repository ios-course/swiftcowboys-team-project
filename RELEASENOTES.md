# Release notes

SleepTracker Mobile App

The file contain information about all changes affecting the use of the application.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

The format is based on [Release notes format](https://github.com/ios-course/swiftcowboys-team-project/wiki/Release-notes-format).

## [0.1.0] - [02.06.2023]

### Changes

- The application has two modes:
   - `Wake mode`: You can turn on the alarm and set the alarm time. The app will show you the predicted duration of your sleep. If you don't need the alarm, you can turn it off. Before going to bed, you can press the `Start sleeping` button and go to `During sleep mode`. 
   - `During sleep mode`: You can see the alarm time set or information that the alarm has not been set. After waking up, you can press the `Stop sleeping` button and go back to `Wake mode`, where you will see the alarm time set earlier.
- If you restart the application, it will start in the mode it was in when you closed it. The alarm settings will also be saved.
