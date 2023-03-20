import 'package:flutter/material.dart';
import 'package:widget/baseline.dart';
import 'package:widget/draggable.dart';
import 'package:widget/gridView.dart';

class ViewPage extends StatelessWidget {
  static const routeName = "/viewpage";
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    void goToBaselinePage()
    {
      Navigator.pushNamed(context, BaselinePage.routeName);
    }
    void goToGridViewPage()
    {
      Navigator.pushNamed(context, GridViewPage.routeName);
    }
    void goToDraggablePage()
    {
      Navigator.pushNamed(context, draggablePage.routeName);
    }

    return PageView(
      //    pageController = PageController(initialPage: 0);
      // scrollDirection: Axis.vertical,  
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const[
              Text('ViewPage', style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Container(
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Baseline', style: TextStyle(color: Colors.white),),
              ElevatedButton(
                onPressed: (() {
                  goToBaselinePage();
                }), 
                child: const Icon (Icons.chevron_right, size: 20,),
              )
            ],
          ),
        ),
        Container(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('GridView', style: TextStyle(color: Colors.white),),
              ElevatedButton(
                onPressed: (() {
                  goToGridViewPage();
                }), 
                child: const Icon (Icons.chevron_right, size: 20,),
              )
            ],
          ),
        ),
        Container(
          color: Colors.deepOrange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Draggable', style: TextStyle(color: Colors.white),),
              ElevatedButton(
                onPressed: (() {
                  goToDraggablePage();
                }), 
                child: const Icon (Icons.chevron_right, size: 20,),
              )
            ],
          ),
        ),
      ],
    );
  }
}