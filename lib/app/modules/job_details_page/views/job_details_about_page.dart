import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/bullet_list.dart';
import 'package:kamao/app/components/text/paragraph_text.dart';
import 'package:kamao/app/theme/colors.dart';

class JobDetailsAboutPage extends StatelessWidget {
  const JobDetailsAboutPage({Key? key}) : super(key: key);

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
              title: 'About Zomato',
              description:
                  'Zomato is an Indian multinational restaurant aggregator and food delivery company founded by Deepinder Goyal and Pankaj Chaddah in 2008.',
            ),
            SizedBox(
              height: 12,
            ),
            ParagraphText(
              title: 'About Job',
              description:
                  'Individuals in this role are on-the-road staff who are responsible for collecting packages from the local office and delivering them to the customers at their doorstep. They are also responsible for verifying customer ID, collecting payment, if applicable and obtaining customer signature Hours',
            ),
            SizedBox(
              height: 12,
            ),
            BulletList(
              title: "Do’s & Don’ts",
              bullets: [
                'Always be in proper uniform',
                'Always inform prior to take leave',
                'never be late for the job',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
