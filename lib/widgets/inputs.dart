// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  final String? hintText;

  final dynamic validator;

  final dynamic onSaved;

  final Function()? onChanged;

  final Function()? toggleEye;

  final KeyboardType? keyboard;

  final String? init;

  final bool? isPassword;

  final Color? isPasswordColor;

  final bool? showObscureText;

  final bool? obscureText;

  final Color? styleColor;

  final Color? hintStyleColor;

  final bool? enabled;

  final bool readOnly;

  final String? labelText;

  final dynamic maxLines;

  final Color? borderColor;

  final Widget? prefix;

  final Widget? suffixIcon;

  final Key? key;

  final TextEditingController? controller;

  final List<TextInputFormatter>? inputFormatters;

  final Color? fillColor;

  final bool? isError;

  final String? showErrorText;

  final VoidCallback? onTap;

  final String? errormsg;

  final double? width;
  final double? height;

  // ignore: use_key_in_widget_constructors
  const Input(
      {this.hintText = '',
      required this.validator,
      required this.onSaved,
      this.toggleEye,
      this.init,
      this.isPassword = false,
      this.isPasswordColor,
      this.showObscureText,
      this.obscureText = false,
      this.keyboard,
      this.styleColor,
      this.hintStyleColor,
      this.enabled = true,
      this.readOnly = false,
      this.labelText,
      this.maxLines = 1,
      this.borderColor = Colors.transparent,
      //Color(0xffADAFB2),
      this.onChanged,
      this.prefix,
      this.key,
      this.controller,
      this.inputFormatters,
      this.fillColor = Colors.black12,
      this.isError = false,
      this.showErrorText = "field can't be empty",
      this.suffixIcon,
      this.onTap,
      this.errormsg,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        width: width,
        height: height,
        child: TextFormField(
            onTap: onTap != null ? onTap : () {},
            inputFormatters: inputFormatters,
            controller: controller,
            key: key,
            enabled: enabled,
            readOnly: readOnly,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            cursorColor: styleColor,
            obscureText: obscureText as bool,
            maxLines: maxLines,
            onChanged: onChanged != null ? onChanged!() : (String) {},
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 20, 20, 20),

              prefixIcon: prefix,

              filled: true,

              fillColor: fillColor,

              labelText: labelText,

              labelStyle: const TextStyle(color: Colors.black),

              hintText: hintText ?? labelText,

              hintStyle:
                  const TextStyle(fontSize: 13, color: Color(0xffA1A1A1)),

              isDense: true,

              // errorBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(6),
              //   borderSide: BorderSide(color: Colors.red),
              // ),

              // focusedErrorBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide(color: Colors.red),
              // ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: borderColor as Color),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black12),
              ),

              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: borderColor as Color),
              ),

// contentPadding: EdgeInsets.only(top: 10, bottom: 10),

              suffixIcon: isPassword ?? true
                  ? GestureDetector(
                      onTap: toggleEye != null ? toggleEye!() : () {},
                      child: Icon(
                        showObscureText ?? true
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color(0xFFC0C1C3),
                      ),
                    )
                  : suffixIcon,

              errorText: isError ?? true ? showErrorText : null,
            ),
            validator: validator,
            initialValue: init,
            onSaved: onSaved,
            keyboardType: keyboard == KeyboardType.EMAIL
                ? TextInputType.emailAddress
                : keyboard == KeyboardType.NUMBER
                    ? TextInputType.number
                    : keyboard == KeyboardType.PHONE
                        ? TextInputType.phone
                        : TextInputType.text),
      ),
    );
  }
}

enum KeyboardType { EMAIL, PHONE, NUMBER, TEXT }
