
import 'package:flutter/material.dart';
import 'package:festival_quotes_app/utils/listofcelebration.dart';
import 'package:festival_quotes_app/utils/global.dart';
import 'package:festival_quotes_app/screens/homescreen.dart';


class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Festival Quote',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),

          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Container(
                height: 450,
                width: 350,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imgList[backgroundIndex]['img']), fit: BoxFit.cover),
                border: Border.all(color: Colors.black , width: 2)),

              ),

            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 70, horizontal: 150),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/edit');
                },
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    color: Colors.grey
                     ),
                  child: Center(
                      child: Text(
                        'Edit',
                        style:TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      )),
                ),
              ),
            ),



          ],
        ));
  }
}


