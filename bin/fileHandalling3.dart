import 'dart:io';
import 'package:logger/logger.dart';

void main() async {
  Logger logger = Logger();

  //take fileName from user to write in file
  print("Enter file name to append:");
  String? fileName = stdin.readLineSync();

  if(fileName!.isNotEmpty){
    //check if file is exist
    File file = File("${fileName}.txt");
    if (await file.exists()) {
      print("File Found!\nWrite content to append:");
      String? fileContent = stdin.readLineSync();
      file.writeAsString("\n\n$fileContent", mode: FileMode.append);
      logger.i("Your data has been append in $fileName.txt");
    } else {
      logger.w("$fileName.txt is not exist");
    }
  }else{
    logger.e("Oooops... Enter file name first then try to write.");
  }


}
