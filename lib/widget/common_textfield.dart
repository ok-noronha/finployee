import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../core/constants/constants.dart';

OutlineInputBorder textFieldBorderStyle = OutlineInputBorder(borderSide: const BorderSide(color: AppColors.selectTypeDailogBorderColor), borderRadius: BorderRadius.circular(10.0));
OutlineInputBorder outLineBorderStyle = OutlineInputBorder(borderSide: const BorderSide(color: AppColors.selectTypeDailogBorderColor), borderRadius: BorderRadius.circular(10.0));
OutlineInputBorder errorBorder = OutlineInputBorder(borderSide: const BorderSide(color: AppColors.selectTypeDailogBorderColor), borderRadius: BorderRadius.circular(10.0));
// ignore: non_constant_identifier_names

Widget GetTextField({
  TextStyle? textStyle,
  int? maxLength,
  String? fieldTitleText,
  required String hintText,
  bool isPassword = false,
  TextEditingController? textEditingController,
  Function? validationFunction,
  Function? onSavedFunction,
  Function? onFieldSubmit,
  TextInputType? keyboardType,
  Function? onEditingComplete,
  Function()? onTapFunction,
  Function(String? value)? onChangedFunction,
  TextAlign align = TextAlign.start,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  bool? isEnabled,
  int? errorMaxLines,
  // String? initialText = "",
  int? maxLine,
  FocusNode? textFocusNode,
  GlobalKey<FormFieldState>? key,
  bool isReadOnly = false,
  Widget? suffixIcon,
  Widget? preFixIcon,
  bool? isFilled,
  Color? filledColor,
  RxBool? showPassword,
  EdgeInsetsGeometry? contentPadding,
  ScrollController? scrollController,
  TextStyle? hintStyle,
  OutlineInputBorder? outlineInputBorder,
  UnderlineInputBorder? underlineInputBorder,
  String? label,
  String? title,
  TextStyle? labelTextStyle,
  bool? showSuffixIcon = true,
  Color? cursorColor,
  double? height,
  TextCapitalization? textCapitalization,
}) {
  bool passwordVisible = isPassword;
  // final focusNode = FocusNode();

  return StatefulBuilder(builder: (context, newSetState) {
    // focusNode.addListener(() {
    //   if (focusNode.hasFocus) {
    //     hintText = "";
    //   } else {
    //     hintText = hintText;
    //   }
    //   newSetState(() {});
    // });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title, style: black14w500.copyWith(color: const Color(0xff979797))),
        if (title != null) const SizedBox(height: 4),
        SizedBox(
          height: height,
          child: TextFormField(
            scrollController: scrollController,
            maxLength: maxLength,
            textCapitalization: textCapitalization ?? TextCapitalization.none,

            // for scroll extra while keyboard open
            // scrollPadding: EdgeInsets.fromLTRB(20, 20, 20, 120),

            enabled: isEnabled != null && !isEnabled ? false : true,
            textAlign: align,
            readOnly: isReadOnly,
            showCursor: !isReadOnly,
            onTap: onTapFunction,
            key: key,
            // focusNode: textFocusNode /*?? focusNode*/,
            onChanged: (value) {
              if (onChangedFunction != null) {
                onChangedFunction(value);
              }
            },
            onEditingComplete: () {
              if (onEditingComplete != null) {
                onEditingComplete();
              }
            },
            validator: (value) {
              return validationFunction != null ? validationFunction(value) : null;
            },
            // onSaved: onSavedFunction != null ? onSavedFunction : (value) {},
            onSaved: (value) {
              // print("called`");
              // ignore: void_checks
              return onSavedFunction != null ? onSavedFunction(value) : hideKeyBoard(context);
            },
            onFieldSubmitted: (value) {
              //   print("callefdafd`");
              //   // ignore: void_checks
              return onFieldSubmit != null ? onFieldSubmit(value) : hideKeyBoard(context);
            },
            maxLines: maxLine ?? 1,
            keyboardType: keyboardType,
            controller: textEditingController,
            // initialValue: initialText,
            cursorColor: cursorColor ?? AppColors.black,
            obscureText: passwordVisible,
            textInputAction: inputAction,
            style: textStyle ?? black14w500,
            cursorWidth: 1,

            decoration: InputDecoration(
              // errorStyle: red12w500.copyWith(color: AppColors.appPrimaryColor),
              errorMaxLines: errorMaxLines ?? 1,
              filled: isFilled ?? true,
              fillColor: filledColor ?? AppColors.white.withOpacity(0.06),
              contentPadding: contentPadding ?? const EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 10.0),
              border: underlineInputBorder ?? outlineInputBorder ?? outLineBorderStyle,
              focusedBorder: underlineInputBorder ?? outlineInputBorder ?? textFieldBorderStyle,
              disabledBorder: underlineInputBorder ?? outlineInputBorder ?? (isEnabled == false ? outLineBorderStyle : textFieldBorderStyle),
              enabledBorder: underlineInputBorder ?? outlineInputBorder ?? outLineBorderStyle,
              errorBorder: underlineInputBorder ?? outlineInputBorder ?? errorBorder,
              focusedErrorBorder: underlineInputBorder ?? outlineInputBorder ?? errorBorder,
              hintText: hintText,
              prefixIcon: preFixIcon,
              suffixIcon: suffixIcon,
              hintStyle: hintStyle ?? grey14w500,
              label: label != null ? Text(label) : null,
              labelStyle: labelTextStyle,
            ),
          ),
        )
      ],
    );
  });
}

TextStyle black24w700 = const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700, fontFamily: AppFontFamily.poppins);

TextStyle black16w500 = const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFontFamily.poppins);
TextStyle black14w500 = const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFontFamily.poppins);
TextStyle black14w400 = const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400, fontFamily: AppFontFamily.poppins);
TextStyle black14w600 = const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600, fontFamily: AppFontFamily.poppins);
TextStyle grey14w500 = const TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFontFamily.poppins);

hideKeyBoard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}
