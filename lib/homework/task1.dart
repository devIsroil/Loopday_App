import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  @override
  _TemperatureScreenState createState() =>
      _TemperatureScreenState();
}

class _TemperatureScreenState
    extends State<TemperatureScreen> {
  double celsius = 0.0;
  double fahrenheit = 32.0;

  void _onCelsiusChanged(String value) {
    setState(() {
      celsius = double.tryParse(value) ?? 0.0;
      fahrenheit = celsius * 9 / 5 + 32;
    });
  }

  void _onFahrenheitChanged(String value) {
    setState(() {
      fahrenheit = double.tryParse(value) ?? 32.0;
      celsius = (fahrenheit - 32) * 5 / 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Celsius',
                hintText: 'Enter temperature in Celsius',
              ),
              onChanged: _onCelsiusChanged,
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Fahrenheit',
                hintText: 'Enter temperature in Fahrenheit',
              ),
              onChanged: _onFahrenheitChanged,
            ),
            SizedBox(height: 20.0),
            Text(
              '$celsius Celsius = $fahrenheit Fahrenheit',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
