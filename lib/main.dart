import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context )
  {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Stack(
          children: <Widget>[
            Container(
              child: const SizedBox(
                height: 600,
                width: 600,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/backgroundimage.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child:ElevatedButton(
                    child: const Icon(Icons.menu),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: const CircleBorder(),
                      elevation: 6.0
                    ),
                    onPressed: () {
                      // Pressed Action
                    },
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child: ElevatedButton(
                    child: Row(
                      children:[
                        Icon(Icons.watch_later_outlined),
                        Text('History')
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.green,
                      shape: const StadiumBorder(),
                      elevation: 6.0
                    ),
                    onPressed: (){},
                  ),
                ),
              ],
            ),

          ],
        ),
    );
  }
}