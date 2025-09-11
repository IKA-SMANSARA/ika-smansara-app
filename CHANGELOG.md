# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.3+29] - 2025-09-10

### Fixed
- **Unit Test Improvements**: Enhanced test suite reliability and output clarity
  - Fixed router provider test compilation errors due to outdated GoRouter API
  - Updated test to use current GoRouter API with ProviderContainer
  - Suppressed debug logging during test execution to reduce noise
  - Configured logger to only show warnings and errors in test environment
  - Improved test output readability and focus on actual issues

### Technical Improvements
- **Test Infrastructure**: Better test environment configuration
  - Environment-aware logging configuration
  - Cleaner test output with reduced debug noise
  - More reliable router provider testing
  - Enhanced test maintainability and debugging experience

## [1.2.2+29] - 2025-09-10

### Added
- **Enhanced Photo Picker**: Added camera and gallery options for image selection
  - Implemented modal bottom sheet with image source selection
  - Added camera capture functionality with proper permissions
  - Enhanced gallery picker with image compression (80% quality, max 1200x1200)
  - Improved error handling for image selection operations
  - Added fallback mechanisms for different device capabilities

### Changed
- **Update Profile Page Redesign**: Complete UI/UX overhaul to match contact_us_page design
  - Created new ProfileHeader widget with consistent blue theme
  - Restructured layout with SafeArea and SingleChildScrollView
  - Added form sections with bordered containers and proper spacing
  - Updated button styling to match app design system (blue.shade600)
  - Improved visual hierarchy with section titles and consistent typography
  - Enhanced photo display with centered container and proper aspect ratio
  - Added loading states with GlobalLoadingWidget integration

### Technical Improvements
- **Photo Section Enhancement**: Improved image handling and display
  - Added container with fixed dimensions (200px height) for consistent display
  - Implemented proper image centering with BoxFit.cover
  - Added placeholder and error states for better user experience
  - Enhanced image compression to reduce file sizes and improve performance
  - Updated selectedPoster method across all usage locations (3 files)

- **Code Architecture**: Better component organization and reusability
  - Created dedicated ProfileHeader widget for update profile page
  - Improved method signatures with proper parameter passing
  - Enhanced error handling and user feedback mechanisms
  - Better separation of concerns between UI components

## [1.2.1+29] - 2025-09-10

### Changed
- **Version Numbering Fix**: Corrected semantic versioning pattern
  - Fixed incorrect build number incrementing (was 1.2.0+30, +31, etc.)
  - Established proper patch version increments (1.2.0+29 → 1.2.1+29)
  - Build number after + remains constant at 29 for all releases
  - Consolidated all recent changes under single version 1.2.0+29

- **AGENTS.md Enhancement**: Improved developer documentation
  - Made file more concise while maintaining essential information
  - Better formatting and clearer code examples
  - Enhanced development workflow documentation

### Technical Improvements
- **Documentation Quality**: Enhanced changelog structure and versioning consistency
- **Developer Experience**: Improved AGENTS.md for better agent guidance
- **Version Management**: Established permanent versioning pattern for future releases

## [1.2.0+29] - 2025-09-10

### Fixed
- **Build Errors**: Resolved critical syntax error preventing app compilation
  - Fixed missing closing parenthesis in register_page.dart Scaffold widget
  - Ensured app builds successfully for all flavors (development, staging, production)
  - Verified APK generation works correctly

- **Register Page Structure**: Major code organization improvements
  - Refactored register page with modular architecture (methods/ and widgets/ folders)
  - Created reusable widget components (AlumniCheckbox, GraduateYearField, RegisterButton, LoginLink)
  - Extracted validation logic to separate RegisterFormValidation class
  - Improved code maintainability and separation of concerns

- **Form Validation**: Enhanced alumni registration with comprehensive validation
  - Added email format validation with regex patterns
  - Implemented password length validation (minimum 6 characters)
  - Added phone number validation (minimum 10 digits)
  - Created graduate year validation with range checking (1900-current year)
  - Conditional validation based on alumni status

- **Test File Fixes**: Resolved compilation errors in test suites
  - Fixed const constructor issues in get_campaign_detail_test.dart and login_test.dart
  - Updated Session and CampaignDocument test instances to use proper constructors
  - Fixed null handling in test mocks and assertions

- **QR Code Download Issues**: Complete resolution of QRIS download problems in Midtrans Snap
  - Fixed XHR network error in WebView blob download handler
  - Implemented dual-method JavaScript blob handler (fetch + XHR fallback)
  - Added alternative download methods when JavaScript execution fails
  - Fixed CallAsyncJavaScriptResult operator errors and compilation issues
  - Enhanced error handling with detailed user feedback and logging
  - Added QRIS-specific download detection and handling
  - Implemented screenshot capture as fallback for QR code extraction
  - Improved base64 validation and MIME type detection
  - Added data URL handling for direct QR code downloads
  - Fixed all compilation errors and warnings in webview_snap_page.dart

- **Auto-Refresh Bug**: Fixed question detail page not refreshing after creator closes question
  - Resolved infinite loop in GetQuestionDetailPage state management
  - Improved provider state reset mechanism
  - Fixed UI update issues when question status changes

- **Multiline Text Input**: Fixed Enter key not working for line breaks in text fields
  - Resolved Flutter assertion error in CustomTextField
  - Fixed keyboardType compatibility issues with multiline input
  - Updated ContactUsPage, GetQuestionDetailPage, and related forms
  - Ensured proper TextInputAction.newline behavior

- **Submit Button Issues**: Fixed various submit button activation problems
  - Resolved ContactUsPage submit button disabled state
  - Fixed double-click requirement on dialog submit buttons
  - Improved state management for form submissions
  - Enhanced user feedback with proper validation dialogs

- **Dialog UX Issues**: Improved dialog user experience across the app
  - Fixed double confirmation dialogs causing confusion
  - Enhanced dialog styling and button placement
  - Improved dialog context management and navigation
  - Added proper async handling for dialog operations

### Added
- **New Widget Components**: Multiple reusable UI components
  - `AlumniCheckbox`: Toggle for alumni status with state management
  - `GraduateYearField`: Conditional year input with validation
  - `RegisterButton`: Loading-aware submit button with proper styling
  - `LoginLink`: Navigation link to login page
  - `RegisterControllers`: Centralized form controller management
  - `NavigationCard`: Global widget for consistent navigation cards
  - `ContactUsHeader`: Dedicated header component for contact page
  - `ContactUsForm`: Self-contained form component with validation

- **Validation Methods**: Comprehensive form validation system
  - `RegisterFormValidation`: Email, password, phone, and graduate year validation
  - `RegisterHandler`: Form submission with loading states and error handling
  - `LoginFormMethods`: Extracted validation methods for login form
  - Proper error messaging in Indonesian language

- **Video Tutorial Page**: Dedicated fullscreen video tutorial experience
  - Created VideoTutorialPage with immersive video player
  - Added comprehensive video controls (play/pause, progress bar, fullscreen)
  - Implemented orientation lock for fullscreen mode
  - Added tap-to-show controls with auto-hide functionality
  - Integrated with account page tutorial navigation

- **Enhanced Validation**: Improved form validation and user feedback
  - Smart validation dialogs for empty content
  - Better error messages and user guidance
  - Consistent validation patterns across forms
  - Improved user experience with immediate feedback

### Changed
- **Register Page**: Complete UI/UX enhancement with alumni support
  - Added alumni checkbox with conditional graduate year field
  - Improved form layout and user experience
  - Enhanced validation feedback and error display
  - Better loading states and user feedback

- **Login Page Enhancements**: Multiple improvements to login functionality
  - Added password validation with minimum 8-character requirement
  - Added comprehensive email format validation with regex patterns
  - Updated login page background to white for cleaner appearance
  - Improved error display for authentication failures
  - Enhanced form validation and user feedback

- **My Donation Page Redesign**: Complete UI/UX overhaul with simplified and modern design
  - Removed header, stats, and carousel sections for cleaner, focused layout
  - Redesigned transaction list with modern card-based design and improved visual hierarchy
  - Fixed app bar color to app blue (#104993) for brand consistency
  - Fixed list view scrolling issue with proper Expanded layout structure
  - Changed donation amount text color to app blue (#104993) for brand consistency
  - Enhanced empty state design with consistent branding and better user guidance
  - Improved date formatting with user-friendly relative dates ("Hari ini", "Kemarin", etc.)
  - Added status badges with color-coded payment status indicators
  - Optimized layout for better mobile experience and touch interactions

- **Tutorial Navigation**: Improved user experience for tutorial access
  - Changed from dialog-based tutorial to dedicated fullscreen page
  - Enhanced video playback with better controls and responsiveness
  - Improved navigation flow from account page to tutorial

- **AGENTS.md Enhancement**: Comprehensive documentation improvements
  - Updated Freezed fromJson pattern to match actual codebase usage (manual implementation)
  - Added detailed code style guidelines and architecture patterns
  - Improved formatting with better code examples and explanations
  - Enhanced development workflow documentation
  - Added specific testing patterns and conventions

- **Home Page Design Update**: Visual improvements to home page layout
  - Replaced campaign icon with IKA Smansara logo SVG for better branding
  - Improved padding and responsive sizing for logo display
  - Enhanced visual hierarchy and user experience

- **UI Component Refactoring**: Major redesign of question-related UI components
  - Converted GetQuestionDetailPage from StatefulWidget to ConsumerWidget for better performance
  - Refactored HorizontalQuestionCard with consistent design pattern
  - Updated ContactUsPage with simplified state management
  - Improved widget separation and reusability

- **Code Architecture**: Enhanced code organization and maintainability
  - Extracted ContactUsForm and ContactUsHeader into separate widget files
  - Created NavigationCard global widget for consistent navigation UI
  - Improved separation of concerns between UI and business logic
  - Better error handling and state management patterns

### Technical Improvements
- **Code Architecture**: Enhanced maintainability with clean separation
  - Better folder structure following established patterns
  - Improved widget reusability and component isolation
  - Enhanced error handling and state management
  - Consistent code style and formatting
  - Converted multiple pages from ConsumerStatefulWidget to ConsumerWidget

- **Video Player Integration**: Enhanced video handling and controls
  - Added VideoPlayerController with proper lifecycle management
  - Implemented fullscreen mode with system UI management
  - Added progress tracking and scrubbing functionality
  - Proper disposal of video resources to prevent memory leaks
  - Fixed video distortion ('gepeng') issue in fullscreen mode

- **WebView Download Handler**: Comprehensive improvements to QR code download functionality
  - Better CORS and security policy handling
  - Enhanced fallback mechanisms for different download scenarios
  - Improved user experience with informative error messages
  - Added unique filename generation to prevent conflicts
  - Better file validation and error recovery

- **State Management**: Enhanced Riverpod provider patterns
  - Better state reset mechanisms
  - Improved async operation handling
  - More reliable provider lifecycle management
  - Reduced memory leaks and performance issues

- **Error Handling**: Enhanced error detection and user feedback
  - Comprehensive logging for troubleshooting download issues
  - Improved error handling and user feedback
  - Better error messages and user guidance
  - Consistent validation patterns across forms

- **Performance Optimizations**: Reduced memory usage and improved app responsiveness
  - Eliminated infinite loops and unnecessary rebuilds
  - Optimized provider state management
  - Improved widget lifecycle management
  - Enhanced async operation handling

- **Build System**: Verified compilation across all target platforms
  - Development, staging, and production flavor builds confirmed working
  - APK generation successful with proper signing
  - No blocking compilation errors remaining

- **UI/UX Enhancements**: Improved user interface and experience
  - Consistent design patterns across pages
  - Better dialog and form interactions
  - Enhanced visual feedback and transitions
  - More intuitive user flows and navigation
  - Unified design language across contact us, checkout, and campaign detail pages

- **Test Coverage**: Enhanced test infrastructure
  - Added comprehensive unit tests for email validation
  - Updated login form tests for new architecture
  - Maintained comprehensive test coverage for validation logic
  - Added tests for password length validation

## [1.1.1+27] - 2025-01-30

### Changed
- **Campaign Detail Page Redesign**: Complete UI/UX overhaul following consistent design language
  - Converted from ConsumerStatefulWidget to ConsumerWidget for better performance
  - Applied SafeArea wrapper with consistent padding (20px all sides)
  - Updated AppBar styling with elevation: 0 to match other pages
  - Redesigned action button with consistent styling (Color(0xFF104993), rounded corners, no elevation)
  - Enhanced loading and error states with proper icons and Indonesian messaging
  - Improved spacing patterns (24px between sections, 32px before action button)

### Added
- **Modular Widget Components**: Created 5 reusable widget components for campaign detail page
  - `CampaignHeaderImage`: Dedicated campaign image display component
  - `CampaignInfoSection`: Campaign title, progress bar, and backer information
  - `CampaignDescriptionSection`: Expandable campaign description with consistent styling
  - `CampaignBackerSection`: Donatur list with "View All" navigation
  - `CampaignActionButton`: Main CTA button with consistent design language

### Technical Improvements
- **Code Architecture**: Enhanced maintainability with modular component structure
  - Better separation of concerns between UI components
  - Improved widget reusability and consistency
  - Cleaner code organization following established patterns
  - Enhanced error handling and state management

- **Design Consistency**: Unified design language across contact us, checkout, and campaign detail pages
  - Consistent color scheme and typography
  - Matching button styling and sizing
  - Same loading animation patterns
  - Unified spacing and layout structure

### Fixed
- **AGENTS.md Enhancement**: Improved development guidelines and formatting
  - Added fluttergen command for asset generation
  - Enhanced import guidelines (no package: imports)
  - Added security guidelines for environment variables
  - Expanded workflow section with asset generation step

## [1.2.0+28] - 2025-01-31

### Fixed
- **QR Code Download Issues**: Complete resolution of QRIS download problems in Midtrans Snap
  - Fixed XHR network error in WebView blob download handler
  - Implemented dual-method JavaScript blob handler (fetch + XHR fallback)
  - Added alternative download methods when JavaScript execution fails
  - Fixed CallAsyncJavaScriptResult operator errors and compilation issues
  - Enhanced error handling with detailed user feedback and logging
  - Added QRIS-specific download detection and handling
  - Implemented screenshot capture as fallback for QR code extraction
  - Improved base64 validation and MIME type detection
  - Added data URL handling for direct QR code downloads
  - Fixed all compilation errors and warnings in webview_snap_page.dart

- **WebView Download Handler**: Comprehensive improvements to QR code download functionality
  - Better CORS and security policy handling
  - Enhanced fallback mechanisms for different download scenarios
  - Improved user experience with informative error messages
  - Added unique filename generation to prevent conflicts
  - Better file validation and error recovery

### Technical Improvements
- **Error Handling**: Enhanced error detection and user feedback
- **Code Quality**: Fixed all compilation errors and improved code structure
- **Performance**: Optimized WebView download operations
- **Reliability**: Added multiple fallback methods for download failures
- **Debugging**: Comprehensive logging for troubleshooting download issues

### Changed
- **AGENTS.md**: Improved formatting and development guidelines
- **WebView Implementation**: Enhanced QR code download with robust error handling

## [1.2.0+28] - 2025-01-31

### Fixed
- **Auto-Refresh Bug**: Fixed question detail page not refreshing after creator closes question
  - Resolved infinite loop in GetQuestionDetailPage state management
  - Improved provider state reset mechanism
  - Fixed UI update issues when question status changes

- **Multiline Text Input**: Fixed Enter key not working for line breaks in text fields
  - Resolved Flutter assertion error in CustomTextField
  - Fixed keyboardType compatibility issues with multiline input
  - Updated ContactUsPage, GetQuestionDetailPage, and related forms
  - Ensured proper TextInputAction.newline behavior

- **Submit Button Issues**: Fixed various submit button activation problems
  - Resolved ContactUsPage submit button disabled state
  - Fixed double-click requirement on dialog submit buttons
  - Improved state management for form submissions
  - Enhanced user feedback with proper validation dialogs

- **Dialog UX Issues**: Improved dialog user experience across the app
  - Fixed double confirmation dialogs causing confusion
  - Enhanced dialog styling and button placement
  - Improved dialog context management and navigation
  - Added proper async handling for dialog operations

### Changed
- **UI Component Refactoring**: Major redesign of question-related UI components
  - Converted GetQuestionDetailPage from StatefulWidget to ConsumerWidget for better performance
  - Refactored HorizontalQuestionCard with consistent design pattern
  - Updated ContactUsPage with simplified state management
  - Improved widget separation and reusability

- **Code Architecture**: Enhanced code organization and maintainability
  - Extracted ContactUsForm and ContactUsHeader into separate widget files
  - Created NavigationCard global widget for consistent navigation UI
  - Improved separation of concerns between UI and business logic
  - Better error handling and state management patterns

- **Performance Optimizations**: Reduced memory usage and improved app responsiveness
  - Eliminated infinite loops and unnecessary rebuilds
  - Optimized provider state management
  - Improved widget lifecycle management
  - Enhanced async operation handling

### Added
- **New Widget Components**: Added reusable UI components
  - `NavigationCard`: Global widget for consistent navigation cards
  - `ContactUsHeader`: Dedicated header component for contact page
  - `ContactUsForm`: Self-contained form component with validation
  - Enhanced widget reusability across different pages

- **Enhanced Validation**: Improved form validation and user feedback
  - Smart validation dialogs for empty content
  - Better error messages and user guidance
  - Consistent validation patterns across forms
  - Improved user experience with immediate feedback

### Technical Improvements
- **State Management**: Enhanced Riverpod provider patterns
  - Better state reset mechanisms
  - Improved async operation handling
  - More reliable provider lifecycle management
  - Reduced memory leaks and performance issues

- **UI/UX Enhancements**: Improved user interface and experience
  - Consistent design patterns across pages
  - Better dialog and form interactions
  - Enhanced visual feedback and transitions
  - More intuitive user flows and navigation

- **Code Quality**: Better code organization and maintainability
  - Improved widget separation and reusability
  - Better error handling and logging
  - Enhanced code documentation and structure
  - More consistent coding patterns

## [1.1.1+27] - 2025-01-30

### Fixed
- **Appwrite v18.0.0 Compatibility**: Complete migration from Databases to TablesDB interface
  - Updated all repository classes to use `TablesDB` instead of `Databases`
  - Changed `createDocument`/`getDocument` to `createRow`/`getRow`
  - Updated `Document` type to `models.Row`
  - Fixed parameter names: `collectionId` → `tableId`, `documentId` → `rowId`
  - Added proper null safety for environment variables

- **Repository Error Fixes**: Resolved multiple runtime errors in Appwrite repositories
  - Fixed invalid ID generation (`'unique()'` → `ID.unique()`)
  - Added null safety for environment variables (`.toString()` → `?? 'default-value'`)
  - Fixed filename generation issues in file uploads
  - Corrected query array handling for payment status filtering
  - Improved error handling and logging

- **Test Suite Fixes**: Updated test files for Appwrite v18.0.0 compatibility
  - Updated mock classes to use `TablesDB` and `models.Row` interfaces
  - Fixed test compilation errors and import issues
  - Resolved null safety issues in test cases
  - Updated mock setup for new interface methods

### Added
- **Comprehensive README.md**: Complete rewrite with detailed developer documentation
  - Project overview and features
  - Prerequisites and system requirements
  - Step-by-step installation guide
  - Project structure explanation
  - Development workflow documentation
  - Building and deployment instructions
  - Testing guidelines and commands
  - Contributing guidelines
  - Troubleshooting section
  - API documentation overview

- **AGENTS.md Enhancement**: Improved AI agent development guidelines
  - Updated build/lint/test commands
  - Enhanced code style guidelines
  - Better architecture pattern documentation
  - Improved file structure explanation
  - Added development workflow section

### Changed
- **Environment Configuration**: Synchronized `.env_example` with development environment
  - Added missing `API_KEY_PAYMENT_GATEWAY_PROD` and `PAYMENT_GATEWAY_URL_PROD`
  - Ensured all required environment variables are documented
  - Improved configuration consistency across environments

- **Test Infrastructure**: Enhanced test setup and mocking strategy
  - Improved mock class implementations
  - Better test coverage for edge cases
  - Updated test utilities and helpers

### Technical Improvements
- **Null Safety**: Enhanced null safety throughout the codebase
- **Error Handling**: Improved error handling and user feedback
- **Code Quality**: Better code organization and documentation
- **Performance**: Optimized repository operations and queries

## [1.1.0+26] - 2025-01-29

### Fixed
- **Build Errors**: Fixed multiple Flutter build compilation errors
  - Added missing `package:flutter/material.dart` import in router_provider.dart
  - Resolved `flutter_local_notifications` ambiguous method reference error
  - Fixed `flutter_web_auth_2` Kotlin compilation issues
  - Updated Android SDK compatibility issues

### Changed
- **Dependencies Updates**:
  - Updated `flutter_local_notifications` from `^16.1.0` to `^17.2.2`
  - Updated `appwrite` from `^12.0.3` to `^18.0.0`
  - Updated `upgrader` from `^10.3.0` to `^11.5.0`
  - Added dependency override for `flutter_web_auth_2: ^4.1.0`

### Removed
- **Unused Dependencies** (Cleaned up to reduce app size and build time):
  - `crypto: ^3.0.3` (now transitive dependency)
  - `firebase_app_check: ^0.1.5` and related packages
  - `firebase_in_app_messaging: ^0.7.3+3` and related packages
  - `firebase_performance: ^0.9.2+3` and related packages
  - `firebase_remote_config: ^4.2.3` and related packages
  - `flutter_timer_countdown: ^1.0.7`
  - `hive_test: ^1.0.1` (dev dependency)

### Added
- **AGENTS.md**: Created comprehensive development guide containing:
  - Build, lint, and test commands
  - Code style guidelines and conventions
  - Architecture patterns and best practices
  - File structure documentation

### Performance
- **App Size Reduction**: Removed 7 unused dependencies, reducing APK size
- **Build Time Improvement**: Faster compilation with fewer dependencies
- **Maintenance**: Cleaner dependency tree for easier updates

## [1.0.24+25] - 2025-01-28
- Initial release with core IKA SMANSARA functionality
- Flutter app with Firebase integration
- Appwrite backend integration
- Payment gateway implementation
- Campaign management system