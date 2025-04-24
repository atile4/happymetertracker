import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  final String label;
  final double value;
  final double min;
  final double max;
  final int divisions;
  final ValueChanged<double> onChanged;
  final Color thumbColor;
  final Color activeColor;
  final Color inactiveColor;

  const SliderItem({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
    required this.thumbColor,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: [
            Text(
              "$label${value.toInt()}",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                        thumbColor: thumbColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                child: Slider(
                  value : value,
                  min: min,
                  max: max,
                  divisions: divisions,
                  activeColor: activeColor,
                  inactiveColor : inactiveColor,
                  onChanged: onChanged,
                ),
              ),
          ],
        )
      ),
    );
  }
}