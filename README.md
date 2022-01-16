# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Avi Patel**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Created a seperate page for settings 
- [x] Added Functionality to change the tip percentages displayed in the UISegmentedControl
- [x] Added a button that can switch between dark mode and light mode for the entire app
- [x] Added functionality to split the tip for groups
- [x] Changed the accent colors in the app to be orange and added a calculate button 
- [x] Changed the keyboard for entering bill amounts to be the decimal pad and changed the keyboard for entering tip amounts to be a number pad




## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='tip-calc-recording.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

One of the biggest challenges I ran into was creating the functionality for Dark Mode and changing the tip percentages. Most of these challenges were because I wasn't familer with the View Controller Lifecycle and how UserDefaults works but after reading up a bit on the two topics I was able to implment both features pretty easily. Another challenge I had was creating the functionality for local currency but this was resolved after I googling a bit and readup up on Apple's official documentation.

## License

    Copyright [2022] [Avi Patel]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.