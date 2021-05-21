import 'package:flutter/material.dart';

void main() => runApp(TempertureConverter());

class TempertureConverter extends StatefulWidget {
  TempertureConverter({Key key}) : super(key: key);

  @override
  _TempertureConverterState createState() => _TempertureConverterState();
}

class _TempertureConverterState extends State<TempertureConverter> {
  String _temperatureValueFrom = 'Fahrenheit';
  String _temperatureValueTo = 'Celsius';
  String _result = '';
  double valueInput;
  List<String> _itemsTemperature = ['Celsius', 'Fahrenheit'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(children: [
            Text("Value"),
            TextField(
              onChanged: (value) {
                setState(() {
                  valueInput= double.tryParse(value);
                });
                

              },
            ),
            Text("From"),
            DropdownButton(
                value: _temperatureValueFrom,
                items: _itemsTemperature.map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (String value) {
                  setState(() {
                    _temperatureValueFrom = value;
                  });
                }),
            Text("To"),
            myDropdownButton(),
            RaisedButton(child: Text('Convert'), onPressed: () {
              setState(() {
                  
                _result = 'Resultado aqui $valueInput';
              });
            }),
            Text(_result)
          ]),
        ),
      ),
    );
  }

  Widget myDropdownButton() {
    return DropdownButton(
      value: _temperatureValueTo,
      items: _itemsTemperature.map((e) {
        return DropdownMenuItem(value: e, child: Text(e));
      }).toList(),
      onChanged: (String e) {
        setState(() {
          _temperatureValueTo = e;
        });
      },
    );
  }
}
