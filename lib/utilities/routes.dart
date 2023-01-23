import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/constans.dart';
import 'package:flutter_application_1/screens/productDetail.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL: (BuildContext context) => ProductDetail()
  };
}
