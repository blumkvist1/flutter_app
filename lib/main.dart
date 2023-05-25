import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'AddPostScreen.dart' as AddPostScreen;
import 'Post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.teal, accentColor: Colors.blueGrey)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Posts List"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //Navigator.push(context, AddPostScreen.getRoute(context));
          },
          child: Icon(Icons.add_comment_sharp),
        ),
        body: posts.isEmpty ? buildEmptyView() : buildPostList());
  }

  Widget buildEmptyView() {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            getPosts();
          },
          child: Text('press me')),
    );
  }

  getPosts() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var list = jsonDecode(response.body) as List;
      list.forEach((element) {
        Post post = Post.fromJson(element);
        posts.add(post);
      });
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error ${response.reasonPhrase}")));
    }
  }

  Widget buildPostList() {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            automaticallyImplyLeading: false,
            leading: const Icon(Icons.chat, textDirection: TextDirection.ltr),
            title: Text(posts[index].title),
            subtitle: Text(posts[index].body),
          );
        });

    /// Exercise 3 implement the ListView.builder() code here (search Internet if you forgot)
  }
}
