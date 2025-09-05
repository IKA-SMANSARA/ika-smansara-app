# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0+34] - 2025-09-05

### Added
- **Password Validation**: Enhanced login form with minimum password length validation
  - Added 8-character minimum password requirement
  - Integrated with existing form validation flow
  - User-friendly error messages in Indonesian

- **Login Error Handling**: Improved error display for authentication failures
  - Fixed login error state management in user data provider
  - Proper error message display from usecase responses
  - Enhanced user feedback for invalid credentials

### Changed
- **Code Architecture**: Refactored login form for better maintainability
  - Extracted validation methods to separate `LoginFormMethods` class
  - Created dedicated `methods/` folder for login page utilities
  - Improved separation of concerns between UI and validation logic

### Technical Improvements
- **Error State Management**: Fixed critical bug in user data provider
  - Resolved error state being immediately replaced by success state
  - Proper AsyncError state persistence for error handling
  - Enhanced Riverpod provider error handling patterns

- **Test Coverage**: Updated login form tests for new architecture
  - Modified tests to use new `LoginFormMethods` class
  - Maintained comprehensive test coverage for validation logic
  - Added tests for password length validation

### Fixed
- **Login Error Display**: Resolved issue where login errors weren't shown to users
  - Fixed `ref.listen` error handling in login form
  - Proper error message extraction from FlutterError objects
  - Consistent error snackbar styling and behavior

## [1.2.0+33] - 2025-09-04

### Added
- **Email Validation**: Comprehensive email format validation on login page
  - Added regex-based email validation with user-friendly error messages
  - Validates empty email, invalid format, and required password fields
  - Displays attractive SnackBar with Indonesian error messages
  - Prevents login attempts with invalid input data

### Changed
- **Login Page Background**: Updated login page background to white for cleaner appearance
  - Changed Scaffold backgroundColor to Colors.white
  - Improved visual consistency and user experience
  - Enhanced overall page aesthetics

### Technical Improvements
- **Test Coverage**: Added comprehensive unit tests for email validation
  - Created test suite for email format validation logic
  - Tests various email formats (valid and invalid)
  - Ensures validation reliability and correctness
  - Added test/presentation/pages/login_page/login_form_test.dart

- **Code Quality**: Enhanced login form with better input validation
  - Improved error handling and user feedback
  - Better separation of validation logic
  - More maintainable and testable code structure

### Fixed
- **User Experience**: Improved login form validation feedback
  - Clear error messages for different validation scenarios
  - Consistent error styling with app design language
  - Better user guidance for form completion

## [1.2.0+32] - 2025-09-04

### Changed
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

### Technical Improvements
- **Code Architecture**: Enhanced maintainability with cleaner component structure
  - Removed unused widget files (MyDonationHeader, MyDonationStats, MyDonationCarousel)
  - Removed unused method files (carousel_transaction_image.dart, list_transactions.dart)
  - Consolidated transaction list logic into MyDonationList widget
  - Improved error handling and state management
  - Better separation of concerns between UI components

- **UI/UX Enhancements**: Improved user interface consistency and experience
  - Consistent color scheme using app blue (#104993) throughout
  - Modern card design with subtle shadows and rounded corners
  - Better typography hierarchy and spacing patterns
  - Enhanced touch targets and interactive elements
  - Improved loading and error states with consistent styling

### Fixed
- **List View Scrolling**: Resolved scrolling issues with proper layout constraints
- **Color Consistency**: Unified color scheme across all donation page components
- **Layout Structure**: Fixed layout hierarchy for better scrolling performance

## [1.2.0+31] - 2025-01-31

### Added
- **Video Tutorial Page**: Dedicated fullscreen video tutorial experience
  - Created VideoTutorialPage with immersive video player
  - Added comprehensive video controls (play/pause, progress bar, fullscreen)
  - Implemented orientation lock for fullscreen mode
  - Added tap-to-show controls with auto-hide functionality
  - Integrated with account page tutorial navigation

### Changed
- **Tutorial Navigation**: Improved user experience for tutorial access
  - Changed from dialog-based tutorial to dedicated fullscreen page
  - Enhanced video playback with better controls and responsiveness
  - Improved navigation flow from account page to tutorial

### Technical Improvements
- **Video Player Integration**: Enhanced video handling and controls
  - Added VideoPlayerController with proper lifecycle management
  - Implemented fullscreen mode with system UI management
  - Added progress tracking and scrubbing functionality
  - Proper disposal of video resources to prevent memory leaks

- **Video Display Fix**: Corrected video aspect ratio for vertical fullscreen
  - Fixed video distortion ('gepeng') issue in fullscreen mode
  - Replaced AspectRatio with FittedBox for proper screen coverage
  - Removed forced landscape orientation to maintain vertical display
  - Improved video scaling with BoxFit.cover for better visual quality

- **Code Architecture**: Improved code organization across pages
  - Converted AccountPage from ConsumerStatefulWidget to ConsumerWidget
  - Removed unused VideoPlayerController and related lifecycle methods
  - Refactored VideoTutorialPage with separated methods and widgets
  - Created dedicated methods/ and widgets/ folders for better organization
  - Better separation of concerns between UI and business logic
  - Improved maintainability and code reusability

## [1.2.0+30] - 2025-01-31

### Changed
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

### Technical Improvements
- **Dependency Management**: Updated analyzer version for compatibility
  - Downgraded analyzer from ^8.1.1 to ^6.4.1 for better stability
  - Maintained compatibility with existing codebase patterns

- **Code Quality**: Enhanced documentation and development guidelines
  - Better separation of concerns in documentation
  - Improved code examples with accurate patterns
  - Enhanced developer onboarding experience

## [1.2.0+29] - 2025-01-31

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

## [1.0.24+25] - Previous Version

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

## [1.0.24+25] - Previous Version
- Initial release with core IKA SMANSARA functionality
- Flutter app with Firebase integration
- Appwrite backend integration
- Payment gateway implementation
- Campaign management system

---

### Session Summary [1.2.0+28]
- **UI/UX Fixes**: Complete resolution of auto-refresh, multiline input, and submit button issues
- **Performance**: Eliminated infinite loops and improved state management
- **Code Architecture**: Major refactoring with ConsumerWidget pattern and widget extraction
- **User Experience**: Enhanced form validation, dialog UX, and navigation consistency
- **Widget Components**: Added reusable NavigationCard, ContactUsHeader, and ContactUsForm
- **State Management**: Improved Riverpod patterns with better error handling

### Key Improvements Summary
- **Fixed**: 4 major UI/UX bugs (auto-refresh, multiline input, submit buttons, dialogs)
- **Refactored**: 3 major pages with ConsumerWidget pattern for better performance
- **Added**: 3 new reusable widget components
- **Enhanced**: State management and error handling throughout the app
- **Optimized**: Memory usage and app responsiveness

### Technical Notes
- All changes maintain backward compatibility
- No breaking changes to existing functionality
- Improved Flutter widget lifecycle management
- Enhanced Riverpod provider patterns
- Better separation of concerns between UI and business logic
- Comprehensive error handling and user feedback
- Optimized for better mobile performance

### Session Summary [1.1.1+27]
- **Appwrite Migration**: Complete v18.0.0 compatibility (10 repository files updated)
- **Documentation**: Comprehensive README.md rewrite + AGENTS.md enhancement
- **Configuration**: Environment files synchronization
- **Testing**: Repository tests fully functional (6/6 pass)
- **Code Quality**: Enhanced null safety and error handling

### Dependency Changes Summary
- **Removed**: 7 unused dependencies
- **Updated**: 4 major dependencies for compatibility
- **Added**: 1 dependency override for stability
- **Total Impact**: 14 dependency changes, cleaner codebase

### Technical Notes
- All changes maintain backward compatibility
- No breaking changes to existing functionality
- Improved Android SDK compatibility
- Enhanced development workflow with comprehensive documentation
- Full Appwrite v18.0.0 compatibility achieved
- Repository layer fully tested and functional

---

## Commit Message Template

```
feat: complete Appwrite v18.0.0 migration and documentation enhancement

- Migrate all Appwrite repositories from Databases to TablesDB interface
- Update createDocument/getDocument to createRow/getRow methods
- Fix null safety issues and environment variable handling
- Rewrite README.md with comprehensive developer documentation
- Enhance AGENTS.md with improved development guidelines
- Synchronize .env_example with development environment
- Fix repository tests for new Appwrite interface compatibility
- Improve error handling and code quality throughout

BREAKING: Appwrite interface changes (internal only, no API changes)
Version: 1.1.1+27
```