import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Form'),
        ),
        body: Form(
            child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'Nama'),
              keyboardType: TextInputType.text,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Nama tidak boleh kosong';
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'No. HP'),
              keyboardType: TextInputType.phone,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'No. HP tidak boleh kosong';
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Email tidak boleh kosong';
                }
              },
            ),
            Container(height: 10.0),
            RaisedButton(
              onPressed: null,
              child: Text('Validasi Data'),
            )
          ],
        )),
      );
}
