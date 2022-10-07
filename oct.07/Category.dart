import 'package:flutter/material.dart';
import 'package:untitled5/Widgets/dessertGrid.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: const Text(
            'Category',
            style: TextStyle(
                color: Color(0xff2D31FA),
                fontWeight: FontWeight.w800,
                fontSize: 25),
          ),
        ),
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: (MediaQuery.of(context).size.width / 2) / 250,
            children: const [
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/ac/cf/ec/accfecba8475f2d9a3c19072c9f89836.jpg',
                tittle: 'Betta',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/564x/cd/60/39/cd60392ad861e8c853207c0bc9be77d5.jpg',
                tittle: 'Guppy',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/63/76/78/63767811a0e42cff4592c79282a2a8bb.jpg',
                tittle: 'Koi',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/ef/3f/5d/ef3f5ddc22b74f96fb526e75a53fed71.jpg',
                tittle: 'Gold Fish',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/85/10/7a/85107afa513ebfe64378df756682332f.jpg',
                tittle: 'Tetra',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/e6/1f/38/e61f38ea7b2ccd137e5f674ea26a861f.jpg',
                tittle: 'Zebra Danio',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/5a/1b/40/5a1b406e319c33ac6d38428f7bbf9b5c.jpg',
                tittle: 'Angel',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/78/dd/bc/78ddbc139c3343955a150e0aa51fba0c.jpg',
                tittle: 'Molly',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/c6/86/8f/c6868f5c69be05519ec4a187ece68ba0.jpg',
                tittle: 'Arwana',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/dd/31/51/dd31511abb3281b30af2b4d36f8b5746.jpg',
                tittle: 'Oscars',
              ),
              DessertGrid(
                imgSrc:
                    'https://i.pinimg.com/474x/7c/bf/49/7cbf492de036c486387ecdb391aa5dd5.jpg',
                tittle: 'Flower Horn',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
