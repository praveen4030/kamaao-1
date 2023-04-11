import 'package:flutter/material.dart';
import 'package:kamao/app/theme/colors.dart';

class OtpPinFieldsWidget extends StatefulWidget {
  final Function onChanged;
  const OtpPinFieldsWidget({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  @override
  _OtpPinFieldsWidgetState createState() => _OtpPinFieldsWidgetState();
}

class _OtpPinFieldsWidgetState extends State<OtpPinFieldsWidget> {
  final _controller = List.generate(4, (_) => TextEditingController());
  final _focusNode = List.generate(4, (_) => FocusNode());
  final _otpFilledStyle = TextStyle(fontSize: 16, color: Kolors.checkBoxColor);

  @override
  void dispose() {
    for (var controller in _controller) {
      controller.dispose();
    }
    for (var focusNode in _focusNode) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return Container(
          width: 50,
          margin: const EdgeInsets.only(right: 24),
          color: _controller[index].text.isNotEmpty
              ? Kolors.integrfaceInputBg
              : Kolors.backgroundSecondary,
          child: TextField(
            cursorColor: Kolors.checkBoxColor,
            controller: _controller[index],
            focusNode: _focusNode[index],
            autofocus: index == 0,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: _otpFilledStyle,
            decoration: const InputDecoration(
              fillColor: Kolors.backgroundSecondary,
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Kolors.seperatorLight),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Kolors.integrfaceInputBg),
              ),
            ),
            onChanged: (value) {
              if (value.length == 1) {
                if (index < 3) {
                  FocusScope.of(context).requestFocus(_focusNode[index + 1]);
                } else {
                  _focusNode[index].unfocus();
                }
              } else if (value.isEmpty) {
                if (index > 0) {
                  FocusScope.of(context).requestFocus(_focusNode[index - 1]);
                }
              }

              String otp = "";
              for (final tec in _controller) {
                otp = otp + tec.text;
              }
              widget.onChanged(otp);

              setState(() {});
            },
          ),
        );
      }),
    );
  }
}
