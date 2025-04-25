import 'package:flutter/material.dart';
import 'package:happy_meter/slider_item.dart';
import 'package:happy_meter/happycalculator.dart';

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
        // backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Happy Meter",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: 
            Icon(
              Icons.menu,
              size: 32,
              )
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Text(
                happycalc(_mood.toInt(), _energy.toInt(), _stress.toInt(), _lon.toInt()).toString(),
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                )
            ),
            
            //OVERALL MOOD 
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
            SizedBox(height: 16,),
            //ENERGY LEVELS
            SliderItem(
              label: "Energy Level: ",
              value: _energy,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              onChanged: (val) => setState(() => _energy = val),
              thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
              activeColor: const Color.fromARGB(255, 198, 198, 15),
              inactiveColor: const Color.fromARGB(97, 237, 237, 18),
            ),
            SizedBox(height: 16,),
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
            SizedBox(height: 16,),
            // LONLINESS LEVEL
            SliderItem(
              label: "Loneliness Level: ",
              value: _lon,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (val) => setState(() => _lon = val),
              thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
              activeColor: const Color.fromARGB(255, 117, 0, 200),
              inactiveColor: const Color.fromARGB(32, 117, 0, 200),
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Text("save")
            )

          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
        height: 8,
      ),
    );
  }
}
