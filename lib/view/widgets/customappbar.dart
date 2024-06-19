import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingIcon;
  final List<Widget>? actions;
  final IconData? icon;
  final void Function()? onPressed;
  final Widget? text;
  const CustomAppBar({
    super.key,
    this.leadingIcon,
    this.actions,
    this.icon,
    this.onPressed,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: text,
      titleSpacing: 1,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(26),
          bottomRight: Radius.circular(26),
        ),
      ),
      backgroundColor: green3,
      leading: const LeadingIcon(),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class ActionIcon extends StatelessWidget {
  const ActionIcon({
    super.key,
    this.onPressed,
    this.icon,
  });

  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: white,
          size: 30,
        ),
      ),
    );
  }
}

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    super.key,
    this.onPressed,
    this.icon,
  });

  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: white,
          size: 25,
        ),
      ),
    );
  }
}
