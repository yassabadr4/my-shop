import 'package:flutter/material.dart';
import 'package:new_ecommerce_app/provider/theme_provider.dart';
import 'package:new_ecommerce_app/widgets/subtitle_text.dart';
import 'package:new_ecommerce_app/widgets/title_text.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(
      context,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubtitleTextWidget(
            label: 'hey',
            fontSize: 60,
            color: Colors.red,
          ),
          TitleTextWidget(
            label: 'this is a title' * 10,
            fontSize: 50,
            maxLines: 2,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Hey')),
          SwitchListTile(
            value: themeProvider.getIsDarkTheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(themeValue: value);
            },
            title:
                Text(themeProvider.getIsDarkTheme ? 'Dark Mode' : 'Light Mode'),
          ),
        ],
      ),
    );
  }
}
