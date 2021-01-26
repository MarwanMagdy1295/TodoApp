import 'package:flutter/material.dart';
import 'package:todo_app/models/task_model.dart';

class CustomButton extends StatefulWidget {
  String name;
  Function onPressed;
  CustomButton({this.name, this.onPressed});
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: FlatButton(
        child: Text(
          widget.name,
          // widget.task == null ? 'Add' : 'Update',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
