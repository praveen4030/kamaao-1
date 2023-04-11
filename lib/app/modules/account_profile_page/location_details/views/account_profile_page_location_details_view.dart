import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/select_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/account_profile_page/location_details/views/location_suggestion_tile.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

import '../controllers/account_profile_page_location_details_controller.dart';

class AccountProfilePageLocationDetailsView
    extends GetView<AccountProfilePageLocationDetailsController> {
  const AccountProfilePageLocationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Location"),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "In which Location do\nyou want a Job",
                            style: CustomTextStyle(
                              textSize: 20,
                              textWeight: Constants.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You can select max. 3 Location.",
                            style: CustomTextStyle(
                              textColor: const Color(0xff6E6E6E),
                              textSize: 14,
                              textWeight: Constants.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        ImagePath.location2,
                        height: 84,
                      )
                    ],
                  ),
                  const SizedBox(height: 22),
                  Obx(
                    () => (controller.selectedLocation.isEmpty)
                        ? Container()
                        : Container(
                            height: 56,
                            padding: const EdgeInsets.only(bottom: 16),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.selectedLocation.length,
                              itemBuilder: (context, index) {
                                return SelectButton(
                                  text: controller.selectedLocation[index],
                                  onCancel: () {
                                    controller.selectedLocation.remove(
                                        controller.selectedLocation[index]);
                                  },
                                );
                              },
                            ),
                          ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 35,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: TextField(
                              cursorColor: const Color(0xff4E5D6B),
                              style: const TextStyle(color: Color(0xff4E5D6B)),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  color: Kolors.secondaryTextColor,
                                ),
                                filled: true,
                                fillColor: const Color(0xfff7f8f9),
                                contentPadding: const EdgeInsets.all(15),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onChanged: (value) {
                                // do something
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Cancel",
                        style: CustomTextStyle(
                          textColor: const Color(0xffE78353),
                          textSize: 16,
                          textWeight: Constants.medium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  locationList(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: "Save",
        onTap: () {},
      ),
    );
  }

  Widget locationList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.locationsList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (controller.selectedLocation
                .contains(controller.locationsList[index])) {
              return;
            }
            controller.selectedLocation.add(controller.locationsList[index]);
          },
          child: LocationSuggestionTile(
            text: controller.locationsList[index],
          ),
        );
      },
    );
  }
}
