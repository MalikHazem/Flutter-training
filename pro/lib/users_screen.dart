import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:pro/users.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  bool _flag = true;
  final deleteJob = TextEditingController();
  final addJobs = TextEditingController();

  void initState() {
    // Provider.of<Users>(context, listen: false).setInitData();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild widget");
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Selector<Users, List>(
            selector: (context, model) => model.getUsers,
            builder: (context, model, child) {
              print("rebuild  users selector");

              return ListView(
                children: [
                  ...model.map((user) {
                    return Text(
                      user,
                      style: TextStyle(fontSize: 40),
                    );
                  }),
                ],
              );
            },
          ),
        ),
        Expanded(
          child: Selector<Users, List>(
            selector: (context, model) => model.getJobs,
            builder: (context, model, child) {
              print("rebuild  jobs selector");
              return ListView(
                children: [
                  ...model.map((job) {
                    return Text(
                      job,
                      style: TextStyle(fontSize: 40),
                    );
                  }),
                ],
              );
            },
          ),
        ),
        Consumer<Users>(builder: (context, model, child) {
          print("rebuild consumer");
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  model.addNewUser();
                },
                child: Text('add new user'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  model.removeUser();
                  // setState(() => _flag = !_flag);
                },
                child: Text('delete user'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _flag
                      ? Colors.red
                      : Colors.teal, // This is what you need!
                ),
              ),
              Container(
                height: 100,
                child: Column(
                  children: [
                    TextFormField(
                      controller: addJobs,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter Job',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        model.addNewJob(addJobs.text);
                      },
                      child: Text('add new job'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Column(
                  children: [
                    TextFormField(
                      controller: deleteJob,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter to delete job',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        model.removeJob(deleteJob.text);
                      },
                      child: Text('delete job'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        })
      ],
    ));
  }
}






  // Selector<MyModel, String>(
  //           selector: (context, myModel1) => myModel1.showOne,
  //           builder: (context, model, child) {
  //             print("this is rebuild center 1");
  //             return Center(
  //               child: Text("${model}"),
  //             );
  //           }),