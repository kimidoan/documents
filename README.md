# Dartmouth Focus App

## Overview
The Dartmouth Focus App is a specialized version of the Earable iOS application focused on cognitive performance tracking and focus monitoring. The app utilizes advanced machine learning algorithms to process EEG signals in real-time, providing users with immediate feedback about their cognitive state and focus levels.

## Installation

### Prerequisites
- Xcode 14.0 or later
- iOS 15.0+ deployment target
- CocoaPods package manager
- Git version control
- Swift 5.0+
- Minimum iOS target: iOS 15.0

### Setup Steps
1. Clone the repositories:
```bash
git clone [repository-url] Earable-iOS
git clone [repository-url] Earable-iOS-SDK
git clone [repository-url] etensor
```

2. Install dependencies:
```bash
cd Earable-iOS && pod install
cd ../Earable-iOS-SDK && pod install
```

## Project Structure

### Main Application (Earable-iOS)
The application follows MVVM architecture with the following structure:

#### Core Modules
- `App/`: Application setup and configuration
  - `AppDelegate.swift`: Application lifecycle management
  - `SceneDelegate.swift`: UI scene management
  - `AppConfiguration/`: Environment and feature flags

#### Features
- `Scenes/`: Feature-specific implementations
  - `Login/`: Authentication module
    - `LoginView.swift`: Login interface
    - `LoginViewModel.swift`: Authentication logic
    - `LoginModels.swift`: Data models
  - `FocusDashboard/`: Main dashboard
    - `FocusDashboardView.swift`: Dashboard UI
    - `FocusDashboardViewModel.swift`: Focus data processing
    - `FocusGraphView.swift`: Focus visualization
  - `MainFeature/`: Core functionality
    - `MainFeatureView.swift`: Main interface
    - `FocusTrackingView.swift`: Real-time tracking
    - `SettingsView.swift`: User preferences

#### Services
- `Services/`: Business logic and data handling
  - `NetworkService/`: API communication
  - `BluetoothService/`: Device connectivity
  - `DataProcessingService/`: Signal processing
  - `StorageService/`: Data persistence

#### Utils
- `Common/`: Shared utilities
  - `Extensions/`: Swift extensions
  - `Constants/`: Global constants
  - `Protocols/`: Shared protocols
  - `UI/`: Reusable UI components

### SDK Implementation (Earable-iOS-SDK)
Core functionality for device interaction and signal processing:

#### Core Components
- `EarableMobileLibrary/`: Main SDK implementation
  - `DeviceManagement/`: Device handling
    - `EarableDevice.swift`: Device representation
    - `DeviceScanner.swift`: BLE scanning
    - `ConnectionManager.swift`: Connection handling
  - `SignalProcessing/`: Data processing
    - `SignalProcessor.swift`: Raw signal processing
    - `FilterPipeline.swift`: Signal filtering
    - `FeatureExtractor.swift`: Data feature extraction
  - `FocusTracking/`: Focus analysis
    - `FocusProcessor.swift`: Focus score calculation
    - `BrainwaveAnalyzer.swift`: EEG analysis
    - `CognitiveStateManager.swift`: State tracking

#### Testing
- `EEdgeTestApp/`: SDK testing application
  - `TestScenarios/`: Test cases
  - `MockData/`: Test data
  - `UITests/`: Interface testing

## Machine Learning Features

### Focus Score Processing
Detailed implementation of focus score calculation:

#### Signal Processing Pipeline
1. Raw Signal Acquisition
   - Sampling rate: 256 Hz
   - Resolution: 24-bit
   - Channels: 4 EEG channels

2. Preprocessing
   - Noise reduction using bandpass filters
   - Artifact removal
   - Signal normalization

3. Feature Extraction
   - Time-domain features
   - Frequency-domain features
   - Statistical features

4. Model Processing
   - TensorFlow Lite implementation
   - Input: Processed EEG features
   - Output: Focus score (0-100)
   - Update frequency: 2Hz

### Brain Wave Analysis
Comprehensive brainwave processing system:

#### Wave Types and Analysis
1. Delta Waves (0.5-4 Hz)
   - Deep sleep indicators
   - Meditation states
   - Processing: Low-pass filtering

2. Theta Waves (4-8 Hz)
   - Drowsiness detection
   - Deep relaxation states
   - Processing: Bandpass filtering

3. Alpha Waves (8-13 Hz)
   - Relaxed focus
   - Light meditation
   - Processing: Peak detection

4. Beta Waves (13-32 Hz)
   - Active thinking
   - Problem-solving states
   - Processing: High-pass filtering

5. Gamma Waves (32+ Hz)
   - High concentration
   - Complex processing
   - Processing: Advanced filtering

### Focus Scoring System
Adaptive scoring mechanism:

#### Score Components
- Base Score (0-100)
  - Real-time EEG analysis
  - Pattern recognition
  - Historical comparison

#### Adaptation Mechanisms
1. Volume Control
   - Dynamic adjustment based on focus
   - Threshold-based triggers
   - Gradual transitions

2. Content Adaptation
   - Focus-based content filtering
   - Difficulty adjustment
   - Learning rate optimization

## Development Guidelines

### MVVM Architecture Implementation

#### Model Layer
- Data structures
- Business logic
- Data validation
- State management

#### View Layer
- UI components
- User interaction
- Layout constraints
- Accessibility support

#### ViewModel Layer
- Data binding
- State transformation
- Command handling
- Navigation logic

### Coding Standards

#### Swift Style Guide
- Follow Swift API Design Guidelines
- Use Swift's type inference
- Implement proper error handling
- Use proper access control

#### Documentation
- Use markup comments
- Document public APIs
- Include usage examples
- Maintain changelog

### Testing Strategy

#### Unit Tests
- Test business logic
- Mock dependencies
- Test edge cases
- Maintain high coverage

#### Integration Tests
- Test component interaction
- Verify data flow
- Test real device scenarios

#### UI Tests
- Test user workflows
- Verify UI components
- Test accessibility

### Version Control

#### Git Workflow
- Feature branch workflow
- Pull request reviews
- Semantic versioning
- Clean commit history

#### Release Process
- Version tagging
- Release notes
- Documentation updates
- App Store submission

## Additional Resources
[To be populated with specific links and resources]

## Contributing
Please read our Contributing Guidelines before submitting pull requests.

## License
This project is licensed under the MIT License - see the LICENSE file for details. 
