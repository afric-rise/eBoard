import 'package:flutter/material.dart';

class meetingTable extends StatelessWidget {
  const meetingTable({
    super.key,
    required this.size,
    required this.attribute,
    required this.value
  });

  final Size size;
  final String attribute;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: Row(
        children: [
          Text(
            attribute,
            style: TextStyle(
                fontSize: size.width * 0.043,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 15.0),
          Text(value, style: TextStyle(fontSize:  size.width * 0.042),
          )
        ],
      ),
    );
  }
}