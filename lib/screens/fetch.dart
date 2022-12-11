import 'dart:convert';

import 'package:day1/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Fetch extends StatefulWidget {
  const Fetch({super.key});

  @override
  State<Fetch> createState() => _FetchState();
}

class _FetchState extends State<Fetch> {
  final List<User> _user = [];
  fetchUser() async {
    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=1'));
    final extractedData = jsonDecode(response.body) as Map<String, dynamic>;
    final users = extractedData['data'] as List<dynamic>;
    for (var user in users) {
      _user.add(User(
        id: user['id'],
        avatar: user['avatar'],
        email: user['email'],
        firstName: user['first_name'],
        lastName: user['last_name'],
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Fetching'),
      ),
      body: FutureBuilder(
        future: fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_user[index].firstName),
                  subtitle: Text(_user[index].email),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage(
                      _user[index].avatar,
                    ),
                  ),
                );
              },
              itemCount: _user.length,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
