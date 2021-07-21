import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _index = 0;
  List quotes = [
    'Everyday is a new day.',
    'Live and let live.tkjdkcsjdbvs  vsdusudgksjdbsdbhfbv',
    'Live and let live.',
    'Everyday is a new day.',
    'Live and let live.',
    'Everyday is a new day.',
    'Everyday is a new day.',
    'Live and let live.',
    'Everyday is a new day.',
    'Live and let live.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(14.5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        quotes[_index % quotes.length],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                    )),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextButton.icon(
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny),
                style: TextButton.styleFrom(
                    primary: Colors.black, backgroundColor: Colors.green),
                label: Text(
                  "Inspire me!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}
