import 'package:flutter/material.dart';

class Users3 extends StatelessWidget {
  const Users3({super.key});

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
        const SizedBox(height: 40),
        Container(
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          ),
          // color: Colors.white,
          height: 540,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 70,
                child: ListView(
                  children: ListTile.divideTiles(
                    context: context, 
                    tiles: [
                      const ListTile(
                          title: Text("Carmen Myers", 
                            style: TextStyle(fontSize: 20, color: Colors.black,),
                          ),
                          leading: 
                              CircleAvatar(backgroundImage: AssetImage("assets/images/user1.jpg"),),
                          subtitle: Text("Life is inspiring"),
                        ),
                    ]
                    ).toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 120,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox( width: 16),
                        CircleAvatar(backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.person_rounded, color: Colors.white,)
                        ),
                        SizedBox( width: 40),
                        CircleAvatar(backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.spatial_audio_off_sharp, color: Colors.white,)
                        ),
                        SizedBox( width: 40),
                        CircleAvatar(backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.groups_sharp, color: Colors.white,)
                        ),
                        SizedBox( width: 40),
                        CircleAvatar(backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.web_asset_outlined, color: Colors.white,)
                        ),
                      ],
                    ),
                    const SizedBox( height: 16),
                    Row(
                      children: const [
                        SizedBox( width: 16),
                        CircleAvatar(backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.star, color: Colors.white,)
                        ),
                        SizedBox( width: 40),
                        CircleAvatar(backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.circle, color: Colors.white,)
                        ),
                        SizedBox( width: 40),
                        CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.add, color: Colors.deepPurple, size: 35,)
                        ),
                      ],
                    ),
                  ],
                )
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
          height: 300,
          child: SizedBox(
            width: double.infinity,
            height: 30,
            child: ListView(
              children: ListTile.divideTiles(
                context: context, 
                tiles: [
                  const ListTile(
                      title: Text("Account", 
                        style: TextStyle(fontSize: 15, color: Colors.black,),
                      ),
                      leading: 
                          CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.music_note_outlined, color: Colors.deepPurple,)
                        ),
                    ),
                    const ListTile(
                      title: Text("Chat", 
                        style: TextStyle(fontSize: 15, color: Colors.black,),
                      ),
                      leading: 
                          CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.insert_comment, color: Colors.deepPurple,)
                        ),
                    ),
                    const ListTile(
                      title: Text("Notifications", 
                        style: TextStyle(fontSize: 15, color: Colors.black,),
                      ),
                      leading: 
                          CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.notifications_rounded, color: Colors.deepPurple,)
                        ),
                    ),
                    const ListTile(
                      title: Text("Data and storage usage", 
                        style: TextStyle(fontSize: 15, color: Colors.black,),
                      ),
                      leading: 
                          CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.data_saver_off, color: Colors.deepPurple,)
                        ),
                    ),
                    const ListTile(
                      title: Text("Invite a friend", 
                        style: TextStyle(fontSize: 15, color: Colors.black,),
                      ),
                      leading: 
                          CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.near_me_sharp, color: Colors.deepPurple,)
                        ),
                    ),
                    const ListTile(
                      title: Text("Help", 
                        style: TextStyle(fontSize: 15, color: Colors.black,),
                      ),
                      leading: 
                          CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.help, color: Colors.deepPurple,)
                        ),
                    ),
                ]
                ).toList(),
            ),
          ),
        ),

        Row(
          children: const [
            SizedBox(width: 20,),
            Icon(Icons.nightlight_round, color: Colors.black54,),
            SizedBox(width:150,),
            Text('Acttive status'),
            Icon(Icons.toggle_on, color: Colors.deepPurple, size: 35,)
          ],
        )
        // Row(
        //     children: [
        //     SizedBox(
        //       width: 170,
        //       child: Row(
        //       children: const [
        //       SizedBox( width: 16),
        //       CircleAvatar(backgroundColor: Colors.white,
        //       child: Icon(Icons.nightlight_round, color: Colors.black54,)
        //       ),
        //   ],
        // ),
        //     ),
        //     SizedBox(
        //       child: Row(
        //       children:const [
        //         Text('Acttive status'),
        //         SizedBox(width: 10,),
        //         Icon(Icons.toggle_on, color: Colors.deepPurple, size: 35,)
        //   ],
        // ),
        //     ),
        //   ],
        // ),
            ],
          ),
        ),
          ],
        )
      )
    );
  }
}
