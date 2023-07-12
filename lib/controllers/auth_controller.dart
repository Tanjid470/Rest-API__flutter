import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/auth.dart';

  getData() async {
    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    final dataModel=dataFromJson(response.body);
    print(dataModel.data[0].email);
    //print(dataModel.data.map((e) => {}));
  }
