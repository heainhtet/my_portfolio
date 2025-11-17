import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_my.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('my'),
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @courses.
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get courses;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutMe;

  /// No description provided for @cooperation.
  ///
  /// In en, this message translates to:
  /// **'Cooperation'**
  String get cooperation;

  /// No description provided for @hhz.
  ///
  /// In en, this message translates to:
  /// **'Hein Htet Zaw'**
  String get hhz;

  /// No description provided for @mobileDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Mobile Application Developer'**
  String get mobileDeveloper;

  /// No description provided for @mobileDev.
  ///
  /// In en, this message translates to:
  /// **'Passionate Flutter Developer dedicated to crafting seamless, high-performance mobile applications with clean code, beautiful UI, and smooth user experiences.'**
  String get mobileDev;

  /// No description provided for @poweredByFlutter.
  ///
  /// In en, this message translates to:
  /// **'Powered By Flutter'**
  String get poweredByFlutter;

  /// No description provided for @courseDesc.
  ///
  /// In en, this message translates to:
  /// **'Learn Mobile App Development with me'**
  String get courseDesc;

  /// No description provided for @experiences.
  ///
  /// In en, this message translates to:
  /// **'Experiences'**
  String get experiences;

  /// No description provided for @experiencesDesc.
  ///
  /// In en, this message translates to:
  /// **'Here is my professional experience in mobile app development'**
  String get experiencesDesc;

  /// No description provided for @feedBack.
  ///
  /// In en, this message translates to:
  /// **'Feedbacks'**
  String get feedBack;

  /// No description provided for @feedBackDesc.
  ///
  /// In en, this message translates to:
  /// **'Here are some of the feedbacks from my course participants'**
  String get feedBackDesc;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'I am Hein Htet Zaw, a Mobile App Developer'**
  String get aboutTitle;

  /// No description provided for @aboutDesc.
  ///
  /// In en, this message translates to:
  /// **'I am an experienced Mobile Application Developer with a proven track record of building innovative and user-focused applications. My journey in mobile development began with Android (Java, Kotlin), where I developed a solid foundation in creating seamless and intuitive user experiences.\n\nAs my passion for technology grew, I ventured into the world of Flutter (Dart), harnessing its cross-platform capabilities to transform creative ideas into functional and visually appealing mobile apps.I specialize in advanced state management techniques using libraries such as BLoC, Riverpod, and GetX. Leveraging these tools, I’ve successfully delivered applications with efficient architecture and maintainable state management solutions.My pursuit of excellence continues as I embrace Swift for iOS and Kotlin for Android, broadening my horizons and deepening my technical skill set.\n\nI thrive on challenges and new opportunities that push me to innovate and grow. My goal is to bring my expertise and enthusiasm to Myanmar’s dynamic tech ecosystem. As I continue this journey of learning and exploration, I am eager to contribute to cutting-edge projects and collaborate with like-minded professionals who share my passion for creating impactful mobile experiences.'**
  String get aboutDesc;

  /// No description provided for @whoAmI.
  ///
  /// In en, this message translates to:
  /// **'Who am I?'**
  String get whoAmI;

  /// No description provided for @tech.
  ///
  /// In en, this message translates to:
  /// **'Technologirs I have worked with'**
  String get tech;

  /// No description provided for @use.
  ///
  /// In en, this message translates to:
  /// **'Flutter ▸ Dart ▸ Kotlin ▸ Java '**
  String get use;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'my'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'my':
      return AppLocalizationsMy();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
