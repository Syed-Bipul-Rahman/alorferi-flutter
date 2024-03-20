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

//play with duration
//   var status = "Your array items are: ";
//   var i = [10, 20, 30, 40, 50, 60];
//   for (var y = 0; y < status.length; y++) {
//     stdout.write(status[y]);
//     sleep(Duration(milliseconds: 200));
//   }
//
//   for (var x = 0; x < i.length; x++) {
//     stdout.write("${i[x]} ");
//     sleep(Duration(milliseconds: 200));
//   }
//
//

//for in loop
  var countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France"
  ];

  for (var country in countries) {
    if (country.startsWith("A")) {
      print("$country is start with \"A\"");
    }
  }
var totalForArray=0;
  var s = [10, 20, 30, 40, 50, 60, 80];
  for (var y in s) {
  totalForArray+=y;
  }
  print(totalForArray);

//controlling over infinite loop
  for (var i = 1; 10 > 2; i++) {
    print("Hi 👋");

    if (i == 10) {
      break;
    }
  }
}
