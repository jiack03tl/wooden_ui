import 'dart:convert';
import 'dart:developer';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class FakerJsonData extends StatefulWidget {
  const FakerJsonData({super.key});

  @override
  State<FakerJsonData> createState() => _FakerJsonDataState();
}

class _FakerJsonDataState extends State<FakerJsonData> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 1), _generateFakejson);
  }

  bool isLoading = true;
  Faker faker = Faker();
  List<Map<String, dynamic>> _fakeData = [];

  // ACCESSING JSON FROM FAKER PACKAGE
  void _generateFakejson() {
    List<Map<String, dynamic>> fakeData = List.generate(30, (index) {
      return {
        "id": index + 1,
        "name": faker.person.name(),
        "firstname": faker.person.firstName(),
        "mobile": faker.phoneNumber,
        "address": faker.person.lastName()
      };
    });
    setState(() {
      isLoading = false;
      _fakeData = fakeData;
      log("11111" + isLoading.toString());
    });

    // json decode
    var json = jsonEncode(fakeData.toString());
    log(json.toString());
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Faker json data"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              reverse: false,
              shrinkWrap: true,
              itemCount: _fakeData.length,
              itemBuilder: (context, index) {
                final item = _fakeData[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/chair.png"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item['id'].toString()),
                                ],
                              ),
                            ),
                            Text(item['name']),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
