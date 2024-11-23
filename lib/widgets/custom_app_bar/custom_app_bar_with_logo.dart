import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marriage_management_app/utils/app_urls.dart';

class CustomAppBarWithLogo extends StatelessWidget
    implements PreferredSizeWidget {
  final void Function() onPressed;
  const CustomAppBarWithLogo({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      leading: IconButton(
          onPressed: onPressed,
          icon: Icon(
            CupertinoIcons.arrow_left_circle_fill,
          )),
      centerTitle: true,
      title: Image.asset(
        AppUrls.appLogoImg,
        width: 150.w,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.h);
}
