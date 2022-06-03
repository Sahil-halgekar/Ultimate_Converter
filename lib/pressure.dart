// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Pressure extends StatefulWidget {
  const Pressure({Key? key}) : super(key: key);

  @override
  State<Pressure> createState() => _PressureState();
}

class _PressureState extends State<Pressure> {
  @override
  var c = ["Bar", "Pascal", "Standard Atmosphere", "Torr"];
  Map<String, int> m = {
    "Bar": 0,
    "Pascal": 1,
    "Standard Atmosphere": 2,
    "Torr": 3,
  };
  String dropdownValue = "Bar";
  String dropdownValue1 = "Pascal";
  double Result = 0;
  final myController = TextEditingController();
  dynamic f = {
    "0": [1, 100000, 0.986923, 750.062],
    "1": [1, 1 / 100000, 1, 1 / 101325, 0.00750062],
    "2": [1.01325, 101325, 1, 760],
    "3": [0.00133322, 133.322, 0.00131579, 1],
  };
  void convert() {
    String a = m[dropdownValue].toString();
    int? b = m[dropdownValue1];
    double? val = double.tryParse(myController.text);
    var mul = f[a][b];
    Result = (val! * mul);
    setState(() {
      Result = Result;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Pressure",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "assets/pressure1.png",
                              height: 6.h,
                              width: 15.w,
                            ),
                          ),
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                elevation: 8,
                                value: dropdownValue,
                                items: c.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        controller: myController,
                        style: TextStyle(
                            fontSize: 35.sp, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "0.0",
                        ),
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "=",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    convert();
                  },
                  child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/switch.png",
                              height: 30,
                            ),
                          ),
                          Text(
                            "Convert",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "assets/pressure2.png",
                              height: 6.h,
                              width: 15.w,
                            ),
                          ),
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                elevation: 10,
                                value: dropdownValue1,
                                items: c.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue1 = newValue!;
                                  });
                                },
                                icon: Icon(Icons.chevron_right_outlined),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        (Result == 0)
                            ? 0.toString()
                            : (Result < 0.01 || Result > 10000)
                                ? Result.toStringAsExponential(3)
                                : Result.toStringAsFixed(3),
                        style: TextStyle(
                            fontSize: 35.sp, fontWeight: FontWeight.w600),
                      ),
                    ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
