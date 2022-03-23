import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  String label;
  Function onClick;
  Color color;
  Color highlight;
  Widget icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton({
    required this.label,
    required this.onClick,
    this.color = AppColors.MAIN_COLOR,
    this.highlight = AppColors.HIGHTLIGHT_DEFAULT,
    required this.icon,
    this.borderColor = Colors.transparent,
    this.labelColor = Colors.white,
    this.borderWidth = 4,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: this.color,
          child: InkWell(
            splashColor: this.highlight,
            highlightColor: this.highlight,
            onTap: () {
              this.onClick();
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: this.borderColor,
                  width: this.borderWidth,
                ),
              ),
              child: this.icon == null
                  ? Text(
                      this.label,
                      style: TextStyle(
                          fontSize: 16,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        this.icon,
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          this.label,
                          style: TextStyle(
                            fontSize: 16,
                            color: this.labelColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
