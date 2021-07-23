import 'package:flutter/material.dart';
import 'package:instax/login_screen.dart';
import 'package:instax/signup_screen.dart';


class OpenScreen extends StatelessWidget {
  //final _formKey = GlobalKey<FormState>();

  static final String id = 'open_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            
            SizedBox(height: 20.0,),
            Container(
              width: 250.0,
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
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