import 'package:flutter/material.dart';

import '../Utils/List.dart';
import '../Utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool changeToggle = false;

Set<String> _selected = {'ListView'};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        title: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.home),
          label: Text('Home'),
        ),
        actions: [
          SegmentedButton(
            // style: ButtonStyle(),
            multiSelectionEnabled: false,
            segments: [
              ButtonSegment<String>(
                  value: 'ListView',
                  label: Text(
                    'ListView',
                    style: TextStyle(fontSize: 12),
                  ),
                  icon: const Icon(
                    Icons.list_alt,
                    size: 18,
                  )),
              ButtonSegment<String>(
                value: 'GridView',
                label: Text('GridView', style: TextStyle(fontSize: 12)),
                icon: const Icon(
                  Icons.apps_rounded,
                  size: 18,
                ),
              ),
            ],
            selected: _selected,
            onSelectionChanged: (Set<String> newselection) {
              setState(() {
                _selected = newselection;
                changeToggle = !changeToggle;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          (changeToggle)
              ? GridView.builder(
                  itemCount: Quote_Type_Categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/quote');
                    },
                    child: Card(
                      // color: Colors.transparent,
                      // shadowColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        // padding: EdgeInsets.all(15),
                        height: h * 0.10,
                        width: w * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HomeScreenColorlist[
                              index % HomeScreenColorlist.length],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Quote_Type_Categories[index]['home_Icon'],
                              size: 40,
                              color: Quote_Type_Categories[index]['home_color'],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              Quote_Type_Categories[index]['home_Text'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: Quote_Type_Categories.length,
                  itemBuilder: (context, index) => Card(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/quote');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: h * 0.10,
                          width: w * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HomeScreenColorlist[
                                index % HomeScreenColorlist.length],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Quote_Type_Categories[index]['home_Icon'],
                                size: 40,
                                color: Quote_Type_Categories[index]
                                    ['home_color'],
                              ),
                              SizedBox(
                                width: w * 0.06,
                              ),
                              Text(
                                Quote_Type_Categories[index]['home_Text'],
                                style: TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}

List HomeScreenColorlist = [
  Color(0xffB2EDFD),
  Color(0xffC3F6BC),
  Color(0xffFFE9A6),
  Color(0xffDBCCFD),
];
