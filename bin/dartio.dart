import 'dart:io';

import 'package:logger/logger.dart';
main(){
  Logger logger=Logger();
  print("your name: ");

  String? name=stdin.readLineSync();
  if(name!.isNotEmpty){
    logger.i("your name is $name");
  }else{
    logger.e("Oops... You didn't provide your name.☹️");
  }




}