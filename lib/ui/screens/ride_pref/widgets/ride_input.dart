import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import '../../../widgets/actions/bla_icon_button.dart';

class RidePrefInput extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData leftIcon;

  /// If true the text is displayed lighter
  final bool isPlaceHolder;

  /// Optional right icon
  final IconData? rightIcon;
  final VoidCallback? onRightIconPressed;

  const RidePrefInput({
    super.key,
    required this.title,
    required this.onPressed,
    required this.leftIcon,
    this.rightIcon,
    this.onRightIconPressed,
    this.isPlaceHolder = false,
  });

  @override
  Widget build(BuildContext context) {
    final textColor =
        isPlaceHolder ? BlaColors.textLight : BlaColors.textNormal;

    return ListTile(
      onTap: onPressed,
      title: Text(
        title,
        style: BlaTextStyles.button.copyWith(
          fontSize: 14,
          color: textColor,
        ),
      ),
      leading: Icon(
        leftIcon,
        size: BlaSize.icon,
        color: BlaColors.iconLight,
      ),
      trailing: _trailing,
    );
  }

  Widget? get _trailing {
    if (rightIcon == null) {
      return null;
    }

    return BlaIconButton(
      icon: rightIcon!,
      onPressed: onRightIconPressed,
    );
  }
}
