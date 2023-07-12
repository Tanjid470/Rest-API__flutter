import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../controllers/auth_controller.dart';
import '../../models/auth.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  List<Data> persons = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ElevatedButton(onPressed: (){
            getData();
        }, child: Text('press')),
        
      ]),
    );
  }

  // getData() async {
  //   final response =
  //       await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
  //   final dataModel=dataFromJson(response.body);
  //   print(dataModel.data[0].email);
  //   //print(dataModel.data.map((e) => {}));
  // }
  

}
