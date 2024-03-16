import 'package:logger/logger.dart';

main() {
  var str = "hello world! 👋🏿";

  Iterable<int> ruines = str.runes;

  for (int ruine in ruines) {
    print(ruine);
  }

  for (int codeUnit in str.codeUnits) {
    Logger logger = Logger();

    if (codeUnit % 2 == 0) {
      logger.i(codeUnit);
    } else {
      logger.w(codeUnit);
    }
  }
}
