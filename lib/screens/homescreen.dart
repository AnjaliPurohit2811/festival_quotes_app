

import 'package:festival_quotes_app/utils/listofcelebration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:festival_quotes_app/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Festival Quote',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              isList = !isList;
            });
          },
              icon: (isList) ? Icon(Icons.grid_view, size: 30,) : Icon(
                Icons.list_outlined, size: 30,)),
          SizedBox(width: 5,),
          // IconButton(onPressed: () {
          //   setState(() {
          //     isDark = !isDark;
          //   });
          // },
          //     icon: (isDark) ? Icon(Icons.dark_mode_outlined, size: 30,) : Icon(
          //       Icons.light_mode_outlined, size: 30,))
        ],
        centerTitle: true,
      ),
      body: (isList) ? List_view() : grid_view(),


    );
  }

//   Padding containeroflist(int index) {
//     return Padding(
//          padding: const EdgeInsets.only(top: 25 , left: 30),
//          child: GestureDetector(
//            onTap: () {
//              setState(() {
//                Navigator.of(context).pushNamed('/view');
//              });
//            },
//            child: Container(
//              height: 100,
//              width: 350,
//              decoration: BoxDecoration(color: Colors.white,
//                borderRadius: BorderRadius.circular(10),
//                border: Border.all(color: Colors.black , width: 2)
//              ),
//              child: Row(
//                children: [
//                  Padding(
//                    padding: const EdgeInsets.only(left: 20),
//                    child: CircleAvatar(radius: 40,
//                      backgroundImage: AssetImage(imgList[index]['img']),
//                    )
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(left: 30),
//                    child: Text(imgList[index]['name'] ,  style: GoogleFonts.comfortaa(textStyle : TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold))),
//                  )
//                ],
//              ),
//
//            ),
//          ),
//        );
//   }
// }

  Widget listviewBox(String name, String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 130,
        width: 430,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget List_view() {
    return ListView.builder(itemBuilder: (context, index) =>
        InkWell(
          onTap: () {
            setState(() {
              backgroundIndex = index ;
              Navigator.of(context).pushNamed('/view');
            });
          },
          child: listviewBox(
            imgList[index]['name'],
            imgList[index]['img'],
          ),
        ), itemCount: imgList.length,);
  }


  Widget GridviewBox(String name, String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Container(
        height: 190,
        width: 330,
        decoration: BoxDecoration(
          // color: Colors.pink,
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget grid_view() {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) =>
          InkWell(
            onTap: () {
              setState(() {
                backgroundIndex = index;
                Navigator.of(context).pushNamed('/view');
              });
            },
            child: GridviewBox(
              imgList[index]['name'],
              imgList[index]['img'],
            ),
          ),
      itemCount: imgList.length,
    );
  }

}
bool isList = false;
bool isDark = false;
