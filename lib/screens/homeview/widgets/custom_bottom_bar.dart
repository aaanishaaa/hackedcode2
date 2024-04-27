import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomMenu extends StatefulWidget {
  final Function(int) onItemSelected;

  const CustomBottomMenu({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  State<CustomBottomMenu> createState() => _CustomBottomMenuState();
}

class _CustomBottomMenuState extends State<CustomBottomMenu> {
  int _selectedIndex = 0; // Track selected index

  List<String> labels = ['Home', 'My Photos', 'Inbox', 'Profile'];
  List<Image> icons = [
    // Replace with your actual SvgPicture widgets
    Image.asset('assets/icons/home.png'),
    Image.asset('assets/icons/home.png'),
    Image.asset('assets/icons/home.png'),
    Image.asset('assets/icons/home.png'),
  ];

  // Or, replace with custom widgets if you don't use SVGs

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(), // Notch for the floating action button
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            icons.length, // Generate based on icon count
                (index) => _buildMenuItem(index),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          widget.onItemSelected(index); // Call callback with index
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons[index],
          Text(
            labels[index],
            style: TextStyle(
              color: _selectedIndex == index ? Colors.pink : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}