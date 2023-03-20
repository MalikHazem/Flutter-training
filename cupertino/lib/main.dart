import 'package:cupertino/addButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.add),
          middle: Text('Cupertino'),
          trailing: Text('trailing'),
        ),
        child: Container(
          color: CupertinoColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 50 , left: 15, right: 15),
            child: Column(
              children: [
                const Expanded(
                  child: AddButton()
                  ),
                  Container(
                    height: 50,
                    color: CupertinoColors.systemPurple,
                    child: const Expanded(
                      child: Text('ss')
                      // child: Expanded(
                      // child: Row(
                      //   children: [
                      //     CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                      //     Expanded(
                      //       child: Column(
                      //         children: const [
                      //           Text("Valkyrae", 
                      //             style: TextStyle(fontSize: 18, color: Colors.black,),),
                      //           Text("Online",
                      //             style: TextStyle(fontSize: 12, color: Color.fromARGB(124, 0, 0, 0),),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // )
                      // child: ListTile(
                      //   leading: CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                      //   title: Text("Valkyrae", 
                      //     style: TextStyle(fontSize: 18, color: Colors.black,),
                      //   ),
                      //   subtitle: Text("Online",
                      //     style: TextStyle(fontSize: 12, color: Color.fromARGB(124, 0, 0, 0),),
                      //   ),
                      // ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

