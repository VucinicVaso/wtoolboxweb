import 'package:flutter/material.dart';
import '../external/lib_getx.dart';

abstract class WTWRoutes {

  List<GetPage<dynamic>>? routes = List<GetPage<dynamic>>.empty(growable: true);
  
  List<GetPage<dynamic>> getRoutes() { return routes!; }
  
  void registerRoute({ String? name, Widget Function()? view }) { routes!.add(GetPage(name: name!, page: view!)); }

}