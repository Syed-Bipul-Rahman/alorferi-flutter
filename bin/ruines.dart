import 'package:logger/logger.dart';

main(){
  var str="hello world! 👋🏿";

  Iterable<int> ruines=str.runes;

  for(int ruine in ruines){
    print(ruine);
    Logger logger=Logger();
    logger.i(ruine);
  }

}