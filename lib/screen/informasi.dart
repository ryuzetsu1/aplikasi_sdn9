import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/user.dart'; // Import model User

class InformasiPage extends StatelessWidget {
  Future<List<User>> fetchUsers() async {
    List<User> users = [];

    // Fetch data from page 1
    var response1 = await http.get(Uri.parse('https://reqres.in/api/users?page=1'));
    if (response1.statusCode == 200) {
      List<dynamic> body = jsonDecode(response1.body)['data'];
      users.addAll(body.map((dynamic item) => User.fromJson(item)).toList());
    } else {
      throw Exception('Failed to load users from page 1');
    }

    // Fetch data from page 2
    var response2 = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response2.statusCode == 200) {
      List<dynamic> body = jsonDecode(response2.body)['data'];
      users.addAll(body.map((dynamic item) => User.fromJson(item)).toList());
    } else {
      throw Exception('Failed to load users from page 2');
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Siswa'),
      ),
      body: FutureBuilder<List<User>>(
        future: fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                User user = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text('ID: ${user.id}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
