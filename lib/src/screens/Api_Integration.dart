import 'package:flutter/material.dart';
import '../../controllers/auth_controller.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  // List<Persons> personsDataList = [];
  // Future<List<Persons>> getData_FromApi() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   var decodedDatalist = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     for (Map<String, dynamic> i in decodedDatalist) {
  //       personsDataList.add(Persons.fromJson(i));
  //     }
  //     return personsDataList;
  //   } else {
  //     return personsDataList;
  //   }
  // }
  API apicall = API();
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: FutureBuilder(
          future: apicall.getData_FromApi(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text("loading");
            } else {
              return ListView.builder(
                itemCount: apicall.personsDataList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.red, width: 2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Default ID: ${apicall.personsDataList[index].userId}",
                          style:
                              const TextStyle(fontSize: 10, color: Colors.blue),
                        ),
                        Text(
                          "Id            : ${apicall.personsDataList[index].id}",
                          style: TextStyle(fontSize: 10, color: Colors.blue),
                        ),
                        Text(
                          "Title          : ${apicall.personsDataList[index].title}",
                          style: TextStyle(fontSize: 10, color: Colors.blue),
                        ),
                        Text(
                          "Body         : ${apicall.personsDataList[index].body}",
                          style: TextStyle(fontSize: 10, color: Colors.blue),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      )
    ]);
  }
}
