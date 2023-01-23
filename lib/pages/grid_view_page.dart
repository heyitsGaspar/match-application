
import 'package:flutter/material.dart';

import '../widgets/big_card.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> images =[
      'https://cdn.pixabay.com/photo/2019/09/23/16/39/square-4499056_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/03/20/09/prague-7172594_1280.jpg',
      'https://cdn.pixabay.com/photo/2015/01/12/05/54/jerusalem-597025_1280.jpg',
      'https://cdn.pixabay.com/photo/2019/09/07/02/25/city-4457801_1280.jpg',
      'https://cdn.pixabay.com/photo/2013/10/14/02/52/paris-195327_1280.jpg',
      'https://cdn.pixabay.com/photo/2012/12/19/04/08/philadelphia-70850_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/10/06/19/17/chattanooga-1719772_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/08/10/19/13/atlanta-1584094_1280.jpg',
      'https://cdn.pixabay.com/photo/2013/10/04/21/13/san-diego-190898_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/08/25/23/50/las-vegas-1620961_1280.jpg'
      
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Estadisticas'),
        ),
        body:  Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              ...images
                  .map(
                    (image) => Bigcard(image : image)  
                  ).toList()
            ],
          )
        ),
      );
  }
}