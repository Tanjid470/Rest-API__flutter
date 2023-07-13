import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/auth.dart';

class API {
  List<Persons> personsDataList = [];
  Future<List<Persons>> getData_FromApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var decodedDatalist = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in decodedDatalist) {
        personsDataList.add(Persons.fromJson(i));
      }
      return personsDataList;
    } else {
      return personsDataList;
    }
  }
}
