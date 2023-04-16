import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/bullet_list.dart';
import 'package:kamao/app/components/text/paragraph_text.dart';
import 'package:kamao/app/theme/colors.dart';

class ProjectHowToEarnPage extends StatelessWidget {
  const ProjectHowToEarnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Kolors.integrfaceInputBg,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: const [
            ParagraphText(
              title: 'Join Our Webinar',
              description: '',
              image: 'assets/images/png/join_webinar.png',
            ),
            SizedBox(
              height: 12,
            ),
            ParagraphText(
              title: '',
              description:
                  'State Bank of India (SBI) a Fortune 500 company, is an Indian Multinational, Public Sector Banking and Financial services statutory body headquartered in Mumbai. The rich heritage and legacy of over 200 years, ',
            ),
            SizedBox(
              height: 12,
            ),
            BulletList(
              title: "Steps to get ₹1000",
              bullets: [
                'Download SBI App',
                'Open an current account',
                'Create your profile',
                'Upload the documents required',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
