import 'package:flutter/material.dart';

void main() {
  runApp(
    //Our app widget tree starts herwe
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IcoButton
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Comment',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
        ), //AppBar
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://media.geeksforgeeks.org/wp-content/cdn-uploads/logo.png'),
                  ),
                  border: Border.all(
                      color: const Color(0xFF000000),
                      width: 4.0,
                      style: BorderStyle.solid), //Border.all
                  /* The BorderRadius widget  is here */
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ), //BorderRadius.all
                ), //BoxDecoration
              ),
            ),
          ),
        ), //Center
      ), //Scaffold
      debugShowCheckedModeBanner: false, //Deug banner is turned off
    ), //MaterialApp
  );
}
