import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:new_ecommerce_app/provider/theme_provider.dart';
import 'package:new_ecommerce_app/services/assets_manager.dart';
import 'package:new_ecommerce_app/widgets/subtitle_text.dart';
import 'package:new_ecommerce_app/widgets/title_text.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile screen'),
        leading: Image.asset(AssetsManager.shoppingCart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: TitleTextWidget(
                  label: 'Please login to have ultimate access'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.surface,
                      width: 3,
                    ),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://www.bing.com/th?id=OIP.HW9o-gKESImEapaUq7WbIgHaJQ&w=87&h=106&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(label: 'Yassa Badr'),
                    SubtitleTextWidget(label: 'yassabadr4@gmail.com'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleTextWidget(label: 'General'),
                CustomListTile(
                  imagePath: AssetsManager.orderSvg,
                  text: 'All Orders',
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.wishlistSvg,
                  text: 'Wishlist',
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.recent,
                  text: 'Viewed recently',
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.address,
                  text: 'Address',
                  function: () {},
                ),
                Divider(),
                SizedBox(height: 7,),
                TitleTextWidget(label: 'Settings'),
                SizedBox(height: 7,),
                SwitchListTile(
                  secondary: Image.asset(AssetsManager.theme,height: 30,),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themeValue: value);
                  },
                  title:
                  Text(themeProvider.getIsDarkTheme ? 'Dark Mode' : 'Light Mode'),
                ),
                Divider(),
                
              ],
            ),
          ),
          ElevatedButton.icon(onPressed: (){},icon: Icon(Icons.login), label:Text('data') )
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.function});

  final String imagePath, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(
        imagePath,
        height: 30,
      ),
      title: SubtitleTextWidget(label: text),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}
