---
layout: default
title: Home
description: Documentation for the Dartmouth Focus App
---

# Dartmouth Focus App Documentation

Welcome to the Dartmouth Focus App documentation. This guide provides comprehensive information about the app's features, installation process, and development guidelines.

## Quick Links

- [Installation Guide](#installation)
- [Project Structure](#project-structure)
- [Development Guidelines](#development-guidelines)
- [Machine Learning Features](#machine-learning-features)

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

- `Earable-iOS/`: Main application code
  - `ViewControllers/`: UI controllers
  - `Models/`: Data models
  - `Services/`: Business logic and services

- `Earable-iOS-SDK/`: Core SDK implementation
  - `EarableMobileLibrary/`: Main SDK code
  - `EEdgeTestApp/`: Test application

## Development Guidelines

We follow the MVVM (Model-View-ViewModel) architecture pattern:

- **Models**: Data structures and business logic
- **Views**: UI components and layouts
- **ViewModels**: Data binding and UI logic

## Machine Learning Features

The app includes advanced ML-based focus tracking:

- Real-time focus monitoring
- Cognitive performance analysis
- Focus score processing
- Signal processing pipeline 