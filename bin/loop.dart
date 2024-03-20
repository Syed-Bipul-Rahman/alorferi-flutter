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
  // var name="Syed Bipul Rahman";
  //
  // for(var i=0; i<name.length; i++){
  //   // print(name[i]);
  //   sleep(Duration(milliseconds: 250));
  //   stdout.write(name[i]);
  // }

//for .. in loop
  var status = "Your array items are: ";
  var i = [10, 20, 30, 40, 50, 60];
  for (var y = 0; y < status.length; y++) {
    stdout.write(status[y]);
    sleep(Duration(milliseconds: 200));
  }

  for (var x = 0; x < i.length; x++) {
    stdout.write("${i[x]} ");
    sleep(Duration(milliseconds: 200));
  }

  


}
