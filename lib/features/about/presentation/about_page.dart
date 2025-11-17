import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/app_scaffold.dart';
import 'package:my_portfolio/widgets/seo_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../widgets/styled_buttons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri resumeUrl = Uri.parse(
      'https://1drv.ms/b/c/910a61c174485146/IQDkDeXAlwsDTZ-zvNaeY1fYAa5AUZc56UyQbN84VOKvfUA?e=DIZS5T',
    );

    Future<void> launchResume() async {
      final LaunchMode mode = kIsWeb
          ? LaunchMode.platformDefault
          : LaunchMode.externalApplication;

      if (!await launchUrl(resumeUrl, mode: mode)) {
        throw 'Could not launch $resumeUrl';
      }
    }

    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: context.insets.padding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.asset(
                    'assets/images/me.jpeg',
                    fit: BoxFit.cover,
                  ).image,
                ),
                const Gap(16),
                Text(
                  context.texts.whoAmI,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Gap(16),

                SEOText(
                  context.texts.aboutTitle,
                  style: context.textStyle.titleSmBold,
                ),
                const Gap(16),
                SEOText(
                  context.texts.aboutDesc,
                  style: context.textStyle.bodyMdMedium,
                ),
                Divider(thickness: 2, color: Colors.white, height: 24),
                Text(
                  context.texts.tech,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(6),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white, // default text color
                    ),
                    children: const [
                      TextSpan(text: 'Flutter '),
                      TextSpan(
                        text: '▸ ',
                        style: TextStyle(color: Colors.amber),
                      ),
                      TextSpan(text: 'Dart '),
                      TextSpan(
                        text: '▸ ',
                        style: TextStyle(color: Colors.amber),
                      ),
                      TextSpan(text: 'Kotlin '),
                      TextSpan(
                        text: '▸ ',
                        style: TextStyle(color: Colors.amber),
                      ),
                      TextSpan(text: 'Java'),
                    ],
                  ),
                ),
                Divider(thickness: 2, color: Colors.white, height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white, // default text color
                        ),
                        children: [
                          TextSpan(
                            text: 'Name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' : ',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: context.texts.hhz,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Gap(6),

                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white, // default text color
                        ),
                        children: [
                          TextSpan(
                            text: 'From',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' : ',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Myanmar, Yangon",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Gap(6),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white, // default text color
                        ),
                        children: [
                          TextSpan(
                            text: 'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' : ',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "heainhtetzaw1998@gmail.com",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Gap(6),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white, // default text color
                        ),
                        children: [
                          TextSpan(
                            text: 'Phone',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' : ',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "+959 969044640 | +959 400496447",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                      Gap(60),

                    Center(
                      child: OutlinedButton(
                        onPressed: launchResume,
                      
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // customize the radius
                          ),
                          side: BorderSide(
                            color: context.colorScheme.primary,
                            width: 2,
                          ), // optional border color & width
                        ),
                        child: Text(
                          'View My Resume',
                          style: TextStyle(
                            color: context.colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ),
                                          Gap(60),

                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
