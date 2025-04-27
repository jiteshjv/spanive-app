# Spanive Mobile App

Spanive is a language learning app designed for use while driving, focusing on safe interactions and effective language learning.

## Build & Deploy Instructions

### Prerequisites

- Node.js and npm installed
- Xcode (latest version) for iOS development
- Apple Developer account for TestFlight deployment
- CocoaPods installed (`sudo gem install cocoapods`)

### Setup

1. Install dependencies:
   ```bash
   npm install
   ```

2. Add iOS platform:
   ```bash
   npm run add:ios
   ```

3. Sync the web assets with the native project:
   ```bash
   npm run sync
   ```

### Development

1. Open iOS project in Xcode:
   ```bash
   npm run open:ios
   ```

2. In Xcode:
   - Sign in to your Apple Developer account in Preferences > Accounts
   - Select your Team for the app
   - Update the Bundle Identifier if needed (default: io.spanive.app)
   - Set up your provisioning profile

### Testing on Simulator

1. Run the app in the iOS Simulator:
   - From Xcode, select an iOS simulator and click the Play button
   - Or use the command line: `npm run build:ios`

### Preparing for TestFlight

1. Configure app icons and splash screens
   - iOS icons are in the `ios/App/App/Assets.xcassets/AppIcon.appiconset`
   - Replace the default icons with your branded ones (using Xcode)

2. Build for App Store:
   - In Xcode, select Generic iOS Device as the target
   - Navigate to Product > Archive
   - Wait for the archiving process to complete

3. Upload to TestFlight:
   - In the Xcode Organizer (Window > Organizer), select your archive
   - Click "Distribute App"
   - Select "App Store Connect"
   - Follow the prompts to upload
   - Sign with your distribution certificate

4. TestFlight Configuration:
   - Log in to [App Store Connect](https://appstoreconnect.apple.com/)
   - Navigate to your app > TestFlight
   - Wait for processing (can take 15-30 minutes)
   - Add test information (what to test)
   - Set up test groups and add testers
   - For external testers, submit for Beta App Review

### Important Notes

- The app uses the Web Speech API for pronunciation features
- Ensure permissions are correctly set in the Info.plist for audio
- The app includes a service worker for offline functionality
- TestFlight builds require a Privacy Policy URL

## Features

- Voice Mode: Audio-based learning with vocabulary, mini-stories, podcasts
- Vocabulary feature with translations and pronunciations
- Safe driving mode interface designed for minimal distraction