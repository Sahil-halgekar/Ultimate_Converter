// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class Specific_Volume extends StatefulWidget {
  const Specific_Volume({Key? key}) : super(key: key);

  @override
  State<Specific_Volume> createState() => _Specific_VolumeState();
}

class _Specific_VolumeState extends State<Specific_Volume> {
  @override
  var c = [
    "cubic meter/kilogram",
    "cubic centimeter/gram",
    "liter/kilogram",
    "liter/gram"
  ];
  Map<String, int> m = {
    "cubic meter/kilogram": 0,
    "cubic centimeter/gram": 1,
    "liter/kilogram": 2,
    "liter/gram": 3
  };
  String dropdownValue = "cubic meter/kilogram";
  String dropdownValue1 = "cubic centimeter/gram";
  double Result = 0;
  final myController = TextEditingController();
  dynamic f = {
    "0": [1, 1000, 1000, 1],
    "1": [0.001, 1, 1, 0.001],
    "2": [0.001, 1, 1, 0.001],
    "3": [1, 1000, 1000, 1]
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
          "Specific Volume",
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
                              "assets/specificVolume1.png",
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
                              "assets/specificVolume2.png",
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
