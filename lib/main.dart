import 'package:flutter/material.dart';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/app/app.router.dart';
import 'package:flutter_arc/ui/setup_bottom_sheet_ui.dart';
import 'package:flutter_arc/ui/setup_dialog_ui.dart';
import 'package:flutter_arc/ui/theme_setup.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  await ThemeManager.initialise();
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   colorScheme: const ColorScheme.dark(
      //       primary: Colors.red, secondary: Colors.redAccent),
      // ),
      // lightTheme: ThemeData(
      //   brightness: Brightness.light,
      //   colorScheme: const ColorScheme.light(
      //       primary: Colors.blue, secondary: Colors.blueAccent),
      // ),
      // // themes: getThemes(),
      // statusBarColorBuilder: (theme) => theme?.colorScheme.secondary,
      themes: getThemes(),
      builder: (BuildContext context, ThemeData? lightTheme,
              ThemeData? darkTheme, ThemeMode? themeMode) =>
          MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
      ),
    );
  }
}
