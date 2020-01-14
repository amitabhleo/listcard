import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

   //passing in the Quotes into a list via a class
   List <Quote> quotes = [
     Quote(author: 'Ian Flemings',text: 'you only live twice, but only once can you have a fullfilling life'),
     Quote(author: 'Charles Dickens', text: 'a tale of two cities, but those cities will join one day'),
     Quote(author: 'Auther Conen doyle',text: 'the hound of baskerville, a most thrilling story fo the suburbs of London')
   ];
   //adding a card widget instead of the text
   Widget quoteTemplate (quote){
     return Card(
       margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

       child: Padding(
         padding: const EdgeInsets.all(12.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
              Text(quote.text, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,
                    color: Colors.grey[600],)),
             SizedBox(height: 15,),
             Text(quote.author, textAlign: TextAlign.right,
                 style: TextStyle(fontSize: 15.0, color: Colors.grey[400])),
           ],
         ),
       ),
     );

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(title: Text('Awesome Quotes'),centerTitle: true,),
        //using column to get the quotes
        body: Column(children: quotes.map((quote) =>
            //Text('${quote.text}' ' - ' '${quote.author}')).toList(),
            quoteTemplate(quote)).toList(),
        ),
      );

  }
}
