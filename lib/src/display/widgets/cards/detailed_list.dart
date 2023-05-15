import 'package:flutter/material.dart';

class DetailedList extends StatelessWidget {
  String title;
  String subtitle;
  DetailedList({required this.title, required this.subtitle, Key? key})
      : super(key: key);
  final dishImage =
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/malika%2FRectangle%2013.png?alt=media&token=6a5f056c-417c-48d3-b737-f448e4f13321";
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(dishImage)),
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(
            Icons.favorite,
            size: 15,
            color: orangeColor,
          ),
          Text(subtitle),
        ],
      ),
      trailing: Column(
        children: const [
          Icon(Icons.more_vert_outlined),
        ],
      ),
    );
  }
}
