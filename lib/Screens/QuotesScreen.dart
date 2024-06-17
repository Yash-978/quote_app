import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quote_app/Utils/List.dart';

import '../Utils/ImagesList.dart';
import 'HomeScreen.dart';

double textSizeSlider = 10;

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: CircleBorder(),
        onPressed: () {},
        child: Container(
          height: h * 0.058,
          width: w * 0.12,
          child: Image.asset(
            'Assets/Images/FloatingActionButton.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black12,
        surfaceTintColor: Colors.pink,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: h * 0.800,
                          width: w * 0.95,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: h * 0.022,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Themes',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        'View All',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 25,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.30,
                                  width: w * 0.99 + 10,
                                  child: ListView.builder(
                                    itemCount: Minimalist_ImagesList.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectbg =
                                                Minimalist_ImagesList[index];
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          height: h * 0.30,
                                          width: w * 0.4,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      Minimalist_ImagesList[
                                                          index])),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Minimalist',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        'View All',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 25,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.30,
                                  width: w * 0.99 + 10,
                                  child: ListView.builder(
                                    itemCount: Gradient_ImageList.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(5),
                                        height: h * 0.30,
                                        width: w * 0.4,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    Gradient_ImageList[index])),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Luxury',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        'View All',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 25,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.30,
                                  width: w * 0.99 + 10,
                                  child: ListView.builder(
                                    itemCount: Luxury_ImageList.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(5),
                                        height: h * 0.30,
                                        width: w * 0.4,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    Luxury_ImageList[index])),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                icon: Icon(
                  Icons.layers_outlined,
                  size: 40,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: h * 0.800,
                          width: w * 0.95,
                          // decoration: BoxDecoration(
                          //   color: Colors.black12
                          // ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(
                                      Icons.text_increase_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )),
                              Slider(
                                max: 100,
                                divisions: 10,
                                label: textSizeSlider.round().toString(),
                                inactiveColor: Colors.black87,
                                activeColor: Colors.white,
                                value: textSizeSlider,
                                onChanged: (value) {
                                  setState(() {
                                    textSizeSlider = value;
                                    print(textSizeSlider);
                                  });
                                },
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: h * 0.060,
                                      width: w * 0.23,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(20),
                                          color: Colors.black54,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.3)),
                                      child: Icon(
                                        Icons.text_fields_rounded,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  Container(
                                      height: h * 0.060,
                                      width: w * 0.23,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(20),
                                          color: Colors.black54,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.3)),
                                      child: Icon(
                                        Icons.color_lens_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  Container(
                                      height: h * 0.060,
                                      width: w * 0.23,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(20),
                                          color: Colors.black54,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 0.3)),
                                      child: Icon(
                                        Icons.text_increase_rounded,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  Container(
                                    height: h * 0.060,
                                    width: w * 0.23,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(20),
                                        color: Colors.black54,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 0.3)),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
                icon: Icon(
                  Icons.format_paint_outlined,
                  size: 40,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border_rounded,
                  size: 40,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: Icon(
                  Icons.perm_identity_rounded,
                  size: 40,
                  color: Colors.white,
                )),
          ],
        ),
        color: Colors.black26,
        height: h * 0.09,
        shape: CircularNotchedRectangle(),
      ),
      body: Container(
          height: h * 0.990 + 12,
          width: w * 0.980 + 10,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(selectbg), fit: BoxFit.cover)),
          child: PageView(
            scrollDirection: Axis.vertical,
            children: [
              ...List.generate(
                categoryStore.length,
                (index) => Column(
                  children: [
                    ListTile(
                      title: SelectableText(
                        Quote_Type_Categories[selectedindex]['home_Text'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: SelectableText(
                        categoryStore[index]['quote'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_outline_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.diamond_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          )),
    );
  }
}

String selectbg = 'Assets/Images/Luxury/a13.jpg';
