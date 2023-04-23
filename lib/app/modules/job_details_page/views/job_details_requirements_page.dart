import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/bullet_list.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/text/paragraph_text.dart';
import 'package:kamao/app/theme/colors.dart';

class JobDetailsRequirementsPage extends StatelessWidget {
  const JobDetailsRequirementsPage({Key? key}) : super(key: key);

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
          children: [
            const ParagraphText(
              title: 'Join Our Webinar',
              image: 'assets/images/png/deliver_effectively.png',
              description: '',
              isDivider: false,
            ),
            const BulletList(
              title: "Requirements",
              bullets: [
                'Two - wheeler Vehicle',
                'Two - wheeler Driving License',
                'Smart Phone',
              ],
            ),
            noteWidget(),
            const ParagraphText(
              title: 'Tutorial',
              image: 'assets/images/png/play_tutorial.png',
              description: '',
            ),
            const SizedBox(
              height: 6,
            ),
            pointerDetailsTile(
              title: 'Experience',
              description: 'Freshers',
              image: 'medal-star',
            ),
            pointerDetailsTile(
              title: 'Minimum Education',
              description: '10th or Below 10th',
              image: 'book',
            ),
            pointerDetailsTile(
              title: 'English Level',
              description: 'No English',
              image: 'message',
            ),
            pointerDetailsTile(
              title: 'Job Address',
              image: 'location',
              description: '40 - B, MI road, Mansarover, Jaipur',
            ),
            pointerDetailsTile(
              image: 'call',
              title: 'Interview Method',
              description: 'Online/Telephonic',
            ),
            pointerDetailsTile(
              image: 'job_shift',
              title: 'Working Shift',
              description: 'Day Shift',
            ),
            pointerDetailsTile(
              image: 'clock',
              title: 'Timing',
              description: '10 AM - 6 PM',
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }

  Widget noteWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'One time Fee of Rs 500 Will Be charged after the job confirmation by the zomato',
            style: CustomTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Kolors.secondarycolor,
            ),
          ),
          Text(
            'Purpose - Dress and bag charges',
            style: CustomTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Kolors.highlightcolor,
            ),
          ),
        ],
      ),
    );
  }

  Widget pointerDetailsTile({
    required String image,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Image.asset(
            "assets/images/png/icons/$image.png",
            height: 20,
            width: 20,
            color: Kolors.secondarycolor,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: CustomTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Kolors.tertiarycolor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  description,
                  style: CustomTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Kolors.secondarycolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
