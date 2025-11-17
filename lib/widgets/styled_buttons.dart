import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';

import '../style/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.title, this.onTap});
  final String title;
    final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.grey[100],
        ),
      ),
    );
  }
}
class OutLineButton extends StatelessWidget {
  const OutLineButton({super.key, required this.title, this.onTap});
  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {  }, child: SEOText(title, style: TextStyle(
          fontWeight: FontWeight.w500,
          color: context.colorScheme.onBackground,
        ),),
       
    );
  }
}
