import 'package:flutter/material.dart';
import 'package:myapp/quotes.dart';
//passing a list to the page

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //defining the list here
//   List  <String> myQuotes =[
//     'happy to be home',
//      'you only live twice',
//      'happy new 2020'
//      ];
   //passing in the Quotes into a list
   List <Quote> quotes = [
     Quote(author: 'Ian Flemings',text: 'you only live twice'),
     Quote(author: 'Charles Dickens', text: 'a tale of two cities'),
     Quote(author: 'Auther Conen doyle',text: 'the hound of baskerville')
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(title: Text('Awesome Quotes'),centerTitle: true,),
        //using column to get the quotes
        body: Column(children: quotes.map((quote) =>
            Text('${quote.text}' ' - ' '${quote.author}')).toList(),

        ),
      );

  }
}
