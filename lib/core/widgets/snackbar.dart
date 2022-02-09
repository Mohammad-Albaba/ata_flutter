import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/main.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sizer/sizer.dart';

snackBar(String message) {
  return SnackBar(
    elevation: 100,
    backgroundColor: AppColors.UI_White,
    content: Text(message,
        overflow: TextOverflow.ellipsis,
        style: AppStyles.normalText.copyWith(color: AppColors.Black)),
    behavior: SnackBarBehavior.fixed,
    // margin:  EdgeInsets.symmetric(horizontal: 2.0.w),
    duration: Duration(milliseconds: 1500),
    animation: AlwaysStoppedAnimation(0.1),
    shape: RoundedRectangleBorder(
      side: BorderSide(
          color: AppColors.Black,
          width: 1.0), /*borderRadius: BorderRadius.circular(5.0.sp)*/
    ),
//    action: SnackBarAction(
//      label: 'Close'.tr(),
//      textColor: AppColors.UI_White,
//      onPressed: () {},
//    ),
  );
}
// class AppSnackBar extends SnackBar {
//   final String message;
//
//
//   const AppSnackBar({Key key, this.message}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SnackBar(
//       content: Text(message),
//       action: SnackBarAction(
//         label: 'Undo',
//         onPressed: () {
//           // Some code to undo the change.
//         },
//       ),
//     );
//   }
// }
