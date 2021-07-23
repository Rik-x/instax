import 'package:flutter/material.dart';
import 'package:instax/home_screen.dart';


// ignore: must_be_immutable
class TextScreen extends StatelessWidget {

  static final String id = 'text_screen';
  @override

  // ignore: override_on_non_overriding_member
  List<String> datax = [
    'Theon Greyjoy', 'Brandon Stark', 'Robb Stark',
    'Catelyn Stark','Arya Stark', 'John Snow', 'Ned Stark',
    'Rickonn Stark'
  ];
  List<String> imagex = [
    'assets/im1.jpg', 'assets/im2.jpg','assets/im3.jpg','assets/im4.jpg','assets/im5.jpg',
    'assets/im6.jpg','assets/im7.jpg','assets/im8.jpg',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Phineas', style: TextStyle(color: Colors.black),) ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          color: Colors.black,
          onPressed: () 
            => Navigator.pushNamed(context, HomeScreen.id),
          ),
          actions: [
          IconButton(
            onPressed:() {},
            icon: Icon(Icons.add),color: Colors.black,),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(4),
            itemCount: 8,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  onTap: () {}  ,
                  title: Text(datax[index]),
                  subtitle: Text(datax[index]),
                  trailing: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(imagex[index]),
                    ),
                  )
              );
            },
            ),
          
      bottomNavigationBar: BottomNavigationBar(
         //fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
             
            
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_outlined, 
                color:  Colors.black,),
              ),
              label: "",
            ),

            BottomNavigationBarItem(
              icon: Text(
                'Camera', 
                style: TextStyle(color:  Colors.blue,),
              ),
              label: "",
            ),



          ],
          ),
    );
  }
}