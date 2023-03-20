import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:users/users.dart';

class ActiveUSers extends StatelessWidget {
  const ActiveUSers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build active users");
    Users usersProvider = Provider.of<Users>(context);

    return Expanded(
      child: ListView(
        children: [
          ...usersProvider.users.map((user) {
            return Text(
              user['firstName'],
              style: TextStyle(fontSize: 40),
            );
          })
        ],
      ),
    );
  }
}
