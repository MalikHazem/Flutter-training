import 'package:academy/modules/drawer/screens/drawer_screen.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/http-implement/testApi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.PRIMARY_COLOR,
      // ignore: prefer_const_constructors
      centerTitle: false,
      title: Consumer<TestApi>(builder: (context, model, child) {
        print('model.user');
        var u = model.fetchUser();
        // print(model.user);
        return const Text(
          "Ali Hassan",
          style: TextStyle(
            color: AppColors.TERNARY_COLOR,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        );
      }),
      leading: Container(
          width: 45,
          height: 45,
          margin: const EdgeInsets.all(8),
          child: RawMaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomDrawer()),
              );
            },
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.woolha.com/media/2020/03/eevee.png'),
              backgroundColor: AppColors.SECONDARY_COLOR,
              // radius: width * 0.08,
              radius: 40,
            ),
          )),
      actions: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(top: 10),
          child: Stack(
            children: [
              const Icon(
                Icons.notifications,
                color: AppColors.PRIMARY_TEXT,
                size: 30,
              ),
              Container(
                width: 30,
                height: 30,
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(top: 2),
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.SECONDARY_COLOR,
                      border: Border.all(
                          color: AppColors.TERNARY_LIGHT_COLOR, width: 1)),
                  child: const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
