import 'package:etrade/Screens/productDetail.dart';
import 'package:flutter/material.dart';
import 'package:etrade/utilities/constants.dart';

class Routes{
  static final routes =<String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL  :(BuildContext context)=>ProductDetail(),
    //Constants.ROUTE_PRODUCT_DETAIL:(BuildContext context)=>ProductList(),
  };
}