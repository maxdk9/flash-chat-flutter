
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function onPressed;

  RoundedButton({this.title,this.color,this.onPressed
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        //color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onPressed();

          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
              title,
              style: TextStyle(
              color: Colors.white,
          ) ,
            //'Log In',
          ),
        ),
      ),
    );
  }
}