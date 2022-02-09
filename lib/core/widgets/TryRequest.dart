import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'CustomSmallBottom.dart';

class TryRequest extends StatelessWidget {
  var onTry;

  TryRequest({this.onTry});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Error".tr(),
            style: AppStyles.normalText,
          ),
          Center(
            child: Container(
              child: CustomSmallButton(
                text: "try".tr(),
                onClick: () {
                  onTry();
                },
                textColor: AppColors.UI_White,
                buttonColor: AppColors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
