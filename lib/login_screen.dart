import 'package:flutter/material.dart';
import 'package:instax/home_screen.dart';
import 'package:instax/open_screen.dart';
import 'package:instax/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  static final String id = 'login_screen';
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
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0),
            child:TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            )
            ),
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0),
            child:TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
            )
            ),
            SizedBox(height: 20.0,),
            Container(
              width: 250.0,
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, HomeScreen.id), 
              child: Text('Login',style: TextStyle(fontSize: 18.0),),
              ),
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