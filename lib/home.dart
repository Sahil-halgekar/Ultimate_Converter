// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:uc/activity.dart';
import 'package:uc/angle.dart';
import 'package:uc/area.dart';
import 'package:uc/bloodSugar.dart';
import 'package:uc/density.dart';
import 'package:uc/force.dart';
import 'package:uc/lenght.dart';
import 'package:uc/pressure.dart';
import 'package:uc/sound.dart';
import 'package:uc/specificVolume.dart';
import 'package:uc/speed.dart';
import 'package:uc/storage.dart';
import 'package:uc/surfaceTension.dart';
import 'package:uc/temperature.dart';
import 'package:uc/time.dart';
import 'package:uc/torque.dart';
import 'package:uc/volume.dart';
import 'package:uc/weight.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  String text = "";
  String img = "";
  String act = "";
  Widget w1 = Weight();
  Widget w2 = Angle();
  Widget w3 = Area();
  Widget w4 = Blood_Sugar();
  Widget w5 = Density();
  Widget w6 = Force();
  Widget w7 = Length();
  Widget w8 = Pressure();
  Widget w9 = Sound();
  Widget w10 = Specific_Volume();
  Widget w11 = Speed();
  Widget w12 = Storage();
  Widget w13 = SurfaceTension();
  Widget w14 = Temperature();
  Widget w15 = Time();
  Widget w16 = Torque();
  Widget w17 = Volume();
  Widget w18 = Activity();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Ultimate Converter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage("assets/switch.png"),
                height: 15.h,
                width: 30.w,
              ),
              RichText(
                  text: TextSpan(
                      text: "Units\n",
                      style: TextStyle(color: Colors.white, fontSize: 25.sp),
                      children: <TextSpan>[
                    TextSpan(
                        text: "18 Categories",
                        style: TextStyle(fontSize: 18.sp, color: Colors.amber))
                  ]))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView(
              children: [
                buildContainer(context, "Weight", "assets/weight1.png", w1),
                buildContainer(context, "Angle", "assets/angle.png", w2),
                buildContainer(context, "Area", "assets/area2.png", w3),
                buildContainer(context, "Blood Sugar", "assets/blood2.png", w4),
                buildContainer(context, "Density", "assets/density1.png", w5),
                buildContainer(context, "Force", "assets/force1.png", w6),
                buildContainer(context, "Length", "assets/length2.png", w7),
                buildContainer(context, "Pressure", "assets/pressure2.png", w8),
                buildContainer(context, "Sound", "assets/sound1.png", w9),
                buildContainer(context, "Specific Volume",
                    "assets/specificVolume1.png", w10),
                buildContainer(context, "Speed", "assets/speed1.png", w11),
                buildContainer(context, "Storage", "assets/storage2.png", w12),
                buildContainer(
                    context, "Surface Tension", "assets/surface1.png", w13),
                buildContainer(context, "Temperature", "assets/temp2.png", w14),
                buildContainer(context, "Time", "assets/time1.png", w15),
                buildContainer(context, "Torque", "assets/torque2.png", w16),
                buildContainer(context, "Volume", "assets/volume2.png", w17),
                buildContainer(context, "Activity", "assets/act2.png", w18),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 0.9),
            ),
          ),
        ],
      ),
    );
  }

  InkWell buildContainer(
      BuildContext context, String text, String img, Widget w) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => w));
      },
      child: Container(
        margin:
            const EdgeInsets.only(left: 5.0, top: 1.0, right: 1.0, bottom: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 62, 61, 61),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Image(
              image: AssetImage(img),
              height: 8.h,
              width: 14.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
