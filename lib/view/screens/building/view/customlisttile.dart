
import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.onTap,
    required this.text,
    this.trailing,
    this.subtitle, this.leading,
  });
  final Function()? onTap;
  final String text;
  final Widget? subtitle;
final Widget? leading;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       color: white,
        borderRadius: BorderRadius.circular(16),
       
      ),
      child: ListTile(
          onTap: onTap,
          leading: leading,
          title: Text(text, style: const TextStyle(fontSize: 14, color: black)),
          subtitle: subtitle,
          trailing: const TralingIcon(),),
    );
  }
}

class TralingIcon extends StatelessWidget {
  const TralingIcon({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.arrow_forward_ios_sharp,size: 20,));
  }
}
