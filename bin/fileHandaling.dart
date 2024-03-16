import 'dart:io';
import 'package:logger/logger.dart';

void main() async {
  Logger logger = Logger();
  final file = File('bangladesh.txt');
  if (await file.exists()) {
    final contents = await file.readAsString();
    logger.w("contents of your file is :\n$contents");
  } else {
    logger.e("File does not exist");
  }
}
