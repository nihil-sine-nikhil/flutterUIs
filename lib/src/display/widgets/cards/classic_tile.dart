import 'package:flutter/material.dart';

class KTile extends StatelessWidget {
  const KTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg"))),
          ),
        ),
      ),
      title: Text("Micelle Johnathan"),
      subtitle: Text("@Micelle_NYC"),
    );
  }
}
