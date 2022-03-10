import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/widgets/iconfont.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;

  MainAppBar({
    this.themeColor = AppColors.MAIN_COLOR,
    Key? key,
  }) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: IconFont(
        iconName: IconFontHelper.LOGO,
        color: widget.themeColor,
        size: 40,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: widget.themeColor,
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          padding: const EdgeInsets.all(10.0),
          child: ClipOval(
            child: Image.asset('assets/images/avatar.png'),
          ),
        )
      ],
    );
  }
}
