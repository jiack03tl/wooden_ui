import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_app/models/products_model.dart';
import 'package:http/http.dart' as http;

class ApiCallScreen extends StatefulWidget {
  const ApiCallScreen({super.key});

  @override
  State<ApiCallScreen> createState() => _ApiCallScreenState();
}

class _ApiCallScreenState extends State<ApiCallScreen> {
  Future<List<Products>?> getDataFromApi() async {
    List<Products>? allData;
    Uri url = Uri.parse("https://fakestoreapi.com/products");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body.toString());
      // log(json.toString());

      setState(() {
        allData = json.map((json) => Products.fromJson(json)).toList();
        log("dataaaaaa" + allData.toString());
      });
    }
    return allData;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Api Call"),
        ),
        body: FutureBuilder<dynamic>(
          initialData: const Text("inital data"),
          future: getDataFromApi(),
          builder: (context, snap) {
            return ListView.builder(
              itemCount: snap.data?.length ?? 22,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  title: Text("name" + snap.data[index].title.toString()),
                );
              },
            );
          },
        ));
  }
}
