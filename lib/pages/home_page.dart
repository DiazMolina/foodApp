import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recipes/widgets/nutitional_info.dart';
import 'package:recipes/widgets/row_cooking.dart';
import 'package:recipes/widgets/row_ingredient.dart';
import 'package:recipes/widgets/steps_cooking.dart';

class HomePage extends StatelessWidget {
  IconData data = Icons.access_time;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://truffle-assets.imgix.net/1t1bxm43v4e3_4u5ds86uzKqkYWSAE8EuOy_hamburguesa-clasica_portraitThumbnail_es.jpeg'),
              fit: BoxFit.cover)),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Text(
                        'FOODAPP',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 26),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 2.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.redAccent,
                        width: size.width / 3,
                        child: Center(
                          child: Text(
                            'BURGER',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        width: 240,
                        child: Text(
                          'The Classic Burger',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45)),
                    color: Colors.white,
                  ),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 2),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[900]),
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Cooking(
                            type: 'Min',
                            icon: Icons.access_time,
                            minute: '15',
                          ),
                          Cooking(
                            type: 'Min',
                            icon: Icons.color_lens,
                            minute: '8',
                          ),
                          Cooking(
                            type: 'People',
                            icon: Icons.scatter_plot,
                            minute: '3',
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Ingredients",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width,
                          height: 140,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                Ingredient(title: 'Hamburger bun',image: 'https://img2.freepng.es/20180511/zuq/kisspng-bun-hamburger-small-bread-bakery-stock-photography-5af57ff732a814.1235732815260385192075.jpg',),
                                Ingredient(title: 'Tomato',image: 'https://img.lovepik.com/element/40066/5620.png_860.png',),
                                Ingredient(title: 'Onion',image: 'https://img.lovepik.com/element/40069/4190.png_860.png',),
                                Ingredient(title: 'Lettuce',image: 'https://img.lovepik.com/element/40148/6749.png_860.png',),
                                Ingredient(title: 'Cheedar',image: 'https://img2.freepng.es/20180615/pw/kisspng-processed-cheese-cheddar-cheese-gruyre-cheese-ha-kefta-5b2455049d6513.3008333515291077166447.jpg',),
                                Ingredient(title: 'Ground meat',image: 'https://c7.uihere.com/files/51/903/750/hamburger-ground-beef-roast-beef-patty-meat.jpg',),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "How to make it",
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: size.width/1.1,
                                    child: Steps(step: '1',),
                                  ),
                                  Container(
                                    width: size.width/1.1,
                                    child: Steps(step: '2',),
                                  ),
                                  Container(
                                    width: size.width/1.1,
                                    child: Steps(step: '3',),
                                  ),
                                  Container(
                                    width: size.width/1.1,
                                    child: Steps(step: '4',),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Nutritional Info",
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Nutritional(nutrition: 'Calories',value: '480',),
                            Nutritional(nutrition: 'Proteínas',value: '17%',),
                            Nutritional(nutrition: 'Colesterol',value: '88%',),
                            Nutritional(nutrition: 'Sodio',value: '0.1%',),
                            Nutritional(nutrition: 'Agua',value: '2.7%',),
                            Nutritional(nutrition: 'Carbohidratos',value: '10.2%',),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
