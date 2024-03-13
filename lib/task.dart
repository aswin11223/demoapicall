import 'package:flutter/material.dart';
import 'package:flutter_application_1/users.dart';
import 'package:http/http.dart' as http;

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  List<Users> data = [];

  void getdata() async {
    final url = "https://jsonplaceholder.typicode.com/users";
    final urr = Uri.parse(url);
    final Response = await http.get(urr);
    final users = usersFromJson(Response.body);
    setState(() {
      data = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          getdata();
        }),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            "DemoApi ",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(data[index].name,style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text(data[index].email.toString()),);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
