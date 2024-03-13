/*import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_application_1/employeesModel.dart';
import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Datum>? data;

void fetchuser()async{
  final url='https://dummy.restapiexample.com/api/v1/employees';
  final Urii=Uri.parse(url);
  
  final response=await http.get(Urii);

  // final Body=json.decode(response.body);
  final employees = employeesFromJson(response.body); 
  setState(() {
    data=employees.data;
    

  
    
  });
print(data);
  
}
  
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      
      title:"myapp",
    home: Scaffold(
       appBar: AppBar(
        //shadowColor: Colors.amber,
        centerTitle: true,
        title: Text("Api Demo",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),),
        body: Column(
          children: [
            data==null?CircularProgressIndicator():Container(
              width: 300,
              height: 400,
          child: ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
            return ListTile(title: Text(data![index].employeeAge.toString()),);
          },),
           

              
            ),

            Center(child: 
            ElevatedButton(onPressed: (){
              fetchuser();
            }, child:Text("click"))),
          ],
        ),

      
    )
    );
  }
}*/