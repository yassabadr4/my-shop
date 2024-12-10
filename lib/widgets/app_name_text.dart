import 'package:flutter/material.dart';
import 'package:new_ecommerce_app/widgets/title_text.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key,  this.fontSize= 30});
final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: Duration(seconds: 6),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
        child: TitleTextWidget(label: 'Shop Smart',
        fontSize: fontSize,
        )
    );
  }
}
