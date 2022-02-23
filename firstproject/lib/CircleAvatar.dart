import 'package:flutter/material.dart';


class CircleAvatarStudy extends StatefulWidget {
  CircleAvatarStudy({Key? key}) : super(key: key);

  @override
  State<CircleAvatarStudy> createState() => _CircleAvatarState();
}

class _CircleAvatarState extends State<CircleAvatarStudy> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 40,
        child: Text("YS" ),

      ),
    );
  }
}