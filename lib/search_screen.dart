//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:instax/home_screen.dart';



class SearchScreen extends StatelessWidget {

  static final String id = 'search_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [

          
          Container(
        child: TextFormField(
              decoration: InputDecoration(labelText: 'Search', icon: Icon(Icons.search_outlined,color: Colors.black,)),
            ),
        width: 350,
        height: 50,
        color: Colors.white,
        margin: const EdgeInsets.all(20),
        ),
        
        ],
         ),
         body: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                        Container(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "assets/image1.jpg",
                              ),
                              color: Colors.teal[200],
                              ),
                        Container(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "assets/image2.jpg",
                              ),
                              color: Colors.teal[200],
                              ),
                        Container(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "assets/image3.jpg",
                              ),
                              color: Colors.teal[200],
                              ),
                       Container(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "assets/image4.jpg",
                              ),
                              color: Colors.teal[200],
                              ),
                        Container(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "assets/image5.jpg",
                              ),
                              color: Colors.teal[200],
                              ),
                        Container(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "assets/image6.jpg",
                              ),
                              color: Colors.teal[200],
                              ),
               ],
            ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon:IconButton(
                onPressed:() => Navigator.pushNamed(context, HomeScreen.id),
                icon: Icon(Icons.home),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed:() => Navigator.pushNamed(context, SearchScreen.id),
                icon: Icon(Icons.search),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/image0.jpg",
                ),
              ),
              label: "",
            ),
          ]),
      );
   
  }
}