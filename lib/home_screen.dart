import 'package:flutter/material.dart';
import 'package:instax/search_screen.dart';
import 'package:instax/text_screen.dart';


class HomeScreen extends StatelessWidget {
  //final _formKey = GlobalKey<FormState>();

  static final String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Instagram',style: TextStyle(fontFamily: 'Billabong', color: Colors.black, fontSize: 35.0 ),)),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
          color: Colors.black,),
        actions: [
          IconButton(
            onPressed:() => Navigator.pushNamed(context, TextScreen.id),
            icon: Icon(Icons.send),color: Colors.black,),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (int index) {
                      return Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/image$index.jpg",
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Divider(
                height: 10,
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                10,
                (int index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/image0.jpg"),
                        ),
                        title: Text(
                          "Phineas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Ferb\'s Land'),
                      ),
                      Container(
                        height: 300,
                        child: Image.asset(
                          "assets/$index.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
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