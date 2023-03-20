import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:testapi/users.dart';

class AllUsers extends StatelessWidget {
  const AllUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build users consumer");
    return Expanded(
      child: Consumer<Users>(builder: (context, model, child) {
        print(model.products);
        return ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                model.addNewUser();
              },
              child: Text("add user"),
            ),
            ElevatedButton(
              onPressed: () {
                model.deleteNewUser();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("delete user"),
            ),  
            ...model.products.map((product) {
              return Text(
                product['title'],
                style: TextStyle(fontSize: 40),
              );
            })
          ],
        );
      }),
    );
  }
}
