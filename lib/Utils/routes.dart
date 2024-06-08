import 'package:flutter/cupertino.dart';
import 'package:quote_app/Screens/HomeScreen.dart';

import '../Screens/QuotesScreen.dart';

class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={

    '/':(context)=>HomePage(),
    '/quote':(context)=>QuotePage(),

  };
}