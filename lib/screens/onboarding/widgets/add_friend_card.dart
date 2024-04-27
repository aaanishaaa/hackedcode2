import 'package:flutter/material.dart';

class AddedFriendCircleCard extends StatelessWidget {
  const AddedFriendCircleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFEF73)
      ),
    );
  }
}
