import 'package:flutter/material.dart';
import 'package:font/user_info.dart';

class userScreen extends StatelessWidget {
  static const routeName = "/user_route";
  const userScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserInfo;
    void closeUserScreen()
    {
      Navigator.pop(context);
    }
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                user.name.toString()
                ),
                      leading:
                      CircleAvatar(
                        child: Text(user.id.toString(), 
                        style: const TextStyle(fontSize: 14, color: Colors.white,),
                      ),
                      ),
                ),
                ),
                Container(
                  child: ElevatedButton(
                    child: Text('go back'),
                    onPressed: (() {
                      closeUserScreen();
                    }
                    ),
                  ),
                )
            ]),
        ),
      ),
    );
  }
}