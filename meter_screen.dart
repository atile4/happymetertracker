import 'package:flutter/material.dart';
import 'package:happy_meter/slider_item.dart';

class MeterScreen extends StatefulWidget {
  const MeterScreen({super.key});

  @override
  State<MeterScreen> createState() => _MeterScreenState();
}
class _MeterScreenState extends State<MeterScreen> {
  double _mood = 10.0;
  double _energy = 5.0;
  double _stress = 5.0;
  double _lon = 5.0;

  @override
    void initState() {
      super.initState();
    }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Happy Meter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Happy Meter:",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            Text(
                _mood.toString(),
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                )
            ),
            
            //OVERALL MOOD 
            SizedBox(height: 25,),
            SliderItem(
              label: "Overall Mood: ",
              value: _mood,
              min: 0.0,
              max: 20.0,
              divisions: 20,
              onChanged: (val) => setState(() => _mood = val),
              thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
              activeColor: const Color.fromARGB(0xFF, 0x74, 0xDB, 0xEF),
              inactiveColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
            ),

            //ENERGY LEVELS
            SliderItem(
              label: "Energy Level: ",
              value: _energy,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              onChanged: (val) => setState(() => _energy = val),
              thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
              activeColor: const Color.fromARGB(255, 249, 249, 2),
              inactiveColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
            ),

            //STRESS LEVELS
            SliderItem(
              label: "Stress Level: ",
              value: _stress,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (val) => setState(() => _stress = val),
              thumbColor: const Color.fromARGB(255, 252, 168, 94),
              activeColor: const Color.fromARGB(255, 253, 121, 6),
              inactiveColor: const Color.fromARGB(255, 239, 200, 116),
            ),

            // LONLINESS LEVEL
            SliderItem(
              label: "Loneliness Level: ",
              value: _lon,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (val) => setState(() => _lon = val),
              thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
              activeColor: const Color.fromARGB(255, 80, 120, 240),
              inactiveColor: const Color.fromARGB(0xFF, 0x69, 0xAA, 0xBE),
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
        height: 8,
      ),
    );
  }
}
