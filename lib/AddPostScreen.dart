import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddPostScreen extends StatefulWidget {
  static PageRouteBuilder getRoute() {
    return PageRouteBuilder(
        transitionsBuilder: (_, animation, secondAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    }, pageBuilder: (_, __, ___) {
      return AddPostScreen();
    });
  }

  const AddPostScreen({Key? key}) : super(key: key);

  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                icon: Icon(Icons.title),
                filled: true,
                hintText: 'write title here...',
                labelText: 'Title ',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              minLines: 4,
              maxLines: 8,
              controller: commentController,
              decoration: const InputDecoration(
                icon: Icon(Icons.comment),
                filled: true,
                hintText: 'write comment here...',
                labelText: 'Comment ',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                addComment(
                    title: titleController.text,
                    comment: commentController.text);
              },
              child: Text("Add Comment".toUpperCase()),
            )
          ],
        ),
      ),
    );
  }

  addComment({required String title, required String comment}) async {
    print("addcommenmt");
    var response =
        await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
            headers: {"Content-type": "application/json", "charset": "UTF-8"},
            body: jsonEncode({
              "title": "${title}",
              "body": "${comment}",
              "userId": 1,
            }));
    if (response.statusCode == 201) {
      print(response.body);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Post Added!")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error ${response.reasonPhrase}")));
    }
  }
}
