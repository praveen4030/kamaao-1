import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/job_page/controllers/job_page_controller.dart';
import 'package:kamao/app/modules/job_page/models/filter_model.dart';
import 'package:kamao/app/theme/colors.dart';

class FiltersBs extends GetView<JobPageController> {
  const FiltersBs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Filter Jobs",
                        style: CustomTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Kolors.secondarycolor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/images/png/icons/close-square.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.filtersList.length,
                  itemBuilder: (context, index) {
                    return filterCategoryWidget(controller.filtersList[index]);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        bottomSheet(),
      ],
    );
  }

  Widget bottomSheet() {
    return Obx(
      () => Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff292D32).withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 16,
              offset: const Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  if (!controller.isFiltersEnabled()) return;
                  controller.clearAllFilters(clearAppliedFiltersAlso: true);
                  Get.back(result: true);
                },
                child: Text(
                  "Clear All Filters",
                  style: CustomTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: controller.isFiltersEnabled()
                        ? Kolors.backgroundActionColor
                        : Kolors.textDisabled,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PrimaryButton(
                isEnabled: controller.isFiltersEnabled(),
                title: "Apply",
                onTap: () {
                  controller.onApply();
                  Get.back(result: true);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget filterCategoryWidget(FiltersListModel filtersListModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          filtersListModel.title,
          style: CustomTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Kolors.secondarycolor,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 12,
          children: [
            ...filtersListModel.filtersList
                .map(
                  (e) => buttonFilter(e.text, e.isSelected),
                )
                .toList(),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget buttonFilter(String text, RxBool isSelected) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: BorderButton(
          text: text,
          onTap: () {
            isSelected.toggle();
          },
          borderWidth: isSelected.value ? 2 : 1,
          color: isSelected.value
              ? Kolors.seperatorHighlight
              : Kolors.tertiarycolor,
          textColor: isSelected.value
              ? Kolors.seperatorHighlight
              : Kolors.tertiarycolor,
          bgColor: isSelected.value ? Kolors.foundationOrange : null,
        ),
      ),
    );
  }
}
