import 'package:flutter/material.dart';

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
            SizedBox(height: 25,),
            Text(
              "Overall Mood: ${_mood.toInt()}",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                        thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                child: Slider(
                  value : _mood,
                  min: 0.0,
                  max: 20.0,
                  divisions: 20,
                  activeColor: const Color.fromARGB(0xFF, 0x74, 0xDB, 0xEF),
                  inactiveColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                  onChanged: (double value) {
                    setState(() {
                      _mood = value;
                    });
                  },
                ),
              ),
            ),

            //ENERGY LEVELS
            Text(
              "Energy Level: ${_energy.toInt()}",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                        thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                child: Slider(
                  value : _energy,
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  activeColor: const Color.fromARGB(0xFF, 0x74, 0xDB, 0xEF),
                  inactiveColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                  onChanged: (double value) {
                    setState(() {
                      _energy = value;
                    });
                  },
                ),
              ),
            ),

            //STRESS LEVELS
            Text(
              "Stress Level: ${_stress.toInt()}",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                        thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                child: Slider(
                  value : _stress,
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  activeColor: const Color.fromARGB(0xFF, 0x74, 0xDB, 0xEF),
                  inactiveColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                  onChanged: (double value) {
                    setState(() {
                      _stress = value;
                    });
                  },
                ),
              ),
            ),

            // LONLINESS LEVEL
            Text(
              "Loneliness Level: ${_lon.toInt()}",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                        thumbColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                child: Slider(
                  value : _lon,
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  activeColor: const Color.fromARGB(0xFF, 0x74, 0xDB, 0xEF),
                  inactiveColor: const Color.fromARGB(0xFF, 0x5E, 0x88, 0xFC),
                  onChanged: (double value) {
                    setState(() {
                      _lon = value;
                    });
                  },
                ),
              ),
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