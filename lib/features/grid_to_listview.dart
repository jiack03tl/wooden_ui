import 'package:flutter/material.dart';

class GridToListview extends StatefulWidget {
  const GridToListview({super.key});

  @override
  State<GridToListview> createState() => _GridToListviewState();
}

class _GridToListviewState extends State<GridToListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("grid to listview"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: 60,
                  width: 420,
                  child: Row(
                    children: [
                      (index % 2 == 0)
                          ? Positioned(
                              right: 10,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: (index % 2 == 0
                                    ? Text(index.toString())
                                    : Text(index.toString())),
                                color: Colors.grey,
                              ),
                            )
                          : SizedBox(
                              width: 200,
                            ),
                      (index % 2 == 1)
                          ? Positioned(
                              left: 10,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: (index.isOdd
                                    ? Text(index.toString())
                                    : Text("${++index}")),
                                color: Colors.grey,
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ]),
            );
          },
        )
        // GridView.builder(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisSpacing: 2,
        //       mainAxisSpacing: 2,
        //       crossAxisCount: 2,
        //       childAspectRatio: .9),
        //   itemBuilder: (BuildContext context, int index) {
        //     return Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.grey,
        //     );
        //   },
        // ),
        );
  }
}
