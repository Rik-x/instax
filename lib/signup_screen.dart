import 'package:flutter/material.dart';
import 'package:instax/open_screen.dart';
//import 'package:instatwo/login_screen.dart';


class SignupScreen extends StatelessWidget {
   static final String id = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          color: Colors.black,
          onPressed: () 
            => Navigator.pushNamed(context, OpenScreen.id)
          ),
          bottom: TabBar(
            tabs: [
              Tab( 
                child: Container(
                    child: TextFormField(
                    decoration: InputDecoration(labelText: 'Search', icon: Icon(Icons.search_outlined,color: Colors.black,)),
                    ),
                    width: 350,
                    height: 50,
                    color: Colors.white,
                    margin: const EdgeInsets.all(20),
                  ),)
            ],
            ),
      ),
      body: Center( 
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text('Instagram',style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 50.0,
          ),
      ),
      Form(
        //key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0),
            child:TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
            )
            ),
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0),
            child:TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
            )
            ),
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0),
            child:TextFormField(
              decoration: InputDecoration(labelText: 'Confirm password'),
            )
            ),
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0),
            child:TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            )
            ),
    
            SizedBox(height: 20.0,),
            Container(
              width: 250.0,
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, SignupScreen.id), 
              child: Text('SignUp',style: TextStyle(fontSize: 18.0),),
              ),
            )
          ],
        ))
        ],
    ),
    ),
      
    );
  }
}