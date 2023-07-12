
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
  
class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
 late String stringResponse;
  Future apicall() async { 
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse=response.body;
      });
    }
  }

  @override
  void initState() {
    apicall();
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('APItest'),),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
          
          child: Center(child: Text(stringResponse.toString(),style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }
}