import 'package:flutter/cupertino.dart';

class Users extends ChangeNotifier{
  List users = [];
  List jobs = [];

  void addNewUsers()
  {
    users.add("Malik");
    notifyListeners();
  }

   void addNewjobs()
  {
    jobs.add("development web");
    notifyListeners();
  }

  setinitdate()
  {
    for (var i = 0; i > 3; i++)
    {
      users.add("user" + i.toString());
      jobs.add("job" + i.toString());
    }
  }

}