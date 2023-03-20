import 'package:flutter/material.dart';
import 'package:firstproject/dashboard/users3.dart';

class Users2 extends StatelessWidget {
  const Users2({super.key});

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
            // Expanded(
            //   child: Row(
            //     children: [
            //       const ListTile(
            //         title: Text("Message's", 
            //           style: TextStyle(fontSize: 18, color: Colors.white,),
            //         ),
            //         trailing: Icon(Icons.search,
            //         color: Colors.white,),
            //       ),
            //       ElevatedButton(
            //       onPressed: () {
            //         Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) => const Users3(),
            //             )
            //           );
            //       },
            //       child: const CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
            //       )
            //     ],
            //   )
            //   ),
        //     Row(
        //       children: [
        //         SizedBox(
        //       width: double.infinity,
        //       height: 50,
        //       child: Column(
        //       children:  [
        //         const SizedBox(
        //           child: ListTile(
        //             title: Text("Message's", 
        //               style: TextStyle(fontSize: 18, color: Colors.white,),
        //             ),
        //             trailing: Icon(Icons.search,
        //             color: Colors.white,),
        //       ),
        //         ),
        //         SizedBox(
        //           child: ElevatedButton(
        //             onPressed: () {
        //               Navigator.of(context).push(
        //                 MaterialPageRoute(
        //                   builder: (context) => const Users3(),
        //                 )
        //               );
        //             },
        //           child: const CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),)
        //         ),
        //     ],
        //   ),
        // ),
        //       ],
        //     ),
            ////////////////
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Column(
              children: const [
                ListTile(
                  title: Text("Message's", 
                    style: TextStyle(fontSize: 18, color: Colors.white,),
                  ),
                  trailing: Icon(Icons.search,
                  color: Colors.white,),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
              const SizedBox(width: 15),
              Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                elevation: 10,
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 4,
                    bottom: 4,
                    left: 8,
                    right: 8
                    ),
                  child: Text("Friends", 
                    style: TextStyle(fontSize: 16, color: Colors.blue,),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              const Text("Teachers", 
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 201, 201, 201),),
              ),
              const SizedBox(width: 20),
              const Text("Groups", 
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 201, 201, 201),),
              ),
              const SizedBox(width: 20),
              const Text("Add More", 
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 201, 201, 201),),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          ),
          // color: Colors.white,
          height: 412,
          child: SizedBox(
            width: double.infinity,
            height: 30,
            child: ListView(
              children: ListTile.divideTiles(
                context: context, 
                tiles: [
                  ListTile(
                      title: const Text("Carmen Myers", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.purple,
                            elevation: 2,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("2", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                      subtitle: const Text("Hello ali"),
                    ),
                    ListTile(
                      title: const Text("Valkyrae", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.purple,
                            elevation: 2,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("5", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user3.jpg"),),
                      subtitle: const Text("Rachell Hofstetter"),
                    ),
                    ListTile(
                      title: const Text("Myth", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.purple,
                            elevation: 2,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("1", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user2.jpg"),),
                      subtitle: const Text("you need new face"),
                    ),
                    ListTile(
                      title: const Text("Corpse Husband", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("1", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user4.jpg"),),
                      subtitle: const Text("i will win you"),
                    ),
                    ListTile(
                      title: const Text("Carmen Myers", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            elevation: 0,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("1", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                      subtitle: const Text("Hello ali"),
                    ),
                    ListTile(
                      title: const Text("Valkyrae", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            elevation: 0,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("1", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user3.jpg"),),
                      subtitle: const Text("Rachell Hofstetter"),
                    ),
                    ListTile(
                      title: const Text("Myth", 
                        style: TextStyle(fontSize: 20, color: Colors.black,),
                      ),
                      trailing:
                      // CircleAvatar(
                      //   child: Text("1", 
                      //   style: TextStyle(fontSize: 14, color: Colors.white,),
                      // ),
                      // ),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            elevation: 0,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1.5,
                                bottom: 1.5,
                                left: 6,
                                right: 6
                              ),
                              child: Text("1", 
                                style: TextStyle(fontSize: 14, color: Colors.white,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("11:12PM", 
                                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 112, 112, 112),),
                              ),
                        ],
                      ),
                      
                      leading: 
                          const CircleAvatar(backgroundImage: AssetImage("assets/images/user2.jpg"),),
                      subtitle: const Text("you need new face"),
                    ),
                ]
                ).toList(),
            ),
          ),
        ),
          ],
        )
      )
    );
  }
}
