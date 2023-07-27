import 'package:flutter/material.dart';
import 'package:get/get.dart' as getX;

emptyFieldValidation(value, {String? msg}) {
  return value.toString().isEmpty ? (msg ?? notEmptyFieldMessage) : null;
}

emailValidation(value) {
  return value.toString().isEmpty
      ? notEmptyFieldMessage
      : !getX.GetUtils.isEmail(value)
          ? "Please Enter Valid Email Address"
          : null;
}

const String notEmptyFieldMessage = "Field must not be empty";

void showProgressDialog({bool isLoading = true}) {
  isLoading = true;
  getX.Get.dialog(
      WillPopScope(
        onWillPop: () => Future.value(false),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
      barrierColor: Colors.black12,
      barrierDismissible: false);
}

void hideProgressDialog({bool isLoading = true, bool isProgressShow = true, bool isHideLoader = true}) {
  isLoading = false;
  if ((isProgressShow || isHideLoader) && getX.Get.isDialogOpen!) {
    getX.Get.back();
  }
}
