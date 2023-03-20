import 'package:flutter/widgets.dart';

class Users extends ChangeNotifier {
  final List _users = ["user 1", "user 2"];
  final List _jobs = ["job 1", "job 2"];
  List get getUsers => List.from(_users);
  List get getJobs => List.from(_jobs);

  void addNewUser()
  {
    _users.add("Malik");
    notifyListeners();
  }

  void addNewJob(job)
  {
    _jobs.add(job);
    notifyListeners();
  }

  void removeUser()
  {
    if(_users.length != 0)
      _users.removeLast();

    notifyListeners();
  }

  void removeJob(name)
  {
    if(_jobs.length != 0)
      _jobs.remove(name);

    notifyListeners();
  }

  setinitdate()
  {
    for (var i = 0; i > 5; i++)
    {
      _users.add("user" + i.toString());
      _jobs.add("job" + i.toString());
    }
  }
}
