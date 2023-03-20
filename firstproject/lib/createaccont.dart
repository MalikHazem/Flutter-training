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
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: double.infinity,
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Image.network( // <-- SEE HERE
                      // 'https://static.wixstatic.com/media/50f81c_d47a7b60c042497d99bfc1ce0dd92166~mv2.png',
                      // ),
                      Image.asset('assets/images/cignifi.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create your Account",
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 37, 37, 37)),
                      ),
                      const SizedBox(height: 17),
                      Material(
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(255, 110, 110, 110),
                        child: TextFormField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Colors.white, width: 3.0))
                        ) ,
                        ),
                        ),
                        const SizedBox(height: 17),
                      Material(
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(255, 110, 110, 110),
                        child: TextFormField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Colors.white, width: 3.0))
                        ) ,
                        ),
                        ),  
                      const SizedBox(height: 17),
                      Material(
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(255, 110, 110, 110),
                        child: TextFormField(
                        cursorRadius: const Radius.circular(40.0),
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Colors.white, width: 3.0))
                        ) ,
                        ),
                        ),
                      const SizedBox(height: 25),
                      SizedBox(
                      width: double.infinity,
                      height: 40.0,
                      child: ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Color.fromARGB(90, 0, 0, 0))
                        ),
                        backgroundColor: const Color.fromARGB(255, 19, 0, 124),
                      ),
                      child: const Text(
                        "Sgin up",
                        style: TextStyle(color: Colors.white),
                      ),
                      ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                      Text(
                        "-Or sign in with-",
                        style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                      ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                        style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.black)),
                        icon: Image.asset('assets/images/google.png'),
                        iconSize: 40,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/facebook.png'),
                        iconSize: 50,
                        padding: const EdgeInsets.only(bottom: 15),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/twitter.png'),
                        iconSize: 40,
                        onPressed: () {},
                      ),
                      ],
                      ),
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