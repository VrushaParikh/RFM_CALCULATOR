import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(RFMCalculator());

class RFMCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          overlayColor: Color(0x29EB1555),
          thumbColor: Color(0xFFEB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        primaryColor: Color(0xFF467B5D),
        scaffoldBackgroundColor: Color(0xFF467B5D),
        //0xFF467B5D card color
        //0xFF53A576
      ),
      home: InputPage(),
    );
  }
}
