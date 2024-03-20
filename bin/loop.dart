import 'dart:io';

main() {
  // var i = 0;
  // for (; i <= 10; ++i) {
  //   print(i);
  // }
  // print(i);

//printing ODD NUMBER

  // for (var i = 0; i <= 100; i++) {
  //   if (i % 2 == 0)
  //     continue;
  //   else
  //     print("$i Is ODD NUMBER");
  // }

  //odd and even at same time
  // for (var i = 0; i <= 100; i++) {
  //   if (i % 2 == 0)
  //     print("$i Is EVEN number");
  //   else
  //     print("$i Is ODD number");
  // }

  //typing effect with loop and duration
  var name="Syed Bipul Rahman";

  for(var i=0; i<name.length; i++){
    // print(name[i]);
    sleep(Duration(milliseconds: 250));
    stdout.write(name[i]);
  }



}
