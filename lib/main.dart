import 'package:flutter/material.dart';
import 'package:flutter_application_3/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.'),
    Quote(
        author: 'x',
        text: 'We can do anything we want to if we stick to it long enough.')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black12,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('My Favorite Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: quotes.map(((quote) => quoteTemplate(quote))).toList(),
      ),
    );
  }
}
