import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var choosing = ["Celcius", "Fahrenheit"];
  var allOptions = ["Temperature", "Area", "Time"];
  var tempOptions = ["Celcius", "Fahrenheit"];
  var areaOptions = ["Square meters", "Square inches", "Square centimeters"];
  var timeOptions = ["Hours", "Minutes", "Seconds"];
  var dropDownVal = "Temperature";
  var secondaryDropDownVal = "Celcius";
  var tertiaryDropDownVal = "Fahrenheit";
  var ctrlOne = TextEditingController();
  var ctrlTwo = TextEditingController();
  var outputValOne;
  var outputValTwo;
  correspondingvDropDowns() {
    if (dropDownVal == "Temperature") {
      choosing = tempOptions;
    } else if (dropDownVal == "Area") {
      choosing = areaOptions;
    } else {
      choosing = timeOptions;
    }
    return choosing;
  }

  calculationOne() {
    if (secondaryDropDownVal == "Celcius" && tertiaryDropDownVal =="Fahrenheit") {
      outputValTwo = (double.parse(ctrlOne.text) * 9 / 5) + 32;
    } else if (secondaryDropDownVal == "Fahrenheit" && tertiaryDropDownVal == "Celcius") {
      outputValTwo = (double.parse(ctrlOne.text) - 32) * 5 / 9;
    } else if (secondaryDropDownVal == "Square meters" &&
        tertiaryDropDownVal == "Square inches") {
      outputValTwo = double.parse(ctrlOne.text) * 1550;
    } else if (secondaryDropDownVal == "Square meters" &&
        tertiaryDropDownVal == "Square centimeters") {
      outputValTwo = double.parse(ctrlOne.text) * 10000;
    } else if (secondaryDropDownVal == "Square inches" &&
        tertiaryDropDownVal == "Square centimeters") {
      outputValTwo = double.parse(ctrlOne.text) * 6.4516;
    } else if (secondaryDropDownVal == "Square inches" &&
        tertiaryDropDownVal == "Square meters") {
      outputValTwo = double.parse(ctrlOne.text) / 1550;
    } else if (secondaryDropDownVal == "Square centimeters" &&
        tertiaryDropDownVal == "Square meters") {
      outputValTwo = double.parse(ctrlOne.text) / 10000;
    } else if (secondaryDropDownVal == "Square centimeters" &&
        tertiaryDropDownVal == "Square inches") {
      outputValTwo = double.parse(ctrlOne.text) / 6.4516;
    } else if (secondaryDropDownVal == "Hours" &&
        tertiaryDropDownVal == "Minutes") {
      outputValTwo = double.parse(ctrlOne.text) * 60;
    } else if (secondaryDropDownVal == "Hours" &&
        tertiaryDropDownVal == "Seconds") {
      outputValTwo = double.parse(ctrlOne.text) * 3600;
    } else if (secondaryDropDownVal == "Minutes" &&
        tertiaryDropDownVal == "Seconds") {
      outputValTwo = double.parse(ctrlOne.text) * 60;
    } else if (secondaryDropDownVal == "Minutes" &&
        tertiaryDropDownVal == "Hours") {
      outputValTwo = double.parse(ctrlOne.text) / 60;
    } else if (secondaryDropDownVal == "Seconds" &&
        tertiaryDropDownVal == "Minutes") {
      outputValTwo = double.parse(ctrlOne.text) / 60;
    } else if (secondaryDropDownVal == "Seconds" &&
        tertiaryDropDownVal == "Hours") {
      outputValTwo = double.parse(ctrlOne.text) / 3600;
    } else {
      outputValTwo = ctrlOne.text;
    }
    ctrlTwo.text = outputValTwo.toString();
  }

  calculationTwo() {
    if (secondaryDropDownVal == "Celcius" && tertiaryDropDownVal =="Fahrenheit") {
      outputValOne = (double.parse(ctrlTwo.text) - 32) * 5 / 9;
    } else if (secondaryDropDownVal == "Fahrenheit" && tertiaryDropDownVal == "Celcius") {
      outputValOne = (double.parse(ctrlTwo.text) * 9 / 5) + 32;
    } else if (secondaryDropDownVal == "Square meters" &&
        tertiaryDropDownVal == "Square inches") {
      outputValOne = double.parse(ctrlTwo.text) / 1550;
    } else if (secondaryDropDownVal == "Square meters" &&
        tertiaryDropDownVal == "Square centimeters") {
      outputValOne = double.parse(ctrlTwo.text) / 10000;
    } else if (secondaryDropDownVal == "Square inches" &&
        tertiaryDropDownVal == "Square centimeters") {
      outputValOne = double.parse(ctrlTwo.text) / 6.4516;
    } else if (secondaryDropDownVal == "Square inches" &&
        tertiaryDropDownVal == "Square meters") {
      outputValOne = double.parse(ctrlTwo.text) * 1550;
    } else if (secondaryDropDownVal == "Square centimeters" &&
        tertiaryDropDownVal == "Square meters") {
      outputValOne = double.parse(ctrlTwo.text) * 10000;
    } else if (secondaryDropDownVal == "Square centimeters" &&
        tertiaryDropDownVal == "Square inches") {
      outputValOne = double.parse(ctrlTwo.text) * 6.4516;
    } else if (secondaryDropDownVal == "Hours" &&
        tertiaryDropDownVal == "Minutes") {
      outputValOne = double.parse(ctrlTwo.text) / 60;
    } else if (secondaryDropDownVal == "Hours" &&
        tertiaryDropDownVal == "Seconds") {
      outputValOne = double.parse(ctrlTwo.text) / 3600;
    } else if (secondaryDropDownVal == "Minutes" &&
        tertiaryDropDownVal == "Seconds") {
      outputValOne = double.parse(ctrlTwo.text) / 60;
    } else if (secondaryDropDownVal == "Minutes" &&
        tertiaryDropDownVal == "Hours") {
      outputValOne = double.parse(ctrlTwo.text) * 60;
    } else if (secondaryDropDownVal == "Seconds" &&
        tertiaryDropDownVal == "Minutes") {
      outputValOne = double.parse(ctrlTwo.text) * 60;
    } else if (secondaryDropDownVal == "Seconds" &&
        tertiaryDropDownVal == "Hours") {
      outputValOne = double.parse(ctrlTwo.text) * 3600;
    } else {
      outputValOne = ctrlTwo.text;
    }
    ctrlOne.text = outputValOne.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit inverter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton(
                value: dropDownVal,
                items: allOptions.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: ((option) {
                  setState(() {
                    dropDownVal = option.toString();
                    correspondingvDropDowns();
                    secondaryDropDownVal = choosing[0];
                    tertiaryDropDownVal = choosing[1];
                  });
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: ctrlOne,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '1000',
                    ),
                    onChanged: ((value) {
                      setState(() {
                        calculationOne();
                        ctrlTwo.text = outputValTwo.toString();
                      });
                    }),
                  ),
                ),
                Container(
                  child: DropdownButton(
                      value: secondaryDropDownVal,
                      items: choosing.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: ((option) {
                        setState(() {
                          calculationOne();
                          secondaryDropDownVal = option.toString();
                        });
                      })),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: ctrlTwo,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '1000',
                    ),
                    onChanged: ((value) {
                      setState(() {
                        calculationTwo();
                        ctrlOne.text = outputValOne.toString();
                      });
                    }),
                  ),
                ),
                Container(
                  child: DropdownButton(
                      value: tertiaryDropDownVal,
                      items: choosing.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: ((option) {
                        setState(() {
                          calculationTwo();
                          tertiaryDropDownVal = option.toString();
                        });
                      })),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
