import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/modules/job_page/controllers/job_page_controller.dart';
import 'package:kamao/app/modules/job_page/models/filter_model.dart';
import 'package:kamao/app/modules/job_page/views/filters_bs.dart';
import 'package:kamao/app/theme/colors.dart';

class FiltersList extends GetView<JobPageController> {
  const FiltersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              filtersJobs(),
              const SizedBox(
                width: 8,
              ),
              ...controller.primaryFiltersList.map(
                (e) => primaryFilterWidget(filterModel: e),
              )
            ],
          ),
        ),
        Obx(
          () => (controller.appliedFiltersList.isEmpty)
              ? const SizedBox()
              : Container(
                  margin: const EdgeInsets.only(top: 16),
                  height: 40,
                  child: Obx(
                    () => ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...controller.appliedFiltersList.map(
                          (e) => filterWidget(filterModel: e),
                        )
                      ],
                    ),
                  ),
                ),
        )
      ],
    );
  }

  Widget filterWidget({
    required FilterModel filterModel,
  }) {
    if (filterModel.isSelected.value == false) return const SizedBox();
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: BorderButton(
        icon: 'assets/images/png/icons/close-fill-circle.png',
        verticalPadding: 0,
        height: 40,
        borderRadius: 30,
        text: filterModel.text,
        onTap: () {
          filterModel.isSelected.toggle();
        },
        borderWidth: 2,
        color: Kolors.seperatorHighlight,
        textColor: Kolors.seperatorHighlight,
        bgColor: Kolors.foundationOrange,
      ),
    );
  }

  Widget filtersJobs() {
    return BorderButton(
      prefixImage: 'assets/images/png/icons/filter.png',
      text: "Filter Jobs",
      onTap: () {
        showCustomBottomSheet(
          borderRadius: 16,
          child: const FiltersBs(),
          onDismiss: (val) {
            if (val ?? false) {
              //will be true if clear all or apply
              return;
            }
            controller.clearAllFilters(clearAppliedFiltersAlso: false);
          },
        );
      },
      borderWidth: 1,
      color: Kolors.seperatorHighlight,
      textColor: Kolors.seperatorHighlight,
      bgColor: Kolors.foundationOrange,
    );
  }

  Widget primaryFilterWidget({
    required FilterModel filterModel,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Obx(
        () => BorderButton(
          icon: filterModel.isSelected.value
              ? 'assets/images/png/icons/close-fill-circle.png'
              : null,
          prefixImage: filterModel.image,
          verticalPadding: 0,
          height: 40,
          borderRadius: 30,
          text: filterModel.text,
          onTap: () {
            filterModel.isSelected.toggle();
          },
          borderWidth: filterModel.isSelected.value ? 2 : 1,
          color: filterModel.isSelected.value
              ? Kolors.seperatorHighlight
              : Kolors.tertiarycolor,
          textColor: filterModel.isSelected.value
              ? Kolors.seperatorHighlight
              : Kolors.tertiarycolor,
          bgColor:
              filterModel.isSelected.value ? Kolors.foundationOrange : null,
        ),
      ),
    );
  }
}
