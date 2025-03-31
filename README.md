# Dartmouth Focus App Documentation

Welcome to the Dartmouth Focus App documentation. This guide provides comprehensive information about the app's features, installation process, and development guidelines.

## Table of Contents
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Development Guidelines](#development-guidelines)
- [Machine Learning Features](#machine-learning-features)
- [Additional Resources](#additional-resources)

## Installation

### Prerequisites
- Xcode 14.0 or later
- iOS 15.0+ deployment target
- CocoaPods package manager

### Setup Steps
1. Clone the repositories:
   ```bash
   git clone [repository-url] Earable-iOS
   git clone [repository-url] Earable-iOS-SDK
   ```

2. Install dependencies:
   ```bash
   cd Earable-iOS && pod install
   cd ../Earable-iOS-SDK && pod install
   ```

## Project Structure

The project is organized into several key components:

### Main Application (Earable-iOS)
- `ViewControllers/`: UI controllers and views
  - `LoginViewController`: Handles user authentication
  - `FocusDashboardView`: Main dashboard interface
  - `MainFeatureView`: Core app features
- `Models/`: Data models and business logic
- `Services/`: Business logic and services

### SDK Implementation (Earable-iOS-SDK)
- `EarableMobileLibrary/`: Core SDK implementation
  - Focus tracking components
  - BLE connectivity
  - Signal processing
- `EEdgeTestApp/`: Test application for SDK features

## Development Guidelines

We follow the MVVM (Model-View-ViewModel) architecture pattern:

### Model Layer
- Data structures
- Business logic
- Data persistence
- Network operations

### View Layer
- UI components
- User interaction
- Visual elements
- Storyboards/XIBs

### ViewModel Layer
- Data binding
- UI logic
- State management
- Data transformation

## Machine Learning Features

The app includes advanced ML-based focus tracking:

### Focus Monitoring
- Real-time cognitive state analysis
- Focus score processing
- Attention level tracking
- Performance metrics

### Signal Processing
- EEG signal analysis
- Noise reduction
- Feature extraction
- Pattern recognition

## Additional Resources

- [SDK Documentation](./Earable-iOS-SDK/Documents/html/index.html)
- [Test App Examples](./Earable-iOS-SDK/EEdgeTestApp)
- [API Reference](./Earable-iOS-SDK/LibraryDoc)

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is proprietary and confidential. All rights reserved.
