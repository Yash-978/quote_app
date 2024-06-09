import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

double textSizeSlider = 1;

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
      // backgroundColor: Colors.black,
      // extendBody: true,

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
                          // decoration: BoxDecoration(
                          //   color: Colors.black12
                          // ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                // SizedBox(
                                //   height: h * 0.02,
                                // ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        'Themes',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    )),
                                SizedBox(
                                  height: h * 0.22,
                                  width: w * 0.9,
                                  child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(5),
                                        height: h * 0.20,
                                        width: w * 0.3,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'Assets/Images/Motivation/bg 4.jpg')),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.22,
                                  width: w * 0.9,
                                  child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(5),
                                        height: h * 0.20,
                                        width: w * 0.3,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'Assets/Images/Motivation/bg 2.jpg')),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                      );
                                    },
                                  ),
                                ),
                                // ...List.generate(10, (index) => SizedBox(
                                //   height: h * 0.22,
                                //   width: w * 0.9,
                                //   child: ListView.builder(
                                //     itemCount: 5,
                                //     scrollDirection: Axis.horizontal,
                                //     itemBuilder: (context, index) {
                                //       return Container(
                                //         margin: EdgeInsets.all(5),
                                //         height: h * 0.20,
                                //         width: w * 0.3,
                                //         decoration: BoxDecoration(
                                //             image: DecorationImage(
                                //                 image: AssetImage(
                                //                     'Assets/Images/Motivation/bg 2.jpg')),
                                //             borderRadius: BorderRadius.all(
                                //                 Radius.circular(25))),
                                //       );
                                //     },
                                //   ),
                                // ),)
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
                  // BottomSheet(
                  //   onClosing: () {},
                  //   builder: (BuildContext context) {
                  //     return SizedBox(
                  //       height: h * 0.400,
                  //     );
                  //   },
                  // );

                  // showBottomSheet(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return SizedBox(
                  //         height: h * 0.50,
                  //       );
                  //     });
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
                                divisions: 12,
                                label: textSizeSlider.round().toString(),
                                inactiveColor: Colors.black87,
                                activeColor: Colors.white,
                                value: textSizeSlider,
                                onChanged: (value) {
                                  setState(() {
                                    textSizeSlider = value;
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
        // padding: EdgeInsets.all(8),
        height: h * 0.990 + 12,
        width: w * 0.980 + 10,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/Images/Motivation/bg 3.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: h * 0.042,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.3,
                  ),
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
            SizedBox(
              height: h * 0.15,
            ),
            Expanded(
              flex: 3,
              child: SelectableText(
                'I am allowed to ask for waht I want and what I need',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.4,
                  width: w * 0.099 + 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff70687E),
                      border: Border.all(color: Color(0xff574F6A), width: 2)),
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: w * 0.050,
                ),
                Container(
                  height: h * 0.4,
                  width: w * 0.099 + 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff70687E),
                      border: Border.all(color: Color(0xff574F6A), width: 2)),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
