import 'package:flutter/material.dart';
import 'package:new_ecommerce_app/widgets/title_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: TitleTextWidget(label: 'SearchScreen'),),
    );
  }
}