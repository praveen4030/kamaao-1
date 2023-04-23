import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';
import 'package:kamao/app/theme/colors.dart';

class MilestoneWidget extends StatelessWidget {
  final List<MilestoneModel> milestoneModel;
  const MilestoneWidget({
    Key? key,
    required this.milestoneModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return MilestoneTile(
          milestoneModel: milestoneModel[index],
          index: index,
        );
      },
      itemCount: milestoneModel.length,
    );
  }
}

class MilestoneTile extends StatelessWidget {
  final MilestoneModel milestoneModel;
  final int index;
  const MilestoneTile({
    Key? key,
    required this.milestoneModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          numberWidget(),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  milestoneModel.title,
                  style: CustomTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Kolors.secondarycolor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  milestoneModel.description,
                  style: CustomTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Kolors.tertiarycolor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          amountTile(),
        ],
      ),
    );
  }

  Widget numberWidget() {
    return Container(
      height: 48,
      width: 48,
      padding: const EdgeInsets.all(13),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffEA6A2A),
              Color(0xffEA6A2A),
              Color(0xffCD4427),
            ],
          ),
        ),
        child: Center(
          child: Text(
            '${index + 1}',
            style: CustomTextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget amountTile() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/png/inr.png',
          height: 16,
          width: 10,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '${milestoneModel.amount} INR',
          style: CustomTextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Kolors.foundationDarkBlue,
          ),
        ),
      ],
    );
  }
}
