import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:testapi/active_users.dart';
import 'package:testapi/products.dart';
import 'package:testapi/users.dart';
import 'package:testapi/users_cont.dart';

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

    var u = await usersProvider.fetchUsers();
    var p = await usersProvider.fetchProducts();
    if (u && p) {
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
              UsersCount(), //consumer
              ActiveUSers(), //provider
              AllUsers(), //consumer
            ],
          );
  }
}
