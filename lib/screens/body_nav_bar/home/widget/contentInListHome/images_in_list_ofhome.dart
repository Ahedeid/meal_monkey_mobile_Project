import 'package:flutter/material.dart';


class ImagesInListOfHome extends StatelessWidget {
   ImagesInListOfHome({
    Key? key,required this.index,required this.images
  }) : super(key: key);
 int index ;
 List images ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: Image.asset(
        images[index],
        color: Colors.black.withOpacity(0.1),
        colorBlendMode: BlendMode.darken,
        fit: BoxFit.cover,
      ),
    );
  }
}
