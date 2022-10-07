import 'package:flutter/material.dart';
import 'package:untitled5/Widgets/Recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: const Text('Lets Swim,',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 0.0))),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Hello!\nFish Lovers!',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white60)),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/59/c6/01/59c60138ab7a08c076c1960d6a53fb36.jpg'),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xff2D31FA),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.zero,
                    ),
                    hintText: 'Search here...'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(16.5),
              decoration: BoxDecoration(
                  color: Color(0xff2D31FA),
                  border: Border.all(color: Colors.black)),
              child: Icon(
                Icons.tune,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
        child: const Text(
          'Popular Fishes',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.white, fontSize: 25),
        ),
      ),
      SizedBox(
        height: 50,
      ),
      Expanded(
          child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          RecipeCard(
            imgsrc:
                'https://i.pinimg.com/474x/0e/ca/99/0eca99bbc29042e5930a75059cb8b602.jpg',
            tittle: 'Super Delta Betta Fish',
            Size: '3 inches',
            Lifespan: '2-5yrs',
          ),
          RecipeCard(
            imgsrc:
                'https://i.pinimg.com/474x/4d/6a/58/4d6a58cdbad98967c646fd17e709ea8e.jpg',
            tittle: 'Goldfish',
            Size: '14 inches',
            Lifespan: '10-15 yrs',
          ),
          RecipeCard(
            imgsrc:
                'https://i.pinimg.com/474x/cd/60/39/cd60392ad861e8c853207c0bc9be77d5.jpg',
            tittle: 'CobraBlue Guppy',
            Size: '2.5 inches',
            Lifespan: '2-5 yrs',
          ),
          RecipeCard(
            imgsrc:
                'https://i.pinimg.com/564x/35/7a/c0/357ac069b6612ca13fb36e376f781961.jpg',
            tittle: 'KoiFish Gold',
            Size: '36  inches',
            Lifespan: '20-100 yrs',
          ),
          RecipeCard(
            imgsrc:
                'https://img1.wsimg.com/isteam/ip/1e359bb4-cabe-4e03-bd77-8db8ba90a350/ols/My%20Post%20-%202021-10-11T084627.433.png/:/rs=w:1200,h:1200',
            tittle: 'Glofish Tetra',
            Size: '2.5 inches',
            Lifespan: '3-5 yrs',
          ),
        ],
      )),
      const SizedBox(
        height: 50,
      )
    ]);
  }
}
