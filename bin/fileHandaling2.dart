import 'dart:io';
import 'package:logger/logger.dart';

void main() async {
  Logger logger = Logger();

  //take fileName from user to write in file
  print("Enter file name:");
  String? fileName = stdin.readLineSync();

  //take filecontent from user
  print("type the text you want to write in file:");

  String? typedText = stdin.readLineSync();

  if (typedText!.isNotEmpty) {
    File file = File("${fileName!}.txt");
    await file.writeAsString(typedText);
    logger.d("Your data has been written in $fileName.txt");
  } else {
    logger.e("Failed to write in $fileName.txt");
  }
}
