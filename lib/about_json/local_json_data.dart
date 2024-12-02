import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonData extends StatefulWidget {
  const LocalJsonData({super.key});

  @override
  State<LocalJsonData> createState() => _LocalJsonDataState();
}

// WE ARE GETTING DATA FROM LOCAL JSON FILE DOWNLOADED FROM MOCKAROO.COM
class _LocalJsonDataState extends State<LocalJsonData> {
  Future<void> _getLocalData() async {
    print("jsondata");
    try {
      final String response =
          await rootBundle.loadString('assets/jsonfiles/Local.json');
      log("121212" + response.toString());
      final List<dynamic> json = jsonDecode(response);
      log(json.toString());
      setState(() {});
    } catch (e) {
      log("error");
    }
  }

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getLocalData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "local json data",
        ),
      ),
    );
  }
}
