import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTile extends StatelessWidget {
  String title = "";
  String icon = "";
  String routeScreen;

  CustomTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.routeScreen});

  @override
  Widget build(BuildContext context) {
    onPresseGO() {
      Navigator.pushNamed(context, routeScreen);
    }

    return ListTile(
        contentPadding: const EdgeInsets.fromLTRB(20, 2, 20, 20),
        leading: SizedBox(
          width: 30,
          height: 30,
          child: SvgPicture.asset(icon),
        ),
        onTap: null,
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        trailing: title == "Logout"
            ? null
            : IconButton(
                onPressed: onPresseGO,
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 35,
                ),
              ));
  }
}
