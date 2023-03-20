import 'package:flutter/widgets.dart';
import 'package:httpandprovider/users.dart';
import 'package:provider/provider.dart';

class UsersCount extends StatelessWidget {
  const UsersCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build cont consumer init");
    return Container(
      height: 40,
      child: Consumer<Users>(builder: (context, model, child) {
        print("build count consumer ");
        return Text(
          "users count(${model.usersCount()})",
          style: TextStyle(fontSize: 20),
        );
      }),
    );
  }
}
