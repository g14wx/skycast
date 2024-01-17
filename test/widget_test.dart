import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skycast/app.dart';
import 'package:skycast/constants/objects_keys.dart';
import 'package:skycast/services/data_storage/protocols/i_initialization_of_data_storage_service.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';

import 'setups/local_storage/mock_hydratate_bloc.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  initHydratedStorage();
  binding.testTextInput.register();
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(const MethodChannel('plugins.flutter.io/path_provider'), (MethodCall methodCall) async {
    return '.';
  });
  setUpAll(() async {
    HttpOverrides.global = null;
    GoogleFonts.config.allowRuntimeFetching = false;
    final file = File('test/dotenv.test');
    final envString = await file.readAsString();
    dotenv.testLoad(fileInput: envString);
    configureDependencies("test");
    // this is for make it works the next line and localize the IInitializationOfDataStorageService instance
    final getIt = GetIt.instance;
    // init secure local storage (Hive)
    final initDataStorage = getIt<IInitializationOfDataStorageService>();
    // init hive configuration storage
    await initDataStorage.initializationOfDataStorageService();
  });
  group('test app', () {
    testWidgets('Check texts', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      await tester.pump();
      await tester.pump(const Duration(seconds: 3));
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      // Giving
      final appBarTitleHomeEnglish = find.text("Dashboard");
      // when
      // # this is necessary to skip one frame
      await tester.pumpAndSettle();
      // Then
      expect(appBarTitleHomeEnglish, findsOneWidget);
      expect(find.text("Home"), findsAtLeast(1));
      expect(find.text("Skycast"), findsOneWidget);

      // check spanish text
      // giving
      final buttonChangeTheme = find.byKey(ObjectKeys.changeLanguageButtonKey);
      final buttonSpanishLanguage = find.byKey(ObjectKeys.changeLanguageButtonSpanishKey);
      // when
      await tester.tap(buttonChangeTheme);
      await tester.pumpAndSettle();
      await tester.tap(buttonSpanishLanguage);
      // then
      await tester.pumpAndSettle();
      expect(find.text("Inicio"), findsAtLeast(2));
    });


    testWidgets('Check search a location', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      await tester.pump();
      await tester.pump(const Duration(seconds: 3));
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      // giving
      final autocompleteTextField = find.byKey(ObjectKeys.searchLocalizationTextField);
      final searchButton = find.byKey(ObjectKeys.searchLocalizationButton);
      // when
      await tester.enterText(autocompleteTextField, "Santa Ana");
      await tester.tap(searchButton);
      await tester.pump(const Duration(seconds: 2));
      // Then
      expect(find.text("Search again"), findsOneWidget);
      expect(find.text("It will rain"), findsOneWidget);
      expect(find.text("Region name"), findsOneWidget);
      expect(find.text("Santa Ana"), findsOneWidget);
      expect(find.text("It won't snow"), findsOneWidget);
    });
  });
}
