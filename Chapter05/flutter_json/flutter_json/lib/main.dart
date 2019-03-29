import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response =
  await http.get('http://localhost:3000/Movies/1'); //URL where the localhost JSON file is held

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final int id;
  final String movieName;
  final int year;
  final String category;

  Post({this.id, this.movieName, this.year, this.category});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      movieName: json['movieName'],
      year: json['year'],
      category: json['category'],
    );
  }
}

void main() => runApp(MyApp(post: fetchPost()));

class MyApp extends StatelessWidget {
  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('JSON Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.movieName);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}