import 'package:flutter/material.dart';
import 'package:new_ecommerce_app/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: TitleTextWidget(label: 'CartScreen'),),
    );
  }
}
