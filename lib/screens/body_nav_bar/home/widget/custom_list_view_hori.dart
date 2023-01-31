import 'package:flutter/material.dart';

import '../../../../util/const_assets.dart';
import '../../../../util/constant.dart';



class CustomListHoris extends StatelessWidget {
   CustomListHoris({
    Key? key,
  }) : super(key: key);
  List images= [
    coffe,
    pizza1,
    pizza2,
    pizza3,
    food
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: double.infinity,
       height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.only(end: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Offers',
                      style: TextStyle(
                        color: Color(primaryTextColor),
                        fontWeight: FontWeight.bold,
                        fontSize: sizeText,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
