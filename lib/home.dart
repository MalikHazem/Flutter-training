import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:users/active_users.dart';
import 'package:users/all_users.dart';
import 'package:users/users.dart';
import 'package:users/users_cont.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = false;
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  getData() async {
    Users usersProvider = Provider.of<Users>(context, listen: false);
    setState(() {
      isLoading = true;
    });

    var r = await usersProvider.fetchUsers();
    if (r) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build home");
    return isLoading
        ? Container(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          )
        : Column(
            children: const [
              ActiveUSers(), //provider
              UsersCount(), //consumer
              AllUsers(), //consumer
            ],
          );
  }
}
