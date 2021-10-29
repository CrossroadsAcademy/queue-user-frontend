import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 35,right: 35),
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: SleekCircularSlider(
                        min: 10,
                        max: 100,
                        initialValue: 89,
                        appearance: CircularSliderAppearance(
                          animationEnabled: false,
                          customWidths: CustomSliderWidths(
                              progressBarWidth: 15,
                              handlerSize: 15,
                              shadowWidth: 0,
                              trackWidth: 15),
                          customColors: CustomSliderColors(
                              dotColor: const Color(0xFF008080),
                              progressBarColor: const Color(0xFF008080),
                              trackColor: const Color(0xFFF9F9F9)),
                          spinnerMode: true,
                        )),
                  ),
                ),
              ),
              const Positioned(
                  child: Center(
                    child: Text(
                      "02 : 28",
                      style: TextStyle(
                          color: Color(0xFF008080),
                          fontSize: 60,fontWeight: FontWeight.w500
                      ),
                    ),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
