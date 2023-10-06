import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Test 09',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color selectedColor = Colors.blue;
  String selectedSize = "S";

  void _showSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: Duration(seconds: 3),
      ),
    );
  }

  void _changeButtonColor(Color newColor, String size) {
    setState(() {
      selectedColor = newColor;
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _changeButtonColor(Colors.orange,"S");
                _showSnackbar("Selected Size: S");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  selectedColor == Colors.black12 ? Colors.orange : Colors.black12,
                ),
              ),
              child: Text(
                'S',
                style: TextStyle(color: Colors.white),
              ),

            ),

            SizedBox(height:15),

            ElevatedButton(
              onPressed: () {
                _changeButtonColor(Colors.black12, "M");
                _showSnackbar("Selected Size: M");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  selectedColor == Colors.black12? Colors.black12 : Colors.black12,
                ),
              ),
              child: Text(
                'M',
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                _changeButtonColor(Colors.black12, "L");
                _showSnackbar("Selected Size: L");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  selectedColor == Colors.black12 ? Colors.black12 : Colors.black12,
                ),
              ),
              child: Text(
                'L',
                style: TextStyle(color: Colors.white),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                _changeButtonColor(Colors.black12, "XL");
                _showSnackbar("Selected Size: XL");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  selectedColor == Colors.black12 ? Colors.black12 : Colors.black12,
                ),
              ),
              child: Text(
                'XL',
                style: TextStyle(color: Colors.white),
              ),
            ),
                ElevatedButton(
                  onPressed: () {
                    _changeButtonColor(Colors.black12, "XXL");
                    _showSnackbar("Selected Size: XXL");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      selectedColor == Colors.black12 ? Colors.black12 : Colors.black12,
                    ),
                  ),
                  child: Text(
                    'XXL',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    _changeButtonColor(Colors.black12, "XXXL");
                    _showSnackbar("Selected Size: XXXL");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      selectedColor == Colors.black12 ? Colors.black12 : Colors.black12,
                    ),
                  ),
                  child: Text(
                    'XXXL',
                    style: TextStyle(color: Colors.white),
                  ),
                ),


          ],
        ),

      ),
    );
  }
}
