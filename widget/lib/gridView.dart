import 'package:flutter/material.dart';
import 'package:widget/baseline.dart';
import 'package:widget/viewpage.dart';

class GridViewPage extends StatelessWidget {
  static const routeName = "/gridview";
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    void goToViewPage()
    {
      Navigator.pushNamed(context, ViewPage.routeName);
    }
    void goToBaselinePage()
    {
      Navigator.pushNamed(context, BaselinePage.routeName);
    }
    return Container(
      color: Colors.white,
      child: GridView.extent(  
              primary: false,  
              padding: const EdgeInsets.all(0),  
              crossAxisSpacing: 10,  
              mainAxisSpacing: 10,  
              maxCrossAxisExtent: 200.0,  
              children:[  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: Column(
                    children:  [
                      const Text('ViewPage', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ElevatedButton(
                        onPressed: (() {
                          goToViewPage();
                          }), 
                        child: const Icon (Icons.chevron_right, size: 20,),
                      )
                    ],
                  ),  
                  color: Colors.blue,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: Column(
                    children: [
                      const Text('BaselinePage', style: TextStyle(fontSize: 20,color: Colors.white)),
                      ElevatedButton(
                        onPressed: (() {
                          goToBaselinePage();
                          }), 
                        child: const Icon (Icons.chevron_right, size: 20,),
                      )
                    ],
                  ),  
                  color: Colors.yellow,  
                ), 
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('First', style: TextStyle(fontSize: 20, color: Colors.white)),  
                  color: Colors.yellow,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('Second', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.blue,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('Third', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.blue,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('Four', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.yellow,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('Fifth', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.yellow,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('Six', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.blue,  
                ), 
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('seventh', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.blue,  
                ),  
                Container(  
                  padding: const EdgeInsets.all(8),  
                  child: const Text('eighth', style: TextStyle(fontSize: 20,color: Colors.white)),  
                  color: Colors.yellow,  
                ),   
              ],  
            ),
    );
  }
}