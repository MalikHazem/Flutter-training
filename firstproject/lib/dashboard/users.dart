import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  var message = [];
  var addusers  ;
  Users(this.message, this.addusers, {super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {

// var message = [
//     {"subject": "Hello", "date": "11:12PM"},
//   ];

  var subject = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container
      (
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/msg.jpg"),
          fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 65,
              child: Column(
              children:  [
                ListTile(
                  leading: const CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                  title: const Text("Valkyrae", 
                        style: TextStyle(fontSize: 18, color: Colors.white,),
                      ),
                  subtitle: const Text("Online",
                  style: TextStyle(fontSize: 12, color: Color.fromARGB(125, 255, 255, 255),),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.more_vert,
                          color: Colors.white,),
                        ],
                      ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          ),
          // color: Colors.white,
          height: 400,
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: ListView(
              children: [
                const SizedBox( height: 20,),
                ...widget.message.map((item) {
                return Column(
                  children: [
                    ListTile(
                          trailing:
                          Column(
                            children: [
                              Material(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  ),
                                color: const Color.fromARGB(117, 155, 39, 176),
                                elevation: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4,
                                    bottom: 4,
                                    left: 15,
                                    right: 15
                                  ),
                                  child: Text(item['subject'].toString(),
                                  style: const TextStyle(fontSize: 14, color: Colors.white,),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(item['date'].toString(), 
                                    style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                                  ),
                            ],
                          ),
                        ),
                        ListTile(
                      leading:
                      Column(
                        children: [
                          Material(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              ),
                            color: const Color.fromARGB(255, 211, 211, 211),
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                bottom: 4,
                                left: 15,
                                right: 15
                              ),
                              child: Text(item['subject'].toString(), 
                                style: const TextStyle(fontSize: 14, color: Colors.black,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(item['date'].toString(), 
                                style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
              ]
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          ),
          // color: Colors.white,
          height: 40,
            child: Material(
              elevation: 10.0,
              child: TextFormField(
                onChanged: (val) {
                  subject = val;
                },
              obscureText: false,
              autofocus: false,
              decoration: InputDecoration(
              hintText: 'Type a message',
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  left: 5,
                  right: 5,
                ),
                child: ElevatedButton(
            onPressed: () {
                setState(() {
                  widget.message.add({'subject': subject, 'date': '11:16PM'});
                });
                print(widget.message);
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color.fromARGB(213, 211, 211, 211),
            ),
            child: const Icon(
                  Icons.send,
                  color: Colors.blue,
            ),
          ),
              ),
              fillColor: const Color.fromARGB(255, 211, 211, 211),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: Color.fromARGB(255, 211, 211, 211),
              width: 3.0)
              )
              ) ,
              ),
              ),
          ),
          ],
        )
      )
    );
  }
}
