import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_ecommerce_app/consts/theme_data.dart';
import 'package:new_ecommerce_app/provider/theme_provider.dart';
import 'package:new_ecommerce_app/root_screen.dart';
import 'package:new_ecommerce_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider , child) {
          return MaterialApp(
            title: 'My Shop',
            theme: Styles.themeData(
              isDark: themeProvider.getIsDarkTheme,
              context: context,
            ),
            home: const RootScreen(),
            debugShowCheckedModeBanner: false,
          );
        }
      ),
    );
  }
}
