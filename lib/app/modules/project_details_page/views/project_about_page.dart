import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/bullet_list.dart';
import 'package:kamao/app/components/text/paragraph_text.dart';
import 'package:kamao/app/theme/colors.dart';

class ProjectAboutPage extends StatelessWidget {
  const ProjectAboutPage({Key? key}) : super(key: key);

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
              title: 'About Company',
              description:
                  'State Bank of India (SBI) a Fortune 500 company, is an Indian Multinational, Public Sector Banking and Financial services statutory body headquartered in Mumbai. The rich heritage and legacy of over 200 years, accredits SBI as the most trusted Bank by Indians through generations.',
            ),
            SizedBox(
              height: 12,
            ),
            ParagraphText(
              title: 'About Project',
              description:
                  'Current bank account is opened by businessmen who have a higher number of regular transactions with the bank. It includes deposits, withdrawals, and contra transactions. It is also known as Demand Deposit Account. Current account can be opened in co-operative bank and commercial bank.',
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
