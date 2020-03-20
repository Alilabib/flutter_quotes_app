import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
//  List<String> quotes = [
//    'Be yourself; everyone else is already taken.',
//    'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.',
//    'So many books, so little time',
//    'A room without books is like a body without a soul.',
//    'You only live once, but if you do it right, once is enough',
//    'Be the change that you wish to see in the world.',
//    'In three words I can sum up everything I\'ve learned about life: it goes on.'
//  ];

List<Quote> quotes= [
  Quote(text: 'No one can make you feel inferior without your consent.' ,author: 'Eleanor Roosevelt'),
  Quote(text: 'So many books, so little time' ,author: 'Eleanor Roosevelt'),
  Quote(text: 'Be the change that you wish to see in the world.' ,author: 'Eleanor Roosevelt'),

];

//  Widget  quoteTemplate(quote){
//      return QuoteCard(quote: quote);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
//        children: quotes.map((quote)=> Text('${quote.text} - ${quote.author}') ).toList(),
//        children: quotes.map((quote)=> quoteTemplate(quote) ).toList(),
          children: quotes.map((quote)=> QuoteCard(
              quote: quote,
              delete: (){
                setState(() {
                  quotes.remove(quote);
                });
          }
          ) ).toList(),

      ),
    );
  }
}

//class QuoteCard extends StatelessWidget {
//  final Quote quote;
//  QuoteCard({this.quote});
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
//        child: Padding(
//
//          padding: const EdgeInsets.all(8.0),
//          child: Column(
////          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          crossAxisAlignment:CrossAxisAlignment.stretch ,
//            children: <Widget>[
//              Text(
//                quote.text,
//                style: TextStyle(
//                  fontSize: 18.0,
//                  color: Colors.grey[600]
//                ),
//              ),
//              SizedBox(height: 6.0),
//              Text(
//                quote.author,
//                style: TextStyle(
//                  fontSize: 14.0,
//                  color: Colors.grey[800],
//                ),
//              ),
//            ],
//          ),
//        ),
//    );
//  }
//}

