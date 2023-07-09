import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_manager.dart';
import '../utils/font_manager.dart';

class DefaultTextField extends StatelessWidget {
  Key? formKey;
  VoidCallback? onTap;
  TextEditingController? controller;
  TextStyle? style;
  TextDirection? textDirection;
  bool isHidden;
  Function(String value)? onChanged;
  Function(String value)? onFieldSubmitted;
  TextInputType? type;
  String? hintText;
  IconData? suffix;
  IconData? prefix;
  int? maxLines;
  Function()? suffixPressed;
  Color? cursorColor;
  String? Function(String? value)? validator;
  String? labelText;
  String? title;

  bool? isEnabled;
  String? errorText;
  TextInputType? textInputType;
  TextInputAction? textInputAction;
  FocusNode? focusNode;
  bool? autocorrect;
  double? verticalContentPadding;
  double? horizontalContentPadding;
  double? verticalPadding;

  DefaultTextField(
      {Key? key,
      this.textInputType,
      this.verticalPadding,
      this.textInputAction,
      this.focusNode,
      this.autocorrect,
      this.errorText,
      this.maxLines,
      this.isEnabled,
      this.textDirection,
      this.onTap,
      this.controller,
      this.style,
      this.horizontalContentPadding,
      this.verticalContentPadding,
      required this.isHidden,
      this.onChanged,
      this.onFieldSubmitted,
      this.type,
      this.hintText,
      this.suffix,
      this.prefix,
      this.suffixPressed,
      this.cursorColor,
      this.validator,
      this.labelText,
      this.title,
      this.formKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 10.h),
        child: TextFormField(
            textInputAction: textInputAction,
            autofocus: false,
            onTap: onTap,
            maxLines: maxLines,
            keyboardType: textInputType,
            textDirection: textDirection,
            enabled: isEnabled,
            style: style ?? const TextStyle(fontSize: 17, color: Colors.black),
            obscureText: isHidden,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator ??
                (value) {
                  if (value == null || value.isEmpty) {
                    return 'this Field can\'t be empty.';
                  }
                  return null;
                },
            key: key,
            controller: controller,
            onChanged: onChanged,
            decoration: InputDecoration(
                labelText: labelText,
                labelStyle:
                    TextStyle(color: ColorManager.primary.withOpacity(.5)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: ColorManager.primary),
                  borderRadius: BorderRadius.all(Radius.circular(30.sp)),
                ),
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: ColorManager.primary),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.sp),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: ColorManager.primary),
                  borderRadius: BorderRadius.all(Radius.circular(30.sp)),
                ),
                errorText: errorText,
                // labelText: labelText,
                hintStyle: TextStyle(
                    color: ColorManager.primary.withOpacity(.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontConstants.fontFamily),
                hintText: hintText,
                prefixIcon: (prefix != null)
                    ? Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Icon(
                          prefix,
                          color: Theme.of(context).primaryColor,
                          size: 35,
                        ),
                      )
                    : null,
                suffixIcon: (suffix != null)
                    ? InkWell(
                        onTap: suffixPressed,
                        child: Icon(
                          suffix,
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    : null,
                contentPadding: EdgeInsets.symmetric(
                    vertical: verticalContentPadding ?? 15.h,
                    horizontal: horizontalContentPadding ??
                        15.w)) // border: InputBorder.none,
            ));
  }
}
