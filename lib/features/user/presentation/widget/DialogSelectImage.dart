import 'package:beauty_app/core/constants/AppColors.dart';
import 'package:beauty_app/core/constants/AppStyles.dart';
import 'package:beauty_app/core/widgets/CustomSmallBottom.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sizer/sizer.dart';

class DialogSelectImage extends StatefulWidget {
  final ValueChanged<ImageSource> onPressed;
  ImageSource character = ImageSource.camera;

  DialogSelectImage({Key key, this.onPressed}) : super(key: key);
  @override
  _DialogSelectImageState createState() => _DialogSelectImageState();
}

class _DialogSelectImageState extends State<DialogSelectImage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Text(
        "Choose the Way".tr(),
        style: AppStyles.nameText.copyWith(
          fontSize: 15.0.sp,
          color: AppColors.Secondary_Style,
        ),
      ),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0.w),
        width: 70.0.w,
        color: AppColors.UI_White,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<ImageSource>(
              selected: widget.character == ImageSource.camera,
              activeColor: AppColors.Primary_Style,
              value: ImageSource.camera,
              groupValue: widget.character,
              onChanged: (ImageSource value) {
                setState(() {
                  widget.character = value;
                });
              },
              title: Text(
                "Camera".tr(),
                style: AppStyles.nameText,
              ),
            ),
            RadioListTile<ImageSource>(
              selected: widget.character == ImageSource.gallery,
              activeColor: AppColors.Primary_Style,
              value: ImageSource.gallery,
              groupValue: widget.character,
              onChanged: (ImageSource value) {
                setState(() {
                  widget.character = value;
                });
              },
              title: Text(
                "Gallery".tr(),
                style: AppStyles.nameText,
              ),
            ),
            Text(
              "note".tr() +
                  "If you want to permanently delete the image, press and hold on it"
                      .tr(),
              style: AppStyles.shapeText.copyWith(
                fontSize: 10.0.sp,
              ),
            ),
            SizedBox(
              height: 2.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  CustomSmallButton(
                    buttonSize: true,
                    onClick: () {
//                      Navigator.pop(context);

                      widget.onPressed(widget.character);
                    },
                    text: "confirm".tr(),
                    textColor: AppColors.UI_White,
                    buttonColor: AppColors.Secondary_Style,
                  ),
                  SizedBox(
                    width: 3.0.w,
                  ),
                  CustomSmallButton(
                    buttonSize: true,
                    onClick: () {
                      Navigator.pop(context);
                    },
                    text: "cancel".tr(),
                    buttonColor: AppColors.UI_White,
                    textColor: AppColors.Black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
