import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fix extends StatelessWidget {
  const fix({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 30,
            child: const Icon(Icons.chevron_left_rounded,color: Colors.deepPurple, size: 45,),
          ),
          const Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                  title: Text("Valkyrae", 
                        style: TextStyle(fontSize: 18, color: Colors.black,),
                      ),
                  subtitle: Text("Online",
                  style: TextStyle(fontSize: 12, color: Color.fromARGB(124, 0, 0, 0),),
                  ),
              ),
          ),
          Container(
            width: 40,
            child: const Icon(Icons.settings,color: Colors.deepPurple, size: 35,),
          ),
        ],
      ),
    );
  }
}