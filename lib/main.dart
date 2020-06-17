import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_screens/radio.dart';

void main() {
  runApp(Language());
}

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back),
          actions: [
            // action button
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 12, child: LgScreen()),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20.0,
                        letterSpacing: 1.25),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class LgScreen extends StatefulWidget {
  @override
  _LgScreenState createState() => _LgScreenState();
}

class _LgScreenState extends State<LgScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Select your preferred language',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        'Everything in will be displayed in the language you select. All SMS will also be sent in your preffered language.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.black12,
              ),
              Container(
                child: Radiobutton(),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.black12,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    'More languages are to be added soon, Stay tuned!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
            ]),
      ),
    );
  }
}
