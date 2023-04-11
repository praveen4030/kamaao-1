  // Future BottomSheet() {
  //   return showModalBottomSheet(
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(10), topRight: Radius.circular(10))),
  //       context: context,
  //       builder: (context) {
  //         return Wrap(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(16.0),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   BoldText("Upload Photo", black, 18),
  //                   const SizedBox(
  //                     height: 14,
  //                   ),
  //                   Column(
  //                     children: [
  //                       Row(
  //                         children: [
  //                           IconButton(
  //                             icon: Icon(Icons.photo_outlined),
  //                             color: Color(0xff6E6E6E),
  //                             onPressed: () async {
  //                               pickImage(ImageSource.gallery);
  //                             },
  //                           ),
  //                           const SizedBox(width: 10),
  //                           LightText(
  //                               "Upload From Galley", Color(0xff6E6E6E), 16),
  //                         ],
  //                       ),
  //                       const SizedBox(height: 16),
  //                       Row(
  //                         children: [
  //                           IconButton(
  //                             splashColor: Colors.transparent,
  //                             icon: Icon(Icons.camera_alt_outlined),
  //                             color: Color(0xff6E6E6E),
  //                             onPressed: () async {
  //                               pickImage(ImageSource.camera);
  //                             },
  //                           ),
  //                           const SizedBox(width: 10),
  //                           LightText("Take a Photo", Color(0xff6E6E6E), 16),
  //                           SizedBox(
  //                             height: 16,
  //                           )
  //                         ],
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         );
  //       });
  // }