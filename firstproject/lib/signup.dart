import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

void onPressed()
{

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          color: Colors.black,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const[
                      Text("Sign up", style: TextStyle(fontSize: 34,color: Colors.white, )),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 250,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
            children: const [
              Expanded(
                child: ListTile(
            subtitle: TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        prefixIcon: Icon(Icons.email),
                        labelText: "Enter your email",
                        isDense: true,
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        ),
                      ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              Expanded(
                child:ListTile(
            subtitle: TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        prefixIcon: Icon(Icons.email),
                        labelText: "Enter your email",
                        isDense: true,
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        ),
                      ),
                ),
              ),
            ],
            ),
                      const SizedBox(height: 17),
                      const TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                          
                        ),
                        prefixIcon: Icon(Icons.email),
                        labelText: "Enter your email",
                        isDense: true,
                        contentPadding: EdgeInsets.all(15),
                        filled: true,
                        fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 17),
                      const TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                          
                        ),
                        prefixIcon: Icon(Icons.lock_rounded),
                        labelText: "Enter your password",
                        isDense: true,
                        contentPadding: EdgeInsets.all(15),
                        filled: true,
                        fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 17),
                      Row(children: const [
                        Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(color: Colors.white),
                      )],),
                      
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  width: double.infinity,
                  height: 180,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: const EdgeInsets.only(top:18, bottom: 18, left: 25,right: 25),
                      ),
                      child: const Text("Sgin in"),),
                      const SizedBox(height: 15),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                      Text(
                        "Not registered yet?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Create an account",
                        style: TextStyle(color: Colors.purple),
                      ),
                      ],),
                    ],
                  ),
                ),
                
              
            ],
            ),
        ),
          

      ),
    );
  }
}