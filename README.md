# Dartmouth Focus App

## Repository Links
- Main App: [Dartmouth Focus App](https://github.com/your-org/DartmouthFocusApp/tree/feature/FocusDartmouthApp)
- SDK: [Earable-iOS-SDK](https://github.com/your-org/Earable-iOS-SDK/tree/feature/FocusDartmouthApp)
- ML Library: [etensor](https://github.com/your-org/etensor/tree/feature/FocusDartmouthApp)

## Installation

### Prerequisites
- Xcode 14.0 or later
- iOS 15.0+ deployment target
- CocoaPods package manager
- Git version control

### Setup Steps
1. Clone the repositories:
```bash
git clone https://github.com/your-org/DartmouthFocusApp.git
git clone https://github.com/your-org/Earable-iOS-SDK.git
```

2. Install dependencies in both directories:
```bash
cd DartmouthFocusApp && pod install
cd ../Earable-iOS-SDK && pod install
```

3. Open the workspace:
```bash
open DartmouthFocusApp/DartmouthFocusApp.xcworkspace
```

## Project Structure

### Main Application (DartmouthFocusApp)

#### Core Modules
- `ViewControllers/`: UI Controllers and View Logic
  - `Authentication/`: User authentication flows
    - `LoginViewController`: Handles user login
    - `RegistrationViewController`: New user registration
    - `ResetPasswordViewController`: Password recovery
  - `Dashboard/`: Main app interface
    - `FocusDashboardView`: Focus monitoring dashboard
    - `StatisticsView`: Performance analytics
    - `SettingsView`: App configuration
  - `Focus/`: Focus tracking features
    - `FocusSessionViewController`: Active session management
    - `FocusHistoryViewController`: Past sessions view
    - `FocusSettingsViewController`: Focus parameters
  - `Common/`: Shared UI components
    - `CustomViews/`: Reusable UI elements
    - `Extensions/`: UIKit extensions
    - `Helpers/`: UI utility functions

- `Models/`: Data Structures
  - `User/`: User-related models
    - `UserProfile`: User information
    - `UserSettings`: App preferences
  - `Focus/`: Focus tracking models
    - `FocusSession`: Session data model
    - `FocusMetrics`: Performance metrics
    - `BrainWaveData`: EEG signal models
  - `Analytics/`: Analytics models
    - `PerformanceMetrics`: Focus performance
    - `SessionStatistics`: Historical data

- `Services/`: Business Logic
  - `NetworkService/`: API communication
    - `APIClient`: REST API wrapper
    - `WebSocketManager`: Real-time data
  - `StorageService/`: Data persistence
    - `CoreDataManager`: Local storage
    - `KeychainService`: Secure storage
  - `BluetoothService/`: Device connectivity
    - `BLEManager`: BLE operations
    - `DeviceSync`: Data synchronization
  - `MLService/`: ML operations
    - `FocusMLManager`: ML model management
    - `SignalProcessor`: Signal processing

#### Supporting Files
- `Resources/`: Asset files
  - `Images/`: App images
  - `Fonts/`: Custom fonts
  - `Localization/`: Language files
- `Configuration/`: App setup
  - `Info.plist`: App settings
  - `Configuration.plist`: Environment config
- `Documentation/`: Internal docs
  - `APIGuide/`: API documentation
  - `ArchitectureGuide/`: Design docs

### SDK Implementation (Earable-iOS-SDK)

#### Core Library
- `EarableMobileLibrary/`: Main SDK
  - `SignalProcessing/`: Signal handlers
    - `Filters/`: Signal filters
    - `Transformers/`: Data transformers
  - `MachineLearning/`: ML components
    - `Models/`: TFLite models
    - `Processors/`: Data processors
  - `Bluetooth/`: BLE stack
    - `Central/`: BLE central mode
    - `Peripheral/`: BLE peripheral
  - `DataManagement/`: Data handling
    - `Storage/`: Data persistence
    - `Sync/`: Cloud sync

#### Test Applications
- `EEdgeTestApp/`: SDK testing
  - `TestCases/`: Feature tests
  - `MockData/`: Test data
  - `UITests/`: Interface tests

## Machine Learning Features

### Focus Score Processing
The app uses advanced machine learning models to process and analyze focus levels in real-time. Here's how it works:

#### Core Components
1. **Focus Score Processor** (`EMLFocusScoreProcessor`)
   - Uses TensorFlow Lite model (`focus_score_model_v0.2.tflite`)
   - Input shape: [1, 7, 13] tensor
   - Processes EEG signals to generate focus scores
   - Real-time cognitive state analysis

2. **Focus Data Buffer** (`EMLFocusDataBuffer`)
   - Manages focus session data
   - Calculates average focus scores
   - Handles content switching based on focus levels
   - Implements adaptive volume control

3. **Brain Wave Analysis**
   - Processes 5 types of brain waves:
     - Delta (deep sleep)
     - Theta (drowsiness)
     - Alpha (relaxed)
     - Beta (active thinking)
     - Gamma (high concentration)

#### Focus Scoring System
- Score range: 0-100
- Real-time updates every 2 seconds
- Scoring criteria:
  - Below 30: Low focus
  - 30-80: Moderate focus
  - Above 80: High focus
- Session points:
  - +5 points for sessions > 15 minutes with score > 30
  - +10 points for sessions with score > 80

#### Adaptive Features
1. **Volume Control**
   - Automatically adjusts based on focus levels
   - Decreases volume when focus increases
   - Increases volume when focus decreases
   - Customizable thresholds

2. **Content Switching**
   - Monitors focus trends
   - Suggests content changes when focus patterns change
   - Integrates with recommendation system

### Accessing and Adjusting Features

#### Focus Tracking Configuration
```swift
// Initialize focus tracking
EMLFocusScoreProcessor.shared.configure()

// Set custom thresholds
EMLFocusDataBuffer.shared.setThresholds(
    lowFocus: 30,
    highFocus: 80
)

// Enable adaptive features
EMLFocusDataBuffer.shared.enableAdaptiveVolume = true
EMLFocusDataBuffer.shared.enableContentSwitching = true
```

#### Monitoring Focus Data
```swift
// Get real-time focus score
let currentScore = EMLFocusScoreDataBuffer.shared.avgFocusScore()

// Access brain wave data
let alphaWave = EMLAlphaScoreBuffer.shared.currentValue
let betaWave = EMLBetaScoreBuffer.shared.currentValue
```

#### Session Management
```swift
// Start focus session
EMLSignalManager.shared.startFocusSession()

// End session and get summary
let sessionSummary = EMLFocusDataBuffer.shared.sessionInfo
let averageScore = sessionSummary["averageScore"]
let sessionDuration = sessionSummary["settingDuration"]
```

## Development Guidelines

### MVVM Architecture
- **Models**: Data structures and business logic
- **Views**: UI components and layouts
- **ViewModels**: Data binding and UI logic

### Best Practices
1. Use SwiftUI for new UI components
2. Follow Apple's Human Interface Guidelines
3. Implement proper error handling
4. Add unit tests for critical components

## Additional Resources
- [SDK Documentation](./Earable-iOS-SDK/Documents/html/index.html)
- [API Reference](./Earable-iOS-SDK/LibraryDoc)
- [Test App Examples](./Earable-iOS-SDK/EEdgeTestApp)

## Contributing
Please read our [Contributing Guidelines](CONTRIBUTING.md) before submitting pull requests.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Code Examples

### Focus Session Management

```swift
// Initialize focus session
class FocusSessionManager {
    private let focusProcessor = EMLFocusScoreProcessor.shared
    private let signalManager = EMLSignalManager.shared
    private var currentSession: FocusSession?
    
    func startNewSession() {
        // Configure session
        let config = FocusSessionConfig(
            duration: 25 * 60, // 25 minutes
            targetScore: 80,
            adaptiveFeatures: true
        )
        
        // Start monitoring
        signalManager.startFocusSession(with: config) { [weak self] result in
            switch result {
            case .success(let session):
                self?.currentSession = session
                self?.monitorFocusLevels()
            case .failure(let error):
                self?.handleError(error)
            }
        }
    }
    
    private func monitorFocusLevels() {
        // Set up real-time monitoring
        focusProcessor.onFocusUpdate = { [weak self] score in
            // Update UI
            self?.updateDashboard(with: score)
            
            // Check for interventions
            if score < 30 {
                self?.suggestIntervention()
            }
        }
        
        // Monitor brain waves
        focusProcessor.onBrainWaveUpdate = { waves in
            // Process each wave type
            let alpha = waves.alpha
            let beta = waves.beta
            // Update visualization
            self.updateBrainWaveDisplay(waves)
        }
    }
}
```

### Custom Focus Interventions

```swift
// Implement custom focus interventions
extension FocusSessionManager {
    func suggestIntervention() {
        // Check current state
        let currentScore = focusProcessor.currentScore
        let sessionDuration = currentSession?.elapsedTime ?? 0
        
        // Determine appropriate intervention
        if sessionDuration > 20 * 60 { // After 20 minutes
            suggestBreak()
        } else if currentScore < 30 {
            adjustEnvironment()
        }
    }
    
    private func adjustEnvironment() {
        // Check noise levels
        let noiseLevel = EMLSignalManager.shared.getAmbientNoise()
        if noiseLevel > 60 { // dB
            // Suggest noise reduction
            NotificationCenter.default.post(
                name: .suggestNoiseReduction,
                object: nil
            )
        }
        
        // Check lighting
        if let brightness = UIScreen.main.brightness,
           brightness < 0.3 {
            // Suggest lighting adjustment
            NotificationCenter.default.post(
                name: .suggestLightingAdjustment,
                object: nil
            )
        }
    }
}
```

## Troubleshooting Guide

### Common Issues and Solutions

#### 1. Device Connection Issues
- **Problem**: Device not connecting or frequent disconnections
- **Solutions**:
  ```swift
  // 1. Check Bluetooth status
  if EMLBluetoothManager.shared.state != .poweredOn {
      // Guide user to enable Bluetooth
      showBluetoothAlert()
  }
  
  // 2. Reset connection
  EMLBluetoothManager.shared.resetConnection()
  
  // 3. Check signal strength
  let rssi = EMLBluetoothManager.shared.currentRSSI
  if rssi < -80 {
      // Suggest moving closer to device
      showProximityAlert()
  }
  ```

#### 2. Focus Score Issues
- **Problem**: Inconsistent or missing focus scores
- **Solutions**:
  ```swift
  // 1. Verify signal quality
  let signalQuality = EMLSignalManager.shared.getSignalQuality()
  if signalQuality < 0.7 {
      // Guide user on proper device placement
      showDevicePlacementGuide()
  }
  
  // 2. Check for interference
  if EMLSignalManager.shared.hasInterference {
      // Suggest moving away from electronic devices
      showInterferenceAlert()
  }
  ```

#### 3. App Performance Issues
- **Problem**: App becoming slow or unresponsive
- **Solutions**:
  ```swift
  // 1. Clear session cache
  EMLFocusDataBuffer.shared.clearCache()
  
  // 2. Reset ML processors
  EMLMachineLearningManager.shared.resetProcessors()
  
  // 3. Check memory usage
  let memoryUsage = getAppMemoryUsage()
  if memoryUsage > 80 {
      // Suggest app restart
      showMemoryWarning()
  }
  ```

### Debug Mode

Enable debug mode for detailed logging:
```swift
class DebugManager {
    static func enableDebugMode() {
        EMLLogger.shared.setLogLevel(.debug)
        EMLLogger.shared.enableFileLogging = true
        
        // Monitor critical events
        NotificationCenter.default.addObserver(
            forName: .EMLDeviceDidDisconnect,
            object: nil,
            queue: .main
        ) { notification in
            let reason = notification.userInfo?["reason"] as? String
            print("Device disconnected: \(reason ?? "unknown")")
        }
    }
}
```
