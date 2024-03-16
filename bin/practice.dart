import 'Status.dart';

void main() {
//type inference in dart , compiler automatically define data type from value.

  var x = 10;
  var y = "your name";
  double z = 10.5;

  print("$x is ${x.runtimeType}, $y is ${y.runtimeType} and $z is ${z
      .runtimeType}");


  var status = Status.Active;
  print(status);

  num you = 12;
  num me = 25;
num res=you+me;
print("$you + $me = $res");


}