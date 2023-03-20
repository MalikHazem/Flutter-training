
import 'package:flutter/material.dart';
import 'package:widget/viewpage.dart';

class BaselinePage extends StatelessWidget {
  static const routeName = "/baseline";
  const BaselinePage({super.key});

  @override
  Widget build(BuildContext context) {
    void goToViewPage()
    {
      Navigator.pushNamed(context, ViewPage.routeName);
    }
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Container(
        width: 500,
        height: 500,
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.teal,
              child: Row(
                children: [
                  Baseline(
              baseline: 5,
              baselineType: TextBaseline.alphabetic,
              child: ElevatedButton(
                onPressed: (() {
                  goToViewPage();
                }), 
                child: const Icon (Icons.chevron_right, size: 20,),
              ),
            ),
            Baseline(
              baseline: 100,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
            Baseline(
              baseline: 0,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
              
            ),
            Baseline(
              baseline: -50,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.cyan,
              ),
            ),
            Baseline(
              baseline: -100,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              ),
            ),
                ],
              ),
            ),
            
          ],
        ),
      )
    );
  }
}