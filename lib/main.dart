import 'package:flutter/material.dart';
// import 'package:networking_and_database/profile/profile_provider.dart';
import 'package:networking_and_database/screen/home_screen.dart';
import 'package:networking_and_database/provider/shared_preference.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ThemeChanger themeChanger = ThemeChanger(false);
  await themeChanger.loadThemePreference();
  runApp(ChangeNotifierProvider<ThemeChanger>(create: (_) => themeChanger, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', debugShowCheckedModeBanner: false, theme: Provider.of<ThemeChanger>(context).getTheme(), home: const HomeScreen());
  }
}
