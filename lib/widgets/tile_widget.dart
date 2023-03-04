import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final String title, subtitle;
  final IconData leadingIcon,trailingIcon;
  final Color? listTileColor, iconColor;


  const TileWidget({super.key,
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart,
    this.listTileColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: listTileColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            side: BorderSide(
              width: 2.0,
              color: Colors.blue,
            )),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        leading: IconButton(
          icon: Icon(leadingIcon),
          color: iconColor,
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(trailingIcon),
          color: iconColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
