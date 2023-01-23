import 'package:flutter/material.dart';

import 'custom_card.dart';

class Bigcard extends StatelessWidget {
  final String image;

  const Bigcard({
    Key? key,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        SnackBar snackBar = SnackBar(content: Text(image));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },

      child: CustomCard(image: image)
       
    );
  }
}