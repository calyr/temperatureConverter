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
            TextField(),
            Text("From"),
            DropdownButton(
                value: _temperatureValueFrom,
                items: _itemsTemperature.map((String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
                onChanged: (String value) {
                  setState(() {
                    _temperatureValueFrom = value;
                  });
                }),
            Text("To"),
            myDropdownButton(),
            Text("100.0 ")
          ]),
        ),
      ),
    );
  }

  Widget myDropdownButton() {
    return DropdownButton(
      value: _temperatureValueTo,
      items: _itemsTemperature.map((e) {
        return DropdownMenuItem( value: e, child: Text(e));
      }).toList(),
      onChanged: (String e) {
        setState(() {
           _temperatureValueTo = e;
        });
       
      },
    );
  }
}
